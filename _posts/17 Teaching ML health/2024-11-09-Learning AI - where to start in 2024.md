---
image:
title: Learning AI - where to start in 2024
permalink: learn-ai-in-2024
redirect_from:
public_date: 2024-11-09
type: article
tags:
  - 
---
An academic medical doctor recently asked me: "I want to learn about AI - should I learn to code? should I learn maths?"

My response was: **It depends what type of ML you want to do**.

I find it helpful to segment into the following 3 groups:
1. **generative AI** - building things using LLMs
2. **deep learning** - training deep neural networks for e.g. image classification
3. "**traditional ML**" - algorithms that don't involve training a neural network, such as classifiers like SVMs, random forest, nearest neighbours

Where to start depends on what you want to learn. You should probably learn to code, but only learn maths if it's necessary (and it's most relevant for deep learning).


### Generative AI

If you're interested in generative AI, unless you're going really deep and creating your own models (which is unlikely), then you should just learn to code and not worry about the maths. Interacting with this models is through text (ie. prompts) and code (to pass the data to the model).

To get started, open the [OpenAI Playground](https://platform.openai.com/playground/) and start testing out ideas. Once you find a task that the LLM performs well on, start coding an application around it.


### Deep Learning

If you're interested in deep learning, then it's worth building some intuition on what it means to train a model. Learning some maths can be helpful - but learn it from a machine learning lens to avoid going down a maths rabbit-hole.

To get started:

1. Watch [this video](https://youtube.com/watch?v=nrHH8y7cKAc)
2. Take [this course by Imperial College London](https://coursera.org/specializations/mathematics-machine-learning)

Together, this gives you a solid base and is probably all you need.

Start with these - and if there's anything you don't understand, go find a relevant explainer on Khan academy. (But don't start with e.g. a linear algebra course that isn't ML focussed.)

For the coding side, if you've not coded before then start with nocode tools like Google's AutoML: https://cloud.google.com/automl

This lets you upload a dataset, train a model and look at the performance. If you don't have a dataset you want to work with, I've made [this repository](https://github.com/chris-lovejoy/medical-datasets-for-education) or find a medical dataset on Kaggle.

Only learn to code once you're bumping up against the edges of the nocode tools.


### Traditional ML

If you're interested in "traditional" ML, then get started by learning to code. Use jupyter notebooks to load data, then train simple models using scikit learn. Learn enough statistics to understand when your model is working well and when it isn't.

Check out [this series of exercises](https://github.com/chris-lovejoy/CodingForMedicine) to go from the basics to training your first model, assessing its performance training a simple neural network.


### You should learn to code, but only learn maths for deep learning

When starting out, you should probably learn to code (learn python btw!) but you only really need to learn maths for deep learning - and even then, you should try starting with nocode tools. (And yes - learning to code is still relevant despite LLMs being great at writing code.)

For traditional ML and generative AI, you can get pretty far through self-study and experimentation. Deep learning becomes more technical and you may need to rely more on collaborators until you've built up your skills and confidence.


