---
layout: post
title: 'Thirsty Turtle v1.0'
published: true
---

After almost two years of silence I've decided to start blogging again. Since my old blog was kinda out-dated, I created a new design, found myself a fitting name (more on the meaining of the 'Thirsty Turtle' later) _and_ switched my blog from Wordpress to [Jekyll](https://github.com/mojombo/jekyll). Today I'll go into some more detail on how to set up Jekyll on [Heroku](http://www.heroku.com).

## Jekyll what?
Simply put, Jekyll is a site generator that allows you to build static websites based on dynamic components. Static websites means there is no underlying database to dynamically render pages. This also implies that your website has to be regenerated everytime you create a new blogpost or changes something.

So why would I use a static site generator? For one, it's __portable__ accross providers, it 's a lot easier to keep your site __secure__ and since pages are not generated everytime a user visits your site, the **load time** of a page is faster. Of course there is also the factor of "new-ness". Maybe this is something typical for software engineers, but using new technologies has always tempted me.

I'm not going to explain the details on how to set up a Jekyll site, there are plenty of tutorials about that already. Instructions on how to set up a Jekyll generated site on Heroku are however slightly more difficult to find.

## Jekyll on Heroku
[Heroku](http://www.heroku.com) is a platform to set up applications in the cloud. Best of all, it's free to use for simple sites and web applications. In order to set up your Jekyll powered blog on Heroku, you first have to create a Heroku account and install the Heroku toolbelt. This allows you to maintain your apps from the command line.

Next step is creating a new app on the [Cedar Stack](https://devcenter.heroku.com/articles/cedar):

{% highlight bash %}
$ heroku create --stack cedar --buildpack git://github.com/mattmanning/heroku-buildpack-ruby-jekyll.git
{% endhighlight %}

Heroku doesn't offer support for Jekyll out of the box, so for this you need a custom buildpack. The buildpack mentioned above takes care of this and will automatically regenerate your site when pushing your site to Heroku. Any custom plugins you have will also be executed when doing this.

To get everything working with Heroku, add a **Gemfile** with the following dependencies. Don't forget to run bundle install to create the **Gemfile.lock**.

{% highlight ruby %}
source :rubygems
    
gem 'jekyll'
{% endhighlight %}

Then create a **Procfile** with the following command:

{% highlight ruby %}
web: bundle exec jekyll --server -p $PORT
{% endhighlight %}

Finally all you have to do is push your code to Heroku and see the magic unfold!

{% highlight bash %}
$ git push heroku master
{% endhighlight %}
