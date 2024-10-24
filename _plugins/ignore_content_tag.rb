module Jekyll
    class IgnoreContentTag < Liquid::Block
      def render(context)
        ""
      end
    end
  end
  
  Liquid::Template.register_tag('ignore', Jekyll::IgnoreContentTag)
  