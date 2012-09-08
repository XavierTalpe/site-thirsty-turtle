---
layout: post
title: 'Thirsty Turtle v1.0'
published: false
---

After more than a year of silence I;ve finally decided to start bloggin again. Of course, given my blogging history, this might just be the single post for this year.

All my good intentions aside, I did switch from Wordpress to Jekyll on Heroku. It's not that Wordpress was bad, I just wanted to experiment a bit with static site generators. So far I'm quite proud of my Jekyll-powered blog. Setting it up went smooth and pushing everything to Heroku was definiatly an enjoyable experience. The feeling of only having to execute a git push and watching your entire site being built makes you feel so good. I guess it's this kind of magic that made me pursue a career as a software engineer.

For the ones interested in running your Jekyll site on Heroku, these are steps I took:
* Set up a Jekyll project and add it to a Git repository. Make sure it runs locally.
* Create a new stack on Heroku using a custom buildpack:

    $ heroku create --stack cedar --buildpack git://github.com/mattmanning/heroku-buildpack-ruby-jekyll.git

* Push your code to Heroku and the buildpack will take care of generating your site from the source files:

    $ heroku push heroku master
    
