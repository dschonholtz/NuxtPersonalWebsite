---
title: Economic Simulations with Agents
description: Economic Forecasting with Knowledge Asymmetrical Agents
img: NetLogo.PNG
alt: My first blog post Logo image for blog
author:
  name: Douglas
  bio: Douglas is a Software Engineer who is interested in computer vision and our quest for strong AI. He also is constantly looking for ways to push the envelope of his personal mental and physical fitness.
  image: ProfileDoug.jpg
  alt: Doug's Pic
---

## Economic Impact: 
We can simulate the markets at scale with today's compute. If we can get semi accurate representations of psych and current technology and markets
## Niche: 
Economic forecasting for business leaders and economists?
## New Technology:
 Economic forecasting to a widescale resolution not previously seen

# The Idea

When writing the first draft of this, which thankfully crashed my deployment so no one saw my brain at midnight, I went off on several tangents. I tried to start to build an emergent system that would generate new technology on its own. To do this, that meant that technology always had to follow some pattern and come from some central point.

The heuristic I came up with is fairly interesting in my humble opinion. I basically argued that everything comes down to food and safety. Then everything else is simply built around that to guarantee that we can get greater levels of food, safety and information about those things. So we transport things faster, ourselves to the food, the food to us. The information gets transported faster. This leaves out emotional well being, so you ~~probably~~ definitely need to add a few more necessities to that list, but the general idea still seems like a fairly powerful heuristic for modeling technological change over time. I get into those details in the next section. What was the most interesting piece to it, was that everything ultimately converges with high quality personalized decentralized manufacturing of food, safety and anything to aid in those things which becomes all of the modern appliances we are used to to aid us in feeling safe, fed, and having spare time.

This makes Neil Gershenfeld's take on self assembling and disassembling machines seem all the more prescient to me. It also makes me very excited to see where his work goes.

Go check out the podcast episode about that here: https://www.scifitoreality.com/1825607/8926466-neil-gershenfeld-building-the-hardware-from-the-diamond-age

There are a couple of ways you could go about this.
1. Write a new agent simulator in rust (Because pain)
1. Use an existing option
  * NetLogo
  * Mason
  * RePast
  * AgentSheets
  * Ascape
  * Agent Modeling Platform (AMP)


To get started I think I'd go start with the SugarScapes wealth distribution model. https://ccl.northwestern.edu/netlogo/models/Sugarscape3WealthDistribution

Then in order we'd add the following and document the changes on the simulation.
* A fiat currency separate from the food in the sim that could be exchanged for the food
* Something that kills the agents. We'll call them wolves.
* Security from the wolves (Houses, fences)
* A simple auction based market for the security of the houses. The poor would perish...
* Technological evolution based on knowledge asymmetry
  * Add distribution
    * Food/info/security can come to you or you can go to it
  * Add local manufacturing
    * you can get your food made locally, your information locally and security locally without supply chain
  * Make adopting a new technology require "learning" that technology
  * Make technological progress change by 

This is still somewhat vague but it is interesting and it might be worth trying to build out over time.


