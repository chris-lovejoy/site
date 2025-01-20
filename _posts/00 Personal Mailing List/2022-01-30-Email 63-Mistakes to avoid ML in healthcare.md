---
image: 
title: "Mistakes to avoid - Machine Learning in Healthcare"
permalink: mistakes-avoid-ml-health
redirect_from:
public_date: 2022-01-30
type: article
status: 
tags:
- Weekly email
---


I’ve worked and consulted on my fair share of projects applying machine learning to healthcare over the last few years. So this week I thought I’d share five common mistakes that I have made, or have seen groups making:

### 1️⃣ Trying to answer the wrong question

AI is great for analysing complex inputs and for personalising outputs to an individual.

It's less helpful when, for example:

1. Interpretation of the model is important
    
2. Sensitive decision-making is involved (such as withdrawing life support)
    

It’s important to find the right technology for the problem - not the other way around.

### 2️⃣ Not having the right data

Do you have enough data? (Answer: possibly. But you should still try and get more)

How is the data labelled? Biopsy > many doctors > 1 doctor’s interpretation. Bad ground truth = bad model.

The data should cover the entire domain of intended use. This means different demographics, geographical sites and a variety of presentations.

### 3️⃣ Involving ML scientists too late

ML expertise is needed to build the model - but it shouldn't start there. Consult someone who understands data early. Early advice can change the path of a project for the better.

You can get ML expertise from local hospitals and research institutions or - if needed - through collaboration with a commercial organisation.

### 4️⃣ Not involving doctors

You need clinicians to frame the clinical question and to help collect and annotate the data.

You can build a sophisticated ML model, but it needs to make sense clinically and fit into existing workflows.

### 5️⃣ Not planning how you'll monitor the algorithms' performance

Just because an AI model is performing well when you deploy it doesn't guarantee it will stay that way.

You need a way to detect when it changes - and an action plan to respond if and when it does.


### **💬 What have I missed?**

Any other common mistakes you’ve made, or seen other’s make?