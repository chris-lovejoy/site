---
title: I built a GPT app to help me learn Spanish
permalink: check-my-writing
redirect_from: bip-1
public_date: 2023-01-18 00:00:00
tags:
  - Language-learning
  - Artificial-intelligence
image: assets/images/article-covers/world-map.jpg
type: article
status: complete
---
Learning a language is hard. But I'm convinced that large language models like GPT could make it a lot easier.

I spent the last few days trying to figure out how. The result is [Check My Writing](https://CheckMyForeignWriting.com). It's a decent starting point, but I want to do more. 

After writing text in a language you're learning, it provides (with the help of GPT):
- the key message in the text
- a list of errors (if any)
- the complexity of the text (using the CEFR framework)
- an error-proof version of your writing

![check-my-writing-tool](/assets/images/article-images/check-my-writing.gif)

The main motivation is that I'm learning Spanish and find writing short essays to be the best way for me to progress.

However, my wife (who speaks Spanish) doesn't have time to check all my writing - and other tools like Google Translate don't give the kind of feedback I need.

But stepping back: **what does it take to learn a language, and how could AI models like GPT help?**


## The four aspects of language learning
There are four types of language learning, which vary in two axes: consumption vs creation and time pressure vs no time pressure

![](/assets/images/article-images/language-learning-square.png)

Creating is harder than consuming, and time pressure is harder than no time pressure. So I consider the tasks to increase in difficulty: reading (easiest), listening, writing, speaking (hardest).

For me, the biggest pain points have been with practicing reading writing. For listening, there are endless podcasts (for Spanish at least - this was much harder when I was learning Polish). For speaking, you can get tutoring or speaking buddies.

But for reading, I really struggle to find text that's **at my current level**. If a text is too hard, I get fatigued. If it's too easy, I don't learn. And for writing, I have to rely on feedback of relatives or pay for a tutor.


### Using GPT to supercharge language learning
It feels like GPT is well suited to solve some of these problems.

I started by trying to solve the ***reading*** problem - by getting GPT to make text at different complexity levels. In short, I struggled to get it to output things at certain complexity levels. Specifying objective measures like CEFR or Flesch-Kincaid readability scores didn't seem to work.

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">I tried to make the complexity more objective. I played around with telling GPT to write with different:<br>- Flesch-Kincaid readability scores<br>- CEFR levels<br><br>But I couldn&#39;t get it to work consistently.<br><br>This was my first app using GPT so I asked: is there something easier to build?</p>&mdash; Chris Lovejoy (chrislovejoy.eth) (@ChrisLovejoy_) <a href="https://twitter.com/ChrisLovejoy_/status/1615395289455525920?ref_src=twsrc%5Etfw">January 17, 2023</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

So then I switched it up and focussed on the ***writing*** problem. I've been writing daily short essays in Spanish, and I asked GPT for feedback. That led to the tool [Check My Writing](https://CheckMyForeignWriting.com) tool, and it's been helpful (and saved my wife some time 😅). But ultimately, it's not been *transformative*.

I think the real game changer would be something that's more adaptive and real-time. Like a conversational agent that responds to your current level. That picks up on your grammatical errors, and then coaches you through understanding them. ChatGPT is decent at this, but I think it can be improved.

So that's what I'm going to build next. And given that I'm [building in public](public) right now, I'll be sharing real-time updates [on Twitter](https://www.twitter.com/ChrisLovejoy_) and [my mailing list](https://chrislovejoy.substack.com).
