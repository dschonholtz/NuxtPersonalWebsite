---
title: Building This Blog
description: Building a Universal Blog with NustJS Content, Sass, Nginx, and Docker
img: BuildingThis.jpg
alt: My First blog post
author:
  name: Douglas
  bio: Douglas is a Software Engineer who is interested in computer vision and our quest for strong AI. He also is constantly looking for ways to push the envelope of his personal mental and physical fitness.
  image: ProfileDoug.jpg
  alt: Doug's profile pic
---

The tech stack behind this blog and why those tools were chosen. The major tools chosen were a modern JS framework, a modular architecture that would allow me to add arbitrary code to this website, a production grade web server, sass or another css precompiler, and a cloud service to deploy this all to. The decisions I ended up coming to were NuxtJS content, docker based infrastructure that could be upgraded to kubernetes later, Nginx, and Digital ocean.

In order to decide on the JS framework I wanted it to be a widely used and supported framework. I also wanted it to support a “universal” app. In other words, I wanted the option to have a static site with the modular JS framework. This was primarily for SEO reasons, but also for a variety of other reasons related to bulky js frameworks causing long page load times and performance issues in general. This took me down to a couple of react options and a couple of Vue options. Ultimately, I decided to go with Nuxt.js content, built on top of Vue.js. Honestly, the main reason for this is this is that I have spent a fair amount of time with Vue and relatively little time with React. I think if I was going to be maintaining something more intense from a content management perspective I would have used something like [CosmicJS](https://www.cosmicjs.com/) or another tool like it to manage my content.

To actually build this blog, I followed through the [NuxtJS blog/content guide.](https://nuxtjs.org/blog/creating-blog-with-nuxt-content/)
I then ignored the styling recommendations therein because they recommend [TailWindCSS](https://tailwindcss.com/). I consider CSS one of my weak points, so I wanted to make sure that I did all of the CSS myself in some kind of re-usable modern way. With this in mind, I re-styled everything myself with Sass.

At this point, I had a functioning blog running, but I wanted to be able to make sure that the development environment matched the production environment and that I was set up to move to kubernetes as I deployed other projects to this site. With this mind, I containerized everything with docker. Then I set up a super simple docker-compose.yml file to quickly run my local dev environment. 

In the spirit of making the site easy to maintain and keep updated I also wanted to use a production web server. The two basic options are Nginx and apache. I picked nginx because the docker images seem more widely used and therefore the community would offer better support. (In theory, we’ll see.) I created a production docker file to use my new nginx config file.

Now, it was time to actually deploy. Now I would have a super simple way to publish content that I wanted to hold to a public standard that would be about getting better at a small subset of skills. Since for now this is a static app, I can actually deploy using DigitalOcean Apps for free.

The only requirements to get that working were to point digital ocean at my github repo, let it detect the dockerfile, and then to point digital ocean to the static directory in the container: 

    /usr/share/nginx/html/dist

And wala. We had a fully deployed personal blog meeting all of my personal content requirements. 

I’m sure those will change over time, but for now, this is an awesome way to clarify and publish my thoughts to organize the bag of cats in my own head.

If you would like to look at what I did you can of course find the github repo here: https://github.com/dschonholtz/NuxtPersonalWebsite.


