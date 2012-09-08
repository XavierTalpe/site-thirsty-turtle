require 'RMagick'

class Thumbnail < Liquid::Tag

  def initialize(tag_name, markup, tokens)
    super

    if markup =~ /^\s*\[([\s\w-]+)\]\[([\w\/\.-]+)\]\[([\d]+)x([\d]+)\]\s*$/
      @alt = $1
      @src = $2
      @width = $3
      @height = $4
    else
      error_msg = 'Invalid arguments for thumbnail generation!'
      puts error_msg
      raise error_msg
    end
  end

  def render(context)
    src_thumb = get_thumb_src(@width, @height)

    absolute_img = File.join(Dir.pwd, @src)
    absolute_thumb = File.join(Dir.pwd, src_thumb)

    if !File.exists?(absolute_thumb) || File.mtime(absolute_thumb) <= File.mtime(absolute_img)
      puts "Generating thumbnail from #@src"
      original = Magick::Image::read(absolute_img).first
      original.strip!
      thumb = original.resize_to_fit @width, @height
      thumb.write absolute_thumb
    end

    "<a class='fancybox' href='#@src'><img alt='#@alt' src='#{src_thumb}' /></a>"
  end

  def get_thumb_src(width, height)
    img_dir = File.dirname(@src)
    img_extension = File.extname(@src)
    img_basename = File.basename(@src, img_extension)

    "#{img_dir}/#{img_basename}_#{width}x#{height}#{img_extension}"
  end

  Liquid::Template.register_tag 'thumbnail', self
end
