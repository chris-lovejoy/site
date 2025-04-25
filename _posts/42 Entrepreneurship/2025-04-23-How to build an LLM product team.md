---
title: Who to hire first for your LLM product team? 3 principles for building LLM product teams
permalink: llm-product-team
redirect_from:
public_date: 2025-04-23 00:00:00
tags:
  - Machine Learning
  - Medicine
image: 
type: article
status: complete
---

Team is the single biggest predictor of success -- but there's no 'playbook' yet for what teams building LLM products should look like.

At Anterior, we've gone from first mover in the health insurance space to [raising $25M](https://www.anterior.com/news/anterior-secures-usd20-million-series-a-to-unlock-administrative-efficiencies-for-healthcare) and serving health insurers covering 50 million American lives.

As our company has grown from 4 to 40, we've made great progress and learnt from our mistakes along the way. I'll share some observations and recommendations based on my experiences of this journey.

There are 3 main ways that building LLM products differs to building traditional software products:
- The technical landscape is moving rapidly. Your entire codebase could be out-of-date in 6 months time.
- LLMs can be unpredictable. Building reliable apps is an unsolved problem.
- The boundaries between product, engineering and domain expertise are blurred. Writing code is replaced in part by writing words (prompts).

Here are 3 principles for building LLM product teams that I've seen work well across multiple companies:


## 1. Start with generalists - with as many of the following 6 traits as possible

Things that matter for building LLM products are:
- product sense: what are the core customer problems that can be solved with LLMs?
- data intuition: to analyse and evaluate data from users, to continuously improve the product
- full-stack SWE skills: to build the minimum infrastructure required to interact with LLMs
- domain expertise: to translate user problems
- design: to create the delightful user experience
- meta traits: being a fast learner, used to high pace of change, be 1st principles thinker, have a sense of urgency

![yes-every-skill-meme](/assets/images/article-images/yes-everything-meme.png)

Nobody exists who has all these skills but you should find people who have multiple (as the company grows, you can relax this requirement and hire more specialists.). It doesn't have to be formal experience per se; they may just have great intuition, or have built some level of competency by hacking on their own thing. Also, as cross-functional collaboration is key, everybody should be expected to upskill in areas they don't have prior experience in.

Prioritise evidence of having high potential and being a fast learner over big company brands or fancy degrees (at Anterior, our CEO likes the principle of [distance travelled](https://theheretic.org/2018/when-hiring-look-for-distance-traveled/)). A lot of the content from a great ML degree from 2 years ago is now out of date (even if some of the intuitions continue to be helpful). It can be more scary to hire this way but it's worth trusting your judgement.

At Anterior, our first hire (me 😛) brought domain expertise, data intuition and SWE skills. After adding a designer and a PM, we had all the above bases covered.


## 2. Prioritise software engineer skills over AI expertise

When building LLM products, you're not really "doing AI". You're chaining prompts and passing around outputs - not training and deploying models. *Maybe* you'll fine-tune models eventually, to eek out performance gains or reduce cost and latency, but not initially.

Which means you don't really need machine learning engineers or researchers until much latter. This is one of the most common mistakes I've seen teams make and my friend Jason Liu [goes into more detail here](https://jxnl.co/writing/2024/04/08/hiring-mle-at-early-stage-companies/).

Instead, prioritise competent full-stack engineers who can rapidly protoype, iterate and test new things. You want somebody who has good programming fundamentals (and knows when to ignore them in pursuit of being quick and scrappy).


## 3. Get a domain expert who can code

There are a lot of people who can build LLM products and there are a lot of people with domain expertise -- there typically aren't many with both. Having them on your team is a massive unlock that helps you move way faster than the competition.

In our case at Anterior, this was me (excuse the self-reference here). For our initial customer pilots, we needed to quickly build LLM pipelines that used medical evidence and guidelines to make decisions. I could iterate on our LLM pipeline (using my SWE/data skills) and then medically analyse the outputs (with my doctor hat on). This meant that in 1 weekend I could make the progress that a collaborative team of SWEs and doctors might take more than a week to achieve.

This only works for as long as you can find people with this skillset. Which typically means that as the team grows, you'll need to start formalising what this individual does into a 'process' that can be followed by cross-functional teams of domain experts and programmers. Your coding domain expert is perfectly positioned to do this and you should empower them to do so.

I initially set up and defined this process at Anterior and we then passed it over a few months later to somebody else (with management expertise, but not domain expertise) to _manage_ the process. Looking back, I think we did so too soon and it affected the speed at which the process and associated tooling evolved. One takeaway for me is that you should keep your technical domain expert(s) as close to this work as possible, for as long as possible.


## Conclusion
These are my recommendations based on my experiences so far - but we're still early and there are no rules, so you should make your own.

Here are some other helpful perspectives on building LLM product teams:
- [Hiring and Building an AI Engineering Team by Bryan Bischof](https://www.youtube.com/watch?v=IxXMKT2FDRk)
- [Lessons from Building LinkedIns GenAI team by Xiaofeng Wang](https://www.youtube.com/watch?v=n9rjuBuShko)
- [Hiring MLEs at early stage companies by Jason Liu](https://jxnl.co/writing/2024/04/08/hiring-mle-at-early-stage-companies/)
- [How to Interview and Hire ML/AI Engineers by Eugene Yan](https://eugeneyan.com/writing/how-to-interview/)
