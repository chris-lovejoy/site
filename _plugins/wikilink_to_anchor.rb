# Adaptation from: https://github.com/maximevaillancourt/digital-garden-jekyll-template/blob/master/_plugins/bidirectional_links_generator.rb

class WikilinksToAnchor < Jekyll::Generator
    def generate(site)
        puts "Converting wikilinks to anchor tags..."

        all_docs = site.posts.docs + site.collections['pages'].docs
        link_extension = '.html'

        all_docs.each do |current_note|
            all_docs.each do |note_potentially_linked_to|

                note_title_regexp_pattern = Regexp.escape(
                    File.basename(
                        note_potentially_linked_to.basename,
                        File.extname(note_potentially_linked_to.basename)
                    )
                    ).gsub('\_', '[ _]').gsub('\-', '[ -]').capitalize

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
        
            # At this point, all remaining double-bracket-wrapped words are
            # pointing to non-existing pages, so let's turn them into disabled
            # links by greying them out and changing the cursor
            no_link_anchor_tag = "<a class='internal-link' href='/404'>\\1</a>"

            # Convert remaining to 404 links and print notes names
            current_note.content = current_note.content.gsub(/\[\[([^\]]+)\]\]/i) do |match|
                puts "In #{current_note.path}: Converting unresolved link: #{match}"
                no_link_anchor_tag.gsub('\\1', $1)
            end

            # Alternative with no logging
            # current_note.content = current_note.content.gsub(
            #     /\[\[([^\]]+)\]\]/i, # match on the remaining double-bracket links
            #     no_link_anchor_tag
            # ) 

        end
        puts "Finished converting wikilinks to anchor tags."
    end
end