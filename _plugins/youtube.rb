class YouTube < Liquid::Tag
  def initialize(tag_name, markup, tokens)
    super

    if markup =~ /^\s*([^\s]+)?/
      @id = $1
    else
      error_msg = 'Syntax error when parsing youtube.'
      puts error_msg
      raise error_msg
    end
  end

  def render(context)
    "<iframe width=\"565\" height=\"424\" src=\"http://www.youtube.com/embed/#@id\" frameborder=\"0\" allowfullscreen></iframe>"
  end

  Liquid::Template.register_tag 'youtube', self
end
