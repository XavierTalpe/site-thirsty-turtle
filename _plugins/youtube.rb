class YouTube < Liquid::Tag
  Syntax = /^\s*([^\s]+)?/

  def initialize(tagName, markup, tokens)
    super

    if markup =~ Syntax then
      @id = $1
    else
      raise "No YouTube ID provided in the \"youtube\" tag."
    end
  end

  def render(context)
    "<iframe width=\"565\" height=\"424\" src=\"http://www.youtube.com/embed/#{@id}\" frameborder=\"0\" allowfullscreen></iframe>"
  end

  Liquid::Template.register_tag "youtube", self
end
