---
title: "I built a personal AI coach that's better than my human one: a step-by-step setup guide"
permalink: personal-ai-coach
redirect_from: 
public_date: 2025-01-27 00:00:00
tags:
  - Projects
  - Prototypes
  - Careers
image: 
type: article
status: complete
---

Last year, I tested out building an AI performance coach to replace my human one. It's much better so I cancelled my human one altogether. It knows me better, improves itself over time, is private, non-judgemental and way cheaper.

To build it, I made a Life Context prompt, different Coach Mode prompts and a python script that updates the Life Context prompt after every conversation. I did it all in Obsidian which means everything lives on my local computer as plain text (markdown) files. And I used the Obsidian BMO Plug-In for the conversational interface, which makes it easy to switch Coach Mode prompts and between open-source and closed-source models.

Since then, I've had a conversation with it around once a week. Anywhere between 3 and 30 minutes. More often than not, it gives me tangible new perspectives or action items. I ask it about anything from defining my strategy for the next month to planning out my anniversary to responding to a professional opportunity.


> _**NOTE: The accompanying code to set this up for yourself is available [here](https://github.com/chris-lovejoy/personal-ai-coach)**_.
{: .prompt-info }


---

## Why a coach?

Last year, I found myself making a bunch of "big picture" life and business decisions. I wanted somebody to bounce ideas with: to be a sounding board for my thoughts and to suggest alternative angles. Friends can be great for this, but sometimes you want somebody whose *job* is to help with this.

So I signed up via a coaching subscription service for ~£150/month for regular calls every 1-2 weeks with a coach. Overall, it was helpful and I enjoyed it. However, there were some limitations.

I struggled to find a coach that I really *gelled* with in a deep way. Sometimes I'd want business advice but they didn’t have the right kind of experience. Other times, I wanted life advice where a business coach wouldn’t have been the right person to help. In general, the coaches I spoke to had very different life paths to mine, and that affected the quality of conversation we could have.

This problem was compounded by the fact that every time you change coach, there's a *reset* on the amount of context they have on you and your life. Each 1st session with a new coach felt repetitive - giving the same background and overview of my situation.

And sometimes I just wanted to go *faster*. If some mental sparks started flying, I might want to stop the conversation altogether and jot down some thoughts. Or I'd just want to completely change the direction. With a human conversation (even when you're paying them to be a coach), there are certain social/conversational norms you need to adhere to - and not doing so could come off as rude.

Which led me to ask myself: what if I *make* my own AI coach. I'd seen [Peter Levels](https://x.com/levelsio/status/1758505119488856297), [swyx](https://x.com/swyx/status/1765995892107317407) and [Eugene Yan](https://eugeneyan.com/writing/ai-coach/) all sharee some variant of this. I decided to create an AI performance coach with the following requirements:

- has full context on me and kept on learning -> no "reset" from switching coach
- I can easily switch to different "modes", such as big picture strategy thinking, more in-the-weeds tactical thinking, business-specific thinking
- doesn't leave my local computer -> so everything I write stays private


## Enter: my AI performance coach

I built my AI performance coach to work as follows:

![](/assets/images/article-images/AI-Performance-Coach-Diagram.png)


For the system prompt, I use a "Life Context" prompt. This is a condensed description of my life situation (job, relationships, finances), my current goals, how I want to get there, current strategies etc. To start with, I wrote a version of this out myself - and then it gets updated after every conversation using a python script which calls an LLM.

Then I made a series of "Coach Mode" prompts to determine the *type* of coach I'm talking to. These are available [here](https://github.com/chris-lovejoy/personal-ai-coach/tree/main/Coach%20Mode%20Prompts). The conversation interface I used makes it easy to toggle between these (even mid-conversation). Each time I select a *mode*, it would add that prompt to the conversation.

Everything is stored as markdown files which I can view through [Obsidian](https://obsidian.md/): the Life Context prompt, the Coach Mode prompt and the conversation itself. Local markdown files makes it easy to write scripts that interact with the content (such as updating the Life Context prompt). And the notes themselves never need to leave my computer.

Doing this through Obsidian also enables me to use plug-ins, rather than needing to make the interface with the chatbot myself. After reviewing the available LLM plug-ins (and considering building my own), the [BMO chatbot](https://github.com/longy2k/obsidian-bmo-chatbot) appeared to be the best at the time, so I went with that. It made it easy to toggle between models (open source like LLAMA as well as closed like Anthropic and OpenAI) as well as between different prompts.

Here's an example of what it can look like:

{% include embed/video.html src="assets/media/Example-AI-Coach-Usage.mp4" %}

## Set up your personal AI coach: a step-by-step guide
If you want to set this up the same way I did (Obsidian + BMO Plug-in), here are the steps to follow:

{% include embed/loom.html id="77084c5106304dd88630e09c28342bfe" %}


> NOTE: This is only one way to implement the paradigm described above. If you do it in a different way, I'd love to hear about it - you can drop a comment below 
{: .prompt-info }

#### 1. Download [Obsidian](https://obsidian.md/)
This is free software which sits on top of local markdown files. [This video](https://www.youtube.com/watch?v=QgbLb6QCK88) is a great intro to Obsidian.

#### 2. Clone my [personal AI coach GitHub repo](https://github.com/chris-lovejoy/personal-ai-coach)
You can do this by clicking 'Download ZIP':

![](/assets/images/article-images/dl-ai-coach-github.png)

Or if you have the git CLI set up, you can do it via the command line, eg:

```sh
git clone https://github.com/chris-lovejoy/personal-ai-coach.git
```

#### 3. Populate your Life Context prompt 
Edit the file 'Personal AI Coach with Life Context' in the Life Context Prompts folder.

Having a fixed structure helps the LLM to update your life context well. I used the following structure:
- my life context
	- work
	- family
	- health
	- general sentiment
- my top goals
	- long-term
	- this year
- my current operating strategy towards each goal
- current challenges I'm thinking about

There's a toy example of this in the GitHub repo [here](https://github.com/chris-lovejoy/personal-ai-coach/blob/main/Life%20Context%20Prompts/Personal%20AI%20Coach%20with%20Life%20Context.md).

You can use whatever heading structure you want, and it will automatically be handled appropriately.

#### 4. Install and configure the BMO plug-in within Obsidian

See the setup video linked above (ie. this [video](https://www.loom.com/share/77084c5106304dd88630e09c28342bfe)) for a walkthrough of the BMO plug-in setup

NOTE: this works as of Feb 2025, using version 2.3.3 of the BMO Plug-in. If things change and this doesn't work, it may be worth downloading that specific version

#### 5. (Optional) Set up local models with ollama
Download Ollama [here](https://ollama.com/) then run ollama with your selected models, eg.:
```sh
ollama run llama3.2
```

This will download the respective model and the BMO plug-in will automatically pick up on it


## Talking to your coach
Once you've done the steps above, you can chat with your coach by opening the BMO plug-in (defaults to command + 0 on mac).

Then the helpful commands are:
```sh
/profile
```
to make sure it's loading your Life Context correctly

```sh
/prompt
```
to switch between Coach Modes

```sh
/save
```
to save your conversation at the end (necessary to help the coach keep learning about you)


I'll typically start a conversation with my high level concern. Something like:

> I've been thinking a lot this week about an opportunity that came up. The opportunity is X. I'm debating what my approach to it should be, and how that fits into my strategy for the year.

## Updating your Life Context for the coach
The lowest tech option is to manually tweak your Life Context prompt from time to time.

However, the purpose of the update_life_context script is to save you needing to do so.

One option is to manually run the updating script every once in a while using:

```
python scripts/update_life_context.py
```

But you could also set up a cron job to do it automatically like this (which is what I'd recommend):

{% include embed/loom.html id="f500cdd1119b4b5eb5be83635c1f5f01" %}


## Giving the coach *more* life context

One potential improvement is increasing the bandwidth for providing more life context. With the setup described, that context is limited by the number of tokens you can fit into the system prompt for the model you're using.

An alternative would be to dynamically select the relevant life context (ie. using RAG) from a larger corpus of life context (such as previous conversations, other relevant notes). The advantage of this is that in theory it will select the life context most relevant to the specific question being asked.

I opted not to take this approach because:
1. My Obsidian vault has ~15,000 notes. Indexing and retrieving on this adds a lot of overhead. Also, a note is probably not the right level of abstraction, so I'd probably want to chunk within notes.
2. Condensing the most relevant life context into a single file is a helpful exercise in itself. That single file ends up having a high signal-to-noise ratio. It also makes it easy to inspect (and tweak if you don't feel it's a good representation).

Ultimately, I found that my set up worked pretty well, so decided not to add any more complexity.

## Closing thoughts

I was pleasantly surprised by how helpful this AI coach has ended up being (and for a tiny fraction of what I was paying a human coach). And what's more I can clearly see how, as underlying models improve and as I update and improve the prompts, this coach will just keep getting better with time.

---

*Thank you to [Caroline Morton](https://www.carolinemorton.co.uk/about/) and [Mustafa Sultan](https://www.musty.io/) for reviewing this article.*
