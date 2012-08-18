---
layout: blog
title: My First Blogpost on Jekyll
---

Hello crazy world!
------------------

Well, the way they make shows is, they make one show. That show's called a [pilot](http://example.com/ "Title"). Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing.

This is [an example](http://example.com/ "Title") inline link.

{% highlight ruby %}
module Jekyll
  class CategoryList < Liquid::Tag
    def render(context)
      s = StringIO.new
      begin
        categories = context['site']['categories']
        unless categories.nil?
          post_count = context['site']['posts'].size.to_i
          categories.sort_by { |cat, posts| posts.size }
            .reverse()
            .each do |cat, posts|
               s << "<li><em>#{posts.size}</em>
               <a href=\"/blog/categories/#{cat}\">#{cat}</a>
               <span style=\"width:#{posts.size * 100 / post_count}%\">bar</span>
               <div class=\"#{cat}\"></div></li>"
            end
        end
      rescue => boom
        p boom
      end
      "<ul>#{s.string}</ul>"
    end
  end
end
{% endhighlight %}
wrwerwer awerwerawerwar
