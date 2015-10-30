---
title: Sources of Irreversibility
footer: Posted originally at [Tumblr](http://tech.moveinblue.com/post/24911331225/sources-of-irreversibility) on 2012-06-11.
---

![Photo credit: [U.S. Navy.](https://commons.wikimedia.org/wiki/File:US_Navy_030415-N-0000X-002_An_F-A-18_Hornet_from_the.jpg)](pics/sources-of-irreversibility.jpg "An F/A-18 Hornet")

We have created our nice, reversible processes; we [develop](reversible-engineering-part-1.html), [deploy](reversible-engineering-part-2.html) and even [manage](reversible-engineering-part-3.html) everything using reversible engineering. But now we are confronted with the real world and irreversibilities start to emerge. What can we do about it?

## Turbulences Ahead

Remember: irreversibilities are inefficiencies in our processes. Just as a reversible process is like a smooth flow, irreversibilities are equivalent to turbulences: energy is lost making the air (or water, or marmalade) move around in circles, instead of just “closing” behind the obstacle. (Not surprisingly, [laminar flow is fully reversible](http://www.youtube.com/watch?v=p08_KlTKP50).)

Turbulences cause energy loss, but crucially they also add complexity to the description of a phenomenon and cause instabilities. We are aiming for a steady state near reversibility, which according to the Second Law of Thermodynamics should minimize entropy.

Turbulences happen inevitably when you go too fast. Try moving a stick through water without making ripples; it is almost impossible with any appreciable speed. We can avoid ripples in honey because it is much denser, but then we cannot move very fast either. Yes, we have to live with turbulent flows in many situations: from airplane aerodynamics to just opening the tap. We just have to find ways to cope with the resulting turbulence.

So, what can we do? Dolphins have found a natural solution: [dolphin skin](http://www.theregister.co.uk/2004/05/18/dolphin_skin/) has [small ridges](http://www.ehow.com/about_4596092_does-dolphin-skin-feel-like.html) that smooth out any turbulences while they swim. A more prosaic piece of advice is to help other teams outside engineering to break down their big changes into digestible pieces, which can be implemented gradually; perhaps even deployed into production one piece at a time. There is no law that requires making big changes in one fell swoop.

Turbulences may be inevitable, but we can find ways of deflecting them and avoiding their worst effects: destabilizing our course.

## Big Impressions

Marketing people want their product to make a big splash. And what are splashes but huge, unabashed turbulences? They want to make irreversible impressions. We could go on with the metaphors, but you get the picture. Marketing is by its very nature irreversible: campaigns, ads, impressions and even sales are always irreversible in nature.

In fact marketing is the part of the company most likely to create irreversible tensions. Are we going fast enough? Can we have this by Friday? Can we announce this feature yet? If no, why not?

To withstand marketing pressures, there is what Joel Spolsky calls the [development abstraction layer](http://www.joelonsoftware.com/articles/DevelopmentAbstraction.html): create a layer that holds the pressure from marketing and translates it into useful engineering moment. Let marketing send out their press releases when they see fit, while engineers move along the feature request list. As long as progress is constant and visible marketing will probably be happy. The lesson here might be to [make progress visible](http://www.joelonsoftware.com/articles/fog0000000356.html) (which is good advice anyway).

## Releases

A related problem is having to release a version at a given point. Not deploy or make available; just do a classic release. Web applications have mostly removed the urge to release, but still there are announcements and public feature launches: things that can give a lot of visibility to a website.

Whenever a version introduces a change we have to be on the lookout for incompatibilities, and reduce these to a minimum. If we have published an API and we change how it behaves then its users may suffer, even when we correct bugs or other types of problems: then it is their turn to complain that they did not want to release.

But it gets worse: with third-party software a migration from one version to the next can turn into a logistic nightmare. Here we are not the releasers but the “releasees”: we would probably continue using an old version but some external force is making us upgrade, perhaps an end-of-life or the promise of a new feature.

To maintain backwards compatibility there are several strategies. The first one is to never migrate, ever: keep your software the same and use the same operating system and libraries. This is what we do most of the time and it is not really useful as a solution. A better piece of advice is to keep backwards compatibility in our products and look for it in third parties. With time we may phase out older features and APIs until nobody misses them.

## Sloppiness

But the most insidious source of irreversibility is just incompetence. It takes good engineering to make a steam engine or a combustion engine, and it is not trivial either to create a reversible process for development.

Don’t fool yourself into thinking that employees alone can do something about it. Processes have to be designed from the bottom up to be reversible, and only management can do something about it.

Everyone has to accept a certain slowdown now to keep trawling at cruise speed for a long time. And there will be an initial slowdown: creating a solid infrastructure takes time. Management may decide to just move ahead at top speed, all the time. Not a good idea: even if reversible metaphors don’t sink in, just make them think about sprints and long-distance runs.

## Balancing Act

Now that we have identified these sources of irreversibility it’s time to do something about them. While it is important not to lose sight of the fact that we are in the real world where entropy always grows and truly reversible processes do not exist, it is also good to keep in mind that we can approximate reversibility as much as we want. In essence we can slow down our processes, we can deflect turbulences, or we can shift the extra entropy somewhere else. Just don’t dump it onto unsuspecting people; try to work with them and let them know why you like to do things a certain way.

Remember: the world is by its very nature irreversible. It is your job to create the illusion of reversibility.
