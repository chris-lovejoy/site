---
image:
title: Methods for interpreting and explaining AI models
permalink: intepreting-ai
redirect_from: 9537beebe3aa370886ec4946e4d68d80db73b2cd
public_date: 2023-03-29
type: article
tags:
  - ai-explainability
  - ai-interpretability
status: No status
---


[[AI models are inherently difficult to interpret]] so methods have been developed to support interpretability and explainability. Interpretability can be defined as **being able to understand what caused a decision or being able to predict/explain the result**.

These methods can be broadly divided into:
1. **inherent explainability**: using 'interpretable' models where we can directly look at understand the parameters
2. **post-hoc explainability**, where we develop explanations after model trained.


### Inherent explainability
Models which are inherently interpretable include:
1. linear regression - we can look at coefficients
2. decision trees (we can look at branch points
3. generalised linear models - again, we can look at coefficients
4. naive bayes - we can look at the conditional probabilities
5. nearest neighbours - we can look at each of the nearest neighbours

Of note, these do not include deep learning models, which are coming to dominant the field of AI.


### Post-hoc explainability
This includes:
1. **surrogate methods**: building a simpler, interpretable model which *models the model*. Can be done on a globally (across whole spectrum of inputs/outputs) or locally (such as 'LIME' - local interpretable model-agnostic explanations)
2. **investigate the impact of features**: look at how predictions change when a specific parameter is changes (partial dependence plots), look at the importance of different features (permutation feature importance)
3. **visualise the features themselves** ('feature visualisation'), such as heatmaps/saliency maps for CNNs or language models


### Limitations of current methods
Saliency maps are good for **where** but they don't tell us **what**. Therefore, they require a step of human interpretation, which has a risk of bias.

In healthcare, medication is often effectively a black box. E.g. mechanism of action of paracetamol is not well-understood. RCTs have been used for providing that it works. The same could be applied to healthcare.


### Related
- [The false hope of current approaches to explainable artificial intelligence in health care](<https://www.thelancet.com/pdfs/journals/landig/PIIS2589-7500(21)00208-9.pdf>) - critique of interpretability methods, with a focus on healthcare.
- [Producing simple text descriptions for AI interpretability - Luke Oakden-rayner](https://laurenoakdenrayner.com/2018/06/05/explain-yourself-machine-producing-simple-text-descriptions-for-ai-interpretability/)
- [Demystifying black-box models with symbolic metamodels - van der Schaar](https://proceedings.neurips.cc/paper/2019/hash/567b8f5f423af15818a068235807edc0-Abstract.html)
- [Semi-interpretable Probabilistic Models by Brooks Paige](https://www.youtube.com/watch?v=X7ED8Fi1948)
- [Stop explaining black box machine learning models for high stakes decisions and use interpretable models instead - Rudin](https://www.nature.com/articles/s42256-019-0048-x)