---
layout: post
title: 'Thirsty Turtle v1.0'
published: false
---

After almost two years of silence I've decided to start blogging again. Since my old blog was kinda out-dated, I created a new design, found myself a fitting name (more on the meaining of the 'Thirsty Turtle' later) _and_ switched my blog from Wordpress to [Jekyll](https://github.com/mojombo/jekyll). Today I'll go into some more detail on how to set up Jekyll on [Heroku](http://www.heroku.com).

## Jekyll what?
Simply put, Jekyll is a site generator that allows you to build static websites based on dynamic components. Static websites imply there is no underlying database to dynamically render pages. Static websites also have to be regenerated everytime you create a new blogpost or want to change something.

So why would I use a static site generator? For one, it's __portable__ accross providers, it 's a lot easier to keep your site __secure__ and since pages are not generated everytime a user visits your site, the **load time** of a page is faster.

Of course there is also the factor of "new-ness". Although Jekyll has been around for a couple of years, the idea of being able to post a
It's not that Wordpress was bad, I just wanted to experiment a bit with static site generators. So far I'm quite proud of my Jekyll-powered blog. Setting it up went smooth and pushing everything to Heroku was definiatly an enjoyable experience. The feeling of only having to execute a git push and watching your entire site being built makes you feel so good. I guess it's this kind of magic that made me pursue a career as a software engineer in the first place.

For the ones interested in running your Jekyll site on Heroku, these are steps I took:
* Set up a Jekyll project and add it to a Git repository. There are plenty of tutorials on how to do this so I'm not going to repeat it here.
* Create a new cedar stack on Heroku using a custom buildpack. The buildpack takes care of automatically running jekyll when pushing to Heroku. 

    $ heroku create --stack cedar --buildpack git://github.com/mattmanning/heroku-buildpack-ruby-jekyll.git

* Push your code to Heroku and see the magic unfold!

    $ heroku push heroku master