---
image: 
title: "7 eval mistakes that can kill your AI product (and how to avoid them)"
permalink: eval-mistakes
redirect_from: 
public_date: 2025-06-21
type: article
tags:
---

When done right, evals can be the backbone of product development, enabling teams to build great products that users love. Done wrong, evals can become a massive time sync that never add any real value or actively misleads the team.

Increasingly, evals are becoming the differentiators between LLM products. In a world where anybody can grab powerful off-the-shelf models, you win by your ability to move fast. This is enabled by an effective evaluation system.

Having seen many examples of both good and bad approaches to evals (including internally at [Anterior](https://anterior.com/), our Sequoia-backed healthcare LLM start-up), here are the 7 most common mistakes I've seen - and how you can avoid them.


## Refusing to use vibes - not making product decisions until you have eval data
If you refuse to write any AI prompts until you have evals in place, you are probably being too dogmatic about how you use evals. This has clear parallels in the test-driven development world: some people won't write any code until they have their tests in place. But in LLM world, where it's not clear off the bat how well an LLM will perform at a particular task, moving fast is enabled by a pragmatic balance of 'vibes' and evals. It's not that you should never use 'vibes', it's that you want to graduate to evals ASAP as the product matures.

**Inversion:** Make case-by-case decisions about whether to 'go live' with certain changes:
- When starting out development of a new pipeline, it's reasonable to use vibes to decide what changes to make
- If you notice a clear problem that has a simple fix, it's okay to fix it before you have the eval metrics to support the change
- Use evals to minimise the need for manual inspection and scale the number of people who can contribute simultaneously.


## Focussing on tools, not process
When starting out with evals, it's easy to think the first step is to partner with a tooling provider, and then to work with them to define your eval process. However, all eval tooling is opinionated and may not necessarily best serve your use case. Integrating somebody else's framework into your product takes up-front investment and then there's a soft lock-in because it would take effort to migrate in future. The problem to be solved is defining the *process* used for your evals and this is something you're best placed to solve yourself, not your eval tooling provider.

**Inversion:** Define your process, then create the tooling you need to support it
- Make the build vs buy decision *after* you've defined your process. Building your own tooling can be quite straightforward although using existing tooling is always an option.
- If your process isn't working, analyse it yourself and make the appropriate changes
- Integrating your tooling within your wider platform can help you make use of eval outputs within the product


## Starting with off-the-shelf eval metrics
Every LLM product is doing something different and has its own unique failure modes which your evals need to capture. Generic evals (e.g., completeness, faithfulness, etc) are rarely the best measures. (Note that eval companies will typically start by offering these generic evals, given their need to cater for the general market)

**Inversion:** Invest time upfront to identify the most helpful eval metrics
- Look for a small number of metrics that give you the most information
- Perform error analysis to identify the failure modes, then build evals that test against them
- Focus on metrics that are actionable - if a metric doesn't help you decide what to fix or improve, it's not worth tracking


## Focussing on evaluating each component of your system
Measuring each component without paying attention to the bigger picture is a fast way to optimize for what doesn't matter. Engineers love to make changes and see metrics go up. But if improving one component makes negligible difference to the customer experience, then you're optimising the wrong thing.

**Inversion**: Focus on measuring what matters most to your customers:
- If your product has an LLM pipeline with many steps, optimise for end-to-end performance
- Capture user feedback in the product, either by asking them (e.g. thumbs up or thumbs down?) or indirectly by monitoring their interaction
- Once you have visibility on end-to-end performance, then you can identify the components you need to improve and eval them


## Focussing on quantity of eval example data over quality
Eval metrics are commonly used to make key product decisions such as choosing between one implementation and another. Given the potential scale of this impact, you want to be able to trust your eval scores. It can be tempting to sacrifice quality for quantity but this can lead to metrics that over time you may not trust.

**Inversion:** Focus on making high-quality eval data:
- Give your data annotators time and space to think about space to create high quality data and reward them for quality rather than quantity
- If operating in a specialised industry, empower domain experts from that industry to generate ground truth eval data
- Prioritise production data over synthetic data for your evals so that eval scores will be more representative of future performance


## Outsourcing data labeling and annotation
It can be tempting to view data annotation as a menial, low-cognitive-load process and therefore seek to outsource it. However, when initially generating annotations, there is much more to it than just assigning performance metrics and failure modes to AI outputs. You're also developing and iterating on the very system of classifying AI outputs and to do this well you need in-house context.

**Inversion**: Empower in-house experts to annotate data
- Have a single responsible individual internally who manages the labelling process
- Start out with all your data annotators being in-house and with full context on the application
- Consider building a data labelling interface which empowers reviewers to review and label data more easily


## Defining your failure modes once, then using them forever
You need a mechanism for categorising how the AI can go wrong so that you can understand performance and know where to focus efforts for improvement. However, these 'failure modes' shouldn't be static, as many components of an LLM product are dynamic: changes in prompts and models can uncover new failure modes plus user intents and data input distributions can change.

**Inversion:** Continually monitor and update your failure modes
- Initially do a few iterations to develop your first failure mode ontology
- Then periodically review your failure modes and whether you need to merge, split or clarify different modes
- Analyse inter-reviewer agreement on failure modes to ensure the descriptions are clear enough


## Further Reading
Thank you to Jason Liu and Eugene Yan's ["10 ways to be data illiterate"](https://jxnl.co/writing/2024/06/02/10-ways-to-be-data-illiterate-and-how-to-avoid-them/) for the inspiration on format.

Some other great articles on evals:
- [A Field Guide to Rapidly Improving AI Products by Hamel](https://hamel.dev/blog/posts/field-guide/)
- [Task-Specific LLM Evals that Do & Don't Work by Eugene Yan](https://eugeneyan.com/writing/evals/)

