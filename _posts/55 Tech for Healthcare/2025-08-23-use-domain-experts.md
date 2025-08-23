---
image: 
title: "How to use domain experts when building domain-specific vertical AI" 
permalink: domain-experts-ai
redirect_from: 
public_date: 2025-08-23
type: article
tags:
  - 
status: complete
---

**A popular maxim when building LLM products is to "look at your data"**: one of the best ways to understand and improve AI performance is to review your AI outputs.

But what if you can't understand your data?

What if you're building a language learning app - but don't speak the languages your AI is outputting?

What if you're building an LLM app analysing legal contracts - and you're not a lawyer?

You need "domain experts" to review the AI outputs and translate them into something actionable (this is best done via custom review dashboards - more [here](/review-dashboard)). 

But that's just the beginning: your domain experts should be at the centre of a wider system that enables monitoring and improvement of your AI, and so much more.

**What does that look like and who do you need to hire?**


## A domain expert-powered AI system

Reviewing AI outputs should be a core component of a [wider system](/llm-native-expert-system) that:

- gives insights into live performance
- prioritises AI improvement efforts
- builds differentiated datasets for testing and/or model finetuning
- continually improves performance of your system (perhaps automatically)

Domain experts have a key role to play.

You should define 'failure modes' for your AI application: a description of all the ways your AI can go wrong. This helps target improvement efforts.

Defining and maintaining this "failure mode taxonomy" requires someone with domain expertise and an intuition for your AI system. This intuition is acquired through spending time reviewing AI outputs.

There are several mechanisms for improving your application, from tweaking prompts, to writing new pipelines to finetuning models. For domain-specific applications, techniques like context augmentation and in-context learning can be effective as well as direct prompt tweaks - all things domain experts are well placed to do.


| ![prompt-injection-techniques](../assets/images/article-images/prompt-injection-techniques.png) | 
|:--:| 
| *Prompt techniques that work well for domain-specific applications* |


As you grow, you may need to build out your team of domain experts performing reviews. As you hire different reviewers, you'll need a system for quality-assuring your reviewers by assessing inter-rater agreement.

As your user base grows and your AI system generates more outputs, you'll need a way to prioritise *which* of the AI outputs to review. 

All these decisions benefit from domain expert steering.

**Given your domain expert(s) should do so much more than just review AI outputs, what other skills should they have?**


## Hiring the right domain expert(s)

We can map the above responsibilities onto concrete skillsets that it'd be awesome for your domain expert to have:

- **Statistical / data science skills**: to define the sampling strategy for determining which AI outputs to review, to analyse the aggregate metrics on eg. performance, to monitor performance of reviewers (eg. with inter-reviewer kappas)
- **Leadership skills and industry connections**: knows how to build and manage a team as you scale the number of domain expert reviewers, understands and has connections in the industry to easily find and hire the appropriate people
- **Product skills**: for understanding what the customer wants and how to bake that into the review process, working with the engineering team to design and build the tooling that domain experts need.
- **Prior experience working with LLMs**: There's an *intuition* you get from building LLM products which is helpful in various ways. (Of the four, I'd say this is lowest priority because in my opinion it's the most-easily learnt.)

It's worth calling out: you're unlikely to find somebody with all the above attributes. (Particularly in more specialised domains like healthcare and law.)

The approach I'd recommend is to find someone with *as many of these traits as possible*, then team them up with others (eg. data scientists, subject-matter experts with industry connections) to complement the gaps.


## Consider hiring a "principal domain expert"

There are many advantages to giving a single individual ultimate responsibility for AI performance, and defining what is good / correct. This person is the "principal domain expert".

This doesn't mean you should *only* have this person reviewing AI outputs, but rather it's their role to take into account input from customers and from other reviewers and make "the final call" on key decisions.

This helps you to move faster. When uncertainty arises, e.g. around whether a certain output is better or more correct, having this directly-responsible individual (DRI) avoids slow 'consensus by committee'.

The typical evolution of this role is that they begin by reviewing AI outputs and steering product development - then as things grow, they can build out the team and design the wider system described earlier.

My advice would be to bring this individual into the project as early as possible and give them ownership so that they stick around. A failure mode I've seen is hiring people just to do reviews. This can solve your immediate problem (of getting insight into your AI performance) but makes it harder to design and build the wider system you need to build a differentiated application.

