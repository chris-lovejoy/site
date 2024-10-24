---
title: "A question-driven approach to reading papers: Example One"
permalink: question-driven-approach
redirect_from:
public_date: 2022-03-01 00:02:00
image:
type: page_only
status: complete
layout: page
---
_This is an example to accompany the course "How To Read An Academic Paper: A 21st Century Superpower"._

I recently summarised the paper "[Artificial Intelligence to Detect Papilledema from Ocular Fundus Photographs](https://www.nejm.org/doi/10.1056/NEJMoa1917130)" and shared it on ExplainThisPaper.com [here](https://explainthispaper.com/detecting-optic-nerve-swelling-with-ai/).

Before reading the paper, I came up with as many questions as possible that the paper prompted - which I later answered.

**Looking at the title, I asked myself:**

- what precisely is papilledema? I know it's something to do with swelling in the eye, but where precisely is the swelling? what are the common causes? can this algorithm detect all the causes? if not, how might you distinguish between different causes?
- they say 'artificial intelligence', but what kind of algorithm did they use? how did it work?
- what are ocular fundus photographs? (which part of the eye if the fundus, again?) how commonly are these performed.

**Then, I skimmed the abstract, and came up with the following:**

- They mention 19 sites and 11 countries... that's a lot - what places are covered? how many data points from each location? any info on the partnerships that enabled this?
- the AUC scores look good - how are the other performance metrics? what is the model not good at?
- where would this fit into the clinical pathway? (when would the scans be performed?)

**And finally, skimmed the full paper, which prompted the following:**

-   They used a U-Net and a DenseNet.. what are those and how do they work again?
-   They used one-versus-rest strategy... what implications does that have for the reported results?
-   They mention an imbalance of class distributions... did they do anything to mitigate effects of this?
-   "negative predictive values were high, but positive predictive values varied based on prevalence" - to think through this mentally, and make sure I understand the significance of what they're saying