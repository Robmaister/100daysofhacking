module Jekyll
  class InstagramTag < Liquid::Tag

    def initialize(tag_name, hash, tokens)
      super
      @hash           = hash.strip!
    end

    def render(context)
      "<div class='embed instagram'>#{iframe_for(@hash)}</div>"
    end

    def iframe_for(hash)
      url = "//instagram.com/p/#{hash}/embed/"
      "<iframe src='#{url}' frameborder='0' scrolling='no' allowtransparency='true'> </iframe>"
    end

  end

end

Liquid::Template.register_tag('instagram', Jekyll::InstagramTag)
