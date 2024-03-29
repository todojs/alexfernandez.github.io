---
title: 'Reversible Engineering, Part 1: Software Development'
footer: Posted originally at [Tumblr](http://tech.moveinblue.com/post/22751270662/reversible-engineering-part-1-software) on 2012-05-09.
---

![Photo credit: [Stephen Heron.](http://www.flickr.com/photos/sbh/6925011571/in/photostream)](pics/reversible-engineering-part-1.jpg "Sluice gate gear")

In this post we will explore how making all your engineering processes reversible (or as close as possible) is a guarantee that you will be able to keep them nice and controlled.

## What Is Entropy?

Bear with us; we will ge to the practical consequences in a minute. But first let us explore a theoretical question which is a favorite of popular science.

I have recently stumbled upon a great article by the Hammock Physicist: [What Is Entropy?](http://www.science20.com/hammock_physicist/what_entropy-89730). It is full of the usual questions about what entropy means: with its usual clarity of mind Johannes quickly disregards the tired ramblings about “disorder” and “randomness” and goes straight to talk about degrees of freedom and bits of information. We will try to apply his point of view to engineering processes below.

But there is another, far more practical definition of entropy: it is minimised when a process is nearly reversible. That is it! Of course, no physical process in the real world is exactly reversible: energy is lost as heat, materials degrade in varying degrees, and we all age a bit in the process. That is what the Second Law of Thermodynamics means: it is impossible to revert any physical process exactly. But we can stay close.

The corollary is: if we don’t stray too far into irreversibility, we can maintain a reasonable level of entropy. If our process is highly irreversible then it will be far more entropic.

## Reversible Information Processes

That is good enough for the physical world, but what about our highly virtual processes? We are not dealing with messy atoms or generating heat: we are just pushing bits. How can we be creating entropy?

As it turns out, the Second Law applies everywhere: a reversible process does not generate entropy no matter what it deals with. In order to minimize entropy you just have to make your whole process reversible. That’s it.

It doesn’t matter if we are developing software, deploying it or even managing a company; as we will see below there are specific applications of reversible engineering to all these fields.

## Fighting Complexity

Let us take a step back and ask: why should we want to reduce entropy? It is a simple question, and yet it is not trivial to answer without invoking the mythical “disorder”. As Johannes explains wonderfully, the entropy of a system is proportional to the number of possible states it can be found in, and there is a direct relationship to the degrees of freedom of the system. But the entropy can also be explained as the number of bits required to fully describe the system. So our aim is to minimize this description. It makes sense: the lower the bit count, the easier will be for us to memorize the system and therefore to make changes with the confidence brought by complete knowledge of every detail. On the other hand, a highly entropic system will grow more complex in time, to the point where not a single person will be able to keep all the details in their head.

Reversibility is just another way to fight complexity, and as we will see it can be a mighty aid.

## Reversible Development

Software development is a most interesting process. You, kind reader, probably have a good grasp of how software is developed, and may even be involved with an organization devoted to this ungrateful task. But perhaps you have never worried about whether your development process is reversible.

The first step is to ask if there is a defined process. Can it be safely repeated, or is every project a collection of heroic efforts which will never be replicated by other humans? Needless to say, heroic efforts are quite irreversible; while a repeatable process is a necessary step to reversibility and therefore to low entropy.

Development is usually done in cycles: write-compile-link-run, write-test-debug, write-integrate-deploy, and so on. It stands to reason that shorter cycles are easier to replicate, since the ending point is closer to the beginning; and therefore more reversible. The tendency nowadays is to shorten those cycles as much as possible, so that a team can make tens or even hundreds of deployments per day. From the reversibility point of view this is a great improvement, since each individual deployment is much easier to revert; it is not strange that a faster process reduces complexity instead of increasing it.

Tools can also help. A random developer probably uses a wide toolset in development, and the most important (and basic) tool is the version control system. It stores all the products of development, and in a sense it works basically as a time machine: with relative ease it can be asked to produce the state of the code at any point in the past. How easy it actually is varies a lot with the particular tools: sometimes the user is expected to tag every interesting version with a significant label, so it is easy to go back to version 3.4.2 — but not to 10 days ago or to last Saturday at 11:35 in the morning. In contrast, a good tool will have no difficulties retracing all development steps and getting any repository to an exact point in time.

## Reversible Techniques

Finally, there are a few programming techniques which aid in making software development reversible. A great way to develop a feature is to start deploying it as soon as possible, out of sight of ordinary users; testers will use a special entry URL to start testing it in a production environment . This is sometimes called “dark deployment”. When everything is tested and accepted then the feature is turned on for the general public with a single runtime switch. Notice how each step is reversible in itself, at least from the point of view of ordinary users: the feature is not shown while it is being created, and the final switch that makes it available can be reverted easily and painlessly. The final result is of course irreversible once users see the new feature and grow used to it, but the process is made of small reversible steps.

Another technique related to reversibility, parallel deployment, can be used when a replacement is being developed for a system already in production. Instead of developing and replacing small bits at a time, it is often more productive to first develop the whole replacement and deploy it alongside the original system. Then the new product can start servicing users in the shadow, while at the same time the old one is the one really doing the visible work. The output of both systems is compared, and the new incumbent can be refined iteratively. Only when the new product produces exactly the same output as the old one can it start really servicing users; and this decision can be quickly reverted should any new problem arise. Eventually the old system will be decommissioned, at which point reversibility is lost; but the replacement job will mostly be done at that point.

## To Be Continued

In future posts we will explore how reversible engineering can be applied to the [complex field of operations](reversible-engineering-part-2.html), and even to [management](reversible-engineering-part-3.html). Stay tuned!

