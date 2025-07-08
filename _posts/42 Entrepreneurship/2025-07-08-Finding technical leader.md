---
title: "How to find and hire a technical leader (when you're not technical)"
permalink: technical-leader
redirect_from: 
public_date: 2025-07-08
tags:
  - Machine
  - Learning
image: 
type: article
status: complete
---


It's a common scenario: you've got an entrpreneurial itch, an idea you're really excited to build... it's just, you don't really know how to build it.

Perhaps you've worked around products but on the commercial side. Or maybe your CTO / tech lead doesn't have the right experience or just left. Or perhaps you're pretty new to this and still trying to figure things out.

You might be thinking **"I just need to find a good technical person and my problems will be solved" - unfortunately, it's not that simple**.

Or you might be thinking **"hey I can just vibe code my way there". This is not a bad idea but it's not a long-term solution.**
<!-- [ref: why as a non-technical you can't just build it yourself article], if ready -->

What you *need* to do is find the right technical person for the job and bring them on board. Here are 3 things I'd recommend for doing so:



## (1) Understand your idea technically, at the deepest level your current ability allows
It can be tempting to think "I'm not technical - I need somebody else to figure this all out for me". And while there's some truth to that, you can do a lot more than you think.

A great approach is: **develop a working hypothesis for what your idea should look like technically and continually evolve this through conversations with technical people.**

Those conversations might be in the context of a technical person joining your project. Or it could just be somebody giving you advice.

Either way, it's much easier for somebody to take your bad understanding and fix it than it is for them to define it from scratch.

This working hypothesis is helpful in a number of ways:
- you iteratively improve your understanding
- you have more self reliance (it doesn't all live in your technical person's head)
- you'll better understand what kind of technical person to bring on board

Don't be put off if you don't feel you know much about software. Just define your idea at the level of abstraction you can handle (and use chatGPT / Claude to help you).

The highest level of abstraction might be something like: *I want to build an app that lets users upload their medical notes and ask questions.*

Going down one level deeper, this might be: 
- I want a front-end with the following functionality: (i) upload medical record, (ii) view uploaded medical records and (iii) chat with the medical record
- I want back-end functionality for the following: (i) receive medical records from front-end and store them in a database, (ii) render uploaded medical records, (iii) pass the chat input and medical record to an LLM provider and return the response

Drilling even deeper might focus on what it means to pass the chat input and medical record: what kind of prompt might you use? what kinds of models? what kinds of questions might people ask? how can you monitor the performance of the LLM? how are you going to securely handle private medical data?

You might bump into the limits of your current understanding, and that's okay. Keep having conversations with technical people (and chatGPT) to flesh out your working hypothesis. Plus, alongside this I would recommend that you:


## (2) Build some technical foundations

Building technical foundations is helpful even if you're not going to build out the full product yourself.

It'll be helpful whenever you're talking to a technical person - whether it's iterating on the working hypothesis for your product and/or considering hiring them.

Learn the basics of the area you're looking to build in. What's a front-end and a backend? What does that look like in code? What's a function? What types of database are there?

You can get far by:
- going back and forth with chatGPT / claude (even basic questions like "I have some code.. how do I actually run this?" and "I want to build an app that does X.. what sort of architecture makes sense?")
- playing around with "vibe coding" some version of your app - and spending time trying to understand the code. (Better to do so in an IDE like Cursor than in Lovable etc in my opinion)
- (and consider taking the odd course e.g. Harvard's CS50)

Your aim probably shouldn't be to actually become a full-time software engineer. It takes years to get *good*. But you can definitely learn enough to be dangerous.


## (3) Get a technical friend

Throughout the process of finding somebody technical, it's invaluable to have somebody you can go to for third party input.

The ideal person is somebody you're friendly with and/or has a genuine interest in helping you. (Maybe you make them an advisor for the project, with some kind of equity and/or salary payment, to get more buy-in.)

Use this person as a sounding board for your initial ideas. Somebody to point you in the right direction. And to help you find the right person to hire. (Don't be afraid to ask the technical friend to hop on calls and interview a potential new CTO / tech lead.)

Keep the relationship relatively low touch (e.g., you ping them questions, hop on calls every now and again). Most good people will be busy and will be doing this in-part out of good will, so make sure to respect that.

Some thoughts on the approach here:
- Adopt the mindset that they don't owe you anything. Just because they helped you before doesn't mean they'll help you again.
- Do the work first before coming to them. Rather than saying "please tell me how I should do X", come with "I've thought about X, chatGPT tells me Y and my question is [something clear and specific]"
- Read ["How to ask your mentors for help"](https://sive.rs/ment)

In terms of finding this person, the ideal scenario is that this is somebody you're already friends with (so they default have more patience to go through things with you). If you're reaching out to somebody cold, be aware that you'll need to more proactively communicate the "what's in it for them" to keep them engaged.

> _**Note:** I currently play this role for a small number of start-ups - feel free to reach out_
{: .prompt-info }


## Conclusion

In summary, to find a technical person to lead the building of an idea you have, I would recommend:
- Take initial responsibility for defining the technical requirements for your idea. Build basic technical understanding, some basic coding skills, and a working hypothesis which you update through conversations
- Reach out to technical people for conversations, in which you (i) get feedback on your thinking so far, (ii) assess whether they're a good candidate to bring on
- Lean on technical friends, advisors and chatGPT to help you throughout (from defining your technical approach to deciding who to bring on and persuading them to join). Respect their time and make it worth it for them to help.
