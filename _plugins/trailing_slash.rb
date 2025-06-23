module Jekyll
  class TrailingSlashGenerator < Generator
    safe true
    priority :lowest

    def generate(site)
      puts "Ensuring trailing slashes and creating redirects..."
      
      # Collect all docs BEFORE we start adding new pages
      all_docs = site.posts.docs + site.collections['pages'].docs + site.collections['tabs'].docs + site.collections['notes'].docs + site.collections['posts'].docs
      
      # Also collect existing pages BEFORE we start adding new ones
      existing_pages = site.pages.dup
      
      # Process all docs
      all_docs.each do |doc|
        handle_trailing_slash(site, doc)
      end
      
      # Process existing pages (not new redirect pages)
      existing_pages.each do |page|
        handle_trailing_slash(site, page)
      end
      
      puts "Finished ensuring trailing slashes and creating redirects."
    end

    private

    def handle_trailing_slash(site, doc)
      # Skip files with extensions
      return if doc.url =~ /\.\w+$/
      
      # Skip if already has trailing slash
      return if doc.url =~ /\/$/
      
      # 1. Ensure the document itself has a trailing slash
      trailing_slash_url = "#{doc.url}/"
      doc.data['permalink'] = trailing_slash_url
      puts "Updated permalink: #{doc.url} -> #{trailing_slash_url}"
      
      # 2. Create a redirect page from non-trailing slash to trailing slash
      create_redirect_page(site, doc.url, trailing_slash_url)
    end

    def create_redirect_page(site, from_url, to_url)
      puts "Creating redirect: #{from_url} -> #{to_url}"
      
      # Create unique filename for redirect page
      redirect_filename = "redirect#{from_url.gsub('/', '-')}.html"
      
      # Create a new page for the redirect
      redirect_page = Jekyll::Page.new(site, site.source, '', redirect_filename)
      redirect_page.data['layout'] = nil
      redirect_page.data['permalink'] = from_url
      redirect_page.content = generate_redirect_html(to_url)
      
      site.pages << redirect_page
    end

    def generate_redirect_html(target_url)
      <<~HTML
        <!DOCTYPE html>
        <html lang="en-US">
          <meta charset="utf-8">
          <title>Redirecting&hellip;</title>
          <link rel="canonical" href="#{target_url}">
          <script>location="#{target_url}"</script>
          <meta http-equiv="refresh" content="0; url=#{target_url}">
          <meta name="robots" content="noindex">
          <h1>Redirecting&hellip;</h1>
          <a href="#{target_url}">Click here if you are not redirected.</a>
        </html>
      HTML
    end
  end
end