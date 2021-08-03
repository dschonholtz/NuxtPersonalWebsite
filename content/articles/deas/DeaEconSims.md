---
title: Economic Simulations with sims
description: Economic Forecasting with knowledge asymmetry sims
img: NetLogo.png
alt: My first blog post Logo image for blog
author:
  name: Douglas
  bio: Douglas is a Software Engineer who is interested in computer vision and our quest for strong AI. He also is constantly looking for ways to push the envelope of his personal mental and physical fitness.
  image: ProfileDoug.jpg
  alt: Doug's Pic
---

Economic Impact: We can simulate the markets at scale with today's compute. If we can get semi accurate representations of psych and current technology and markets
Niche: Economic forecasting for business leaders and economists? (Needs work)
New Technology: Economic forecasting to a widescale resolution not previously seen

So this idea is still in the early stages because I don't understand the existing offerings super well yet.

However, in general it seems like there are a couple of major existing options.

NetLogo, Mason, RePast, AgentSheets, Ascape, Agent Modeling Platform.

These all seem good for small to medium scale agents that interact in relatively simple ways. This is great when hunting for emergent properties in extremely simple microeconomic markets, but is perhaps less tenable when trying to run several million agents based on behavioral economics principles.

What I'd really like to do is to try to make a modeling schema based on knowledge asymmetry, behavioral economic principles and agent needs.

Despite Google's best efforts to categorize all of human knowledge value primarily changes hands due to knowledge asymmetry. 

Decades ago, this would be because the blacksmith has skills you don't have, and you don't know that his prices are twice as high as the blacksmiths prices two towns over.

Now, we have the same thing, but online sellers pay for ads to promote their brand and market themselves so you believe their product is the best. 

This of course isn't a controversial idea, we all know that marketing impacts buying decisions. What I think would be interesting, would be to start with agents that have needs. Let folks build things to solve those needs. Then have those built things not be known about so the folks that build them can try to sell them and market them... Which creates a new need. 

In other words, I want an economic market that systematically introduces new technology, new problems and thus further introduces new solutions. Then after all of that layer behavioral economics and psychological ramifications on each of those agents.


Ok that all sounds well and good.. But that sounds fairly hard. How would this get done?

We'd start with an extremely simple agent and an extremely simple 2d world. The agents can buy and sell things in the 2d world that are tied to their desires.

Later, we'll add needs. The agent needs food to combat a hunger that becomes greater over time. To start, the agents wander the map picking up food. The agents that fail to do that die.

It's a hard life.

That is until one of the agents develops a new technology!

Then the food can be grown in a specific place, with a person that knows that technology.

In total the list of technologies possible will be functions of improving the following:

* Physically transporting goods
* Transporting information
* Doing something locally that once had to be fetched
* How easy it is to learn a new technology

Later we could add in:
* physical threats so folks need a place to live
* A desire to build defenses and offenses

To start food will likely be the currency, everyone has it, smart folks or folks born into more means will be able to invest in new technologies more aggressively.

Ok.

Fine. These concepts seem fine in principle but implimenting them is going to be terrifying. How?

So despite a large portion of myself wanting to use this as an excuse to go learn Rust and build some sims from scratch... I think I should probably build this off of one of the NetLogo WealthDistribution models. https://ccl.northwestern.edu/netlogo/models/Sugarscape3WealthDistribution

From there, I would add in research and goods so the agents could build a new world.

This is still vague. I need to go to sleep. I might keep working on this tomorrow. It's a fun idea.
