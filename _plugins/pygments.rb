require 'net/http'
require 'uri'

module Jekyll

  class Pygments < Liquid::Block
    include Liquid::StandardFilters

    WEB_APP_URL = URI.parse('http://pygmentize.herokuapp.com/')

    def initialize(tag_name, markup, tokens)
      super

      if markup.strip =~ /^([a-zA-Z0-9.+#-]+)$/
        @lang = $1
      else
        error_msg = 'Syntax error when parsing pygments.'
        puts error_msg
        raise error_msg
      end
    end

    def render(context)
      request = Net::HTTP.post_form(WEB_APP_URL, {'lang' => @lang, 'code' => super})

      output = add_code_tags(request.body, @lang)
      output = context["pygments_prefix"] + output if context["pygments_prefix"]
      output = output + context["pygments_suffix"] if context["pygments_suffix"]
      output
    end

    def add_code_tags(code, lang)
      # Add nested <code> tags to code blocks
      code = code.sub(/<pre>/, '<pre><code class="' + lang + '">')
      code = code.sub(/<\/pre>/, "</code></pre>")
    end

  end

end

Liquid::Template.register_tag('pygments', Jekyll::Pygments)
