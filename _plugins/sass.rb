module Jekyll

  require 'sass'
  class SassConverter < Converter
    safe true
    priority :low

    def matches(ext)
      ext =~ /scss/i
    end

    def output_ext(ext)
      ".css"
    end

    def convert(content)
      begin
        puts "Converting Sass to CSS."
        engine = Sass::Engine.new(content, :syntax => :scss, :load_paths => ['.'], :style => :compressed)
        #engine = Sass::Engine.new(content, :syntax => :scss, :load_paths => ["./css/"])
        engine.render
      rescue StandardError => error
        puts "Error when converting Sass: " + error.message
      end

    end
  end

end
