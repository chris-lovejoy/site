---
image: 
title: Gradient Descent towards life satisfaction
permalink: gradient-descent
redirect_from: 
public_date: 2019-11-24
type: article
status: 
tags:
- weekly-email
---

I’m currently studying a lot of machine learning, and have noticed some analogies between the methods computers use to learn and the approaches we take to life.

So today I wanted to share one about how ‘gradient descent’ (which I’ll explain) demonstrates principles we can use to increase satisfaction / overcome problems in our own lives.

### **What is gradient descent?**

A large part of machine learning is about learning the relationship between information we have (the ‘input’) and information we want to know (the ‘output’).

In medicine, we may have a set of blood test results or a sequence of medical images, and we want to know whether the patient has a disease.

In finance, we may have the history of stock prices and we want to know what the market will do next.

Gradient descent is a common method for finding the **best** mapping between information we have and information we want to know. Finding, for example, the most reliable changes on a chest X-ray for diagnosing pneumonia.

| ![AI looking at a chest X-ray](assets/images/article-images/chest-x-ray.jpeg) |
|:-----------------------------------------------------------------------------:|
|                          AI looking at a chest X-ray                          |


I don’t want to get bogged down in the details of the method here (if interested, I’ve explained it [here](https://youtu.be/leDBwoaWQ6E?t=1439), but fundamentally what happens is the computer will:

1. make a guess (e.g. “a white patch here means pneumonia, a white patch here is normal”)
2. work out how wrong the guess is
3. work out in which direction the guess is less wrong
4. take a step in that direction
5. make a new guess, and repeat all the steps above

It keeps on repeating these steps until it has found the best relationship between ‘input’ (the information given) and ‘output’ (the prediction).

We can visualise this on a graph, as below, where the y-axis is ‘wrongness’ and the x-axis is the parameters of the model.

| ![gradient-descent-graph](assets/images/article-images/gradient-descent.png) | 
|:----------------------------------------------------------------------------:|
|                             A badly-drawn graph                              |


### **Applying this to life**

I believe a similar approach can be very effective when we’re trying to improve areas of our lives.

It could look something along the lines of:
- assessing our current position, and any areas of dissatisfaction
- deciding on a small change we could try, which we think would improve it
- making that change
- re-assessing the situation, and repeating

Retrospectively, I realise this was an approach I took to my career. I wasn’t 100% fulfilled while working as a doctor*, so I looked for a small step I could take to improve things. The first small step was learning to code, and I enjoyed it. That spurred me on to do an online course in machine learning, then to work for a healthtech start-up, then do my own projects, etc, etc. and after each step I felt more fulfilled.

In machine learning, there are other methods that let you ‘jump’ to the point where the model is least wrong (where the green arrow points in the above diagram). However, gradient descent is preferred when the problem you’re trying to solve is very complicated, because the ‘jumping’ method doesn’t work as well.

I’d argue that our lives are pretty complicated, and problems we want to solve can’t be done overnight, which is why this approach may be well-suited.

(Of course, life doesn’t always follow a straight path, which is perhaps where the analogy falls down.)

But I guess, in summary, what I’m thinking (as I over-analyse this method of computation) is that; for complex decisions such as how we live our lives, it makes sense for us to take an iterative approach, where we assess the outcome each time and use it to decide our next step.

This might not be a particularly novel insight - but it was a fun analogy I thought of this week.

Let me know what you thought :) Did you enjoy this more experimental approach to the email? Or did you prefer the previous style? After all, I guess this is part of my email gradient descent…