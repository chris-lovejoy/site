# Adaptation from: https://github.com/maximevaillancourt/digital-garden-jekyll-template/blob/master/_plugins/bidirectional_links_generator.rb

class WikilinksToAnchor < Jekyll::Generator
    def generate(site)
        puts "Converting wikilinks to anchor tags..."

        all_docs = site.posts.docs + site.collections['pages'].docs
        link_extension = '.html'

        all_docs.each do |current_note|
            all_docs.each do |note_potentially_linked_to|

                # Remove YYYY-MM-DD- pattern from the basename
                basename_without_date = File.basename(
                    note_potentially_linked_to.basename,
                    File.extname(note_potentially_linked_to.basename)
                ).gsub(/^\d{4}-\d{2}-\d{2}-/, '')

                note_title_regexp_pattern = Regexp.escape(basename_without_date)
                    .gsub('\_', '[ _]')
                    .gsub('\-', '[ -]')
                    .capitalize

                title_from_data = note_potentially_linked_to.data['title']
                if title_from_data
                    title_from_data = Regexp.escape(title_from_data)
                end

                new_href = "#{site.baseurl}#{note_potentially_linked_to.url}#{link_extension}"
                anchor_tag = "<a class='internal-link' href='#{new_href}'>\\1</a>"

                # Replace double-bracketed links with label using note title
                # [[A note about cats|this is a link to the note about cats]]
                current_note.content.gsub!(
                /\[\[#{note_title_regexp_pattern}\|(.+?)(?=\])\]\]/i,
                anchor_tag
                )
        
                # Replace double-bracketed links with label using note filename
                # [[cats|this is a link to the note about cats]]
                current_note.content.gsub!(
                /\[\[#{title_from_data}\|(.+?)(?=\])\]\]/i,
                anchor_tag
                )
        
                # Replace double-bracketed links using note title
                # [[a note about cats]]
                current_note.content.gsub!(
                /\[\[(#{title_from_data})\]\]/i,
                anchor_tag
                )
        
                # Replace double-bracketed links using note filename
                # [[cats]]
                current_note.content.gsub!(
                /\[\[(#{note_title_regexp_pattern})\]\]/i,
                anchor_tag
                )
            end
        
            # Handle remaining unmatched links
            current_note.content = current_note.content.gsub(/\[\[([^\]|]+)\|([^\]]+)\]\]/i) do |match|
                # For links with pipe: [[title|link text]]
                title, link_text = $1, $2
                puts "In #{current_note.path}: Converting unresolved piped link: [[#{title}|#{link_text}]]"
                "<a class='internal-link' href='/404'>#{link_text}</a>"
            end

            # Handle any remaining simple links without pipes: [[link]]
            current_note.content = current_note.content.gsub(/\[\[([^\]]+)\]\]/i) do |match|
                puts "In #{current_note.path}: Converting unresolved simple link: #{match}"
                "<a class='internal-link' href='/404'>#{$1}</a>"
            end

        end
        puts "Finished converting wikilinks to anchor tags."
    end
end