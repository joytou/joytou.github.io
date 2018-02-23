module Jekyll
  module Generators
    class Pagination < Generator

      # Paginates the blog's posts. Renders the index.html file into paginated
      # directories, e.g.: page2/index.html, page3/index.html, etc and adds more
      # site-wide data.
      #
      # site - The Site.
      # page - The index.html Page that requires pagination.
      #
      # {"paginator" => { "page" => <Number>,
      #                   "per_page" => <Number>,
      #                   "posts" => [<Post>],
      #                   "total_posts" => <Number>,
      #                   "total_pages" => <Number>,
      #                   "previous_page" => <Number>,
      #                   "next_page" => <Number> }}
      def paginate(site, page)
        # If we defined a default lang, base pagination should be the one
        # of the default lang.
        lang = site.config['default_lang']
        if site.config['paginate_per_lang'] && lang != ""
          all_posts = site.site_payload['site']['langs'][lang]
        else
          all_posts = site.site_payload['site']['posts']
        end

        pages = Pager.calculate_pages(all_posts, site.config['paginate'].to_i)
        (1..pages).each do |num_page|
          pager = Pager.new(site, num_page, all_posts, pages)
          if num_page > 1
            newpage = Page.new(site, site.source, page.dir, page.name)
            newpage.pager = pager
            newpage.dir = Pager.paginate_path(site, num_page)
            site.pages << newpage
          else
            page.pager = pager
          end
        end
      end
    end

    class LangPagination < Generator
      # This generator is safe from arbitrary code execution.
      safe true

      # Generate paginated pages if necessary.
      #
      # site - The Site.
      #
      # Returns nothing.
      def generate(site)
        if site.config['paginate_per_lang']
          for lang in site.langs.keys
            paginate_langs(site, "/#{lang}", "/#{lang}/index.html", site.langs[lang])
          end
        end
      end

      # Actually do the blog's posts pagination per lang. Renders the index.html file
      # into paginated directories for these langs, e.g.: /lang/page2/index.html,
      # /lang/page3/index.html, etc and adds more site-wide data.
      #
      # site - The Site.
      # page - The index.html Page that requires pagination.
      # lang - The lang to paginate.
      #
      # {"paginator" => { "page" => <Number>,
      #                   "per_page" => <Number>,
      #                   "posts" => [<Post>],
      #                   "total_posts" => <Number>,
      #                   "total_pages" => <Number>,
      #                   "previous_page" => <Number>,
      #                   "next_page" => <Number> }}
      def paginate(site, page, lang)
        # Retrieve posts from that specific lang.
        all_posts = site.site_payload['site']['langs'][lang]

        pages = Pager.calculate_pages(all_posts, site.config['paginate'].to_i)
        (1..pages).each do |num_page|
          pager = Pager.new(site, num_page, all_posts, pages)
          if num_page > 1
            paginate_path = '/' + lang + site.config['paginate_path']
            newpage = Page.new(site, site.source, page.dir, page.name)
            newpage.pager = pager
            newpage.dir = Pager.paginate_path(site, num_page, paginate_path)
            site.pages << newpage
          else
            page.pager = pager
          end
        end
      end

      # Paginates the blog's posts per lang. Get the lang layout and posts
      # to generate paginations.
      #
      # site - The Site.
      # lang_path - The path of the lang.
      # lang_layout - The path of the lang pagination template.
      # posts - List of posts to paginate.
      #
      # Returns nothing.
      def paginate_langs(site, lang_path, lang_layout, posts)
        langs = []
        restricted_langs = []

        for post in posts
          for post_lang in post.langs
            langs.push(post_lang) unless restricted_langs.include? post_lang
          end
        end

        langs.sort!.uniq!

        for lang in langs
          paginate_path = '/' + lang + site.config['paginate_path']
          page = template_page(site, paginate_path)

          paginate(site, page, lang)
        end
      end

      # Public: Find the Jekyll::Page which will act as the pager template
      #
      # site - the Jekyll::Site object
      #
      # Returns the Jekyll::Page which will act as the pager template
      def template_page(site, paginate_path = site.config['paginate_path'])
        site.pages.dup.select do |page|
          Pager.pagination_candidate?(site.config, page, paginate_path)
        end.sort do |one, two|
          two.path.size <=> one.path.size
        end.first
      end
    end
  end

  class Pager

    # Static: Determine if a page is a possible candidate to be a template page.
    #         Page's name must be `index.html` and exist in any of the directories
    #         between the site source and `paginate_path`.
    #
    # config - the site configuration hash
    # page   - the Jekyll::Page about which we're inquiring
    # paginate_path - the explicit paginate path, if provided
    #
    # Returns true if the page is `index.html` and exist in any of the directories
    # between the site source and `paginate_path`.
    def self.pagination_candidate?(config, page, paginate_path = config['paginate_path'])
      page_dir = File.dirname(File.expand_path(remove_leading_slash(page.path), config['source']))
      paginate_path = remove_leading_slash(paginate_path)
      paginate_path = File.expand_path(paginate_path, config['source'])
      page.name == 'index.html' &&
        in_hierarchy(config['source'], page_dir, File.dirname(paginate_path))
    end

    # Static: Return the pagination path of the page
    #
    # site     - the Jekyll::Site object
    # num_page - the pagination page number
    # paginate_path - the explicit paginate path, if provided
    #
    # Returns the pagination path as a string
    def self.paginate_path(site, num_page, paginate_path = site.config['paginate_path'])
      return nil if num_page.nil?
      return Generators::Pagination.first_page_url(site) if num_page <= 1
      format = paginate_path
      format = format.sub(':num', num_page.to_s)
      ensure_leading_slash(format)
    end
  end
end