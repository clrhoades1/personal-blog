---
title: 'On Politics'
pubDate: 1-20-2025
description: 'Navigating the hidden power and importance of inneroffice politiking'
author: 'Connor Rhoades'
image:
    url: 'https://docs.astro.build/assets/rose.webp'
    alt: 'The Astro logo on a dark background with a pink glow.'
tags: ["politics", "blogging", "learning in public", "inner office communications"]
---
# On Politics

Published on: 1-20-2025

For those of you lucky viewers who have seen *The Wire*, you are well aware of the politics and bureaucracy that enable industries and governments to function. But for most new software developers, I imagine you have no idea just how important this subversive standards are to every day life as a working software developer. Sure, if you are building your own project or in a small start-up, there may not be much politics to navigate. For those of you in any type of medium to large company, you know that it is just as important as the coding work itself. 

There is no presentation given to new hires on navigating your companies inner workings and unspoken customs, it's largely a trial and error effort. It's one that I am still navigating, but here are a few of the lessons I have learned from trying to navigate the politics.

## Know Who You Report To and When
Obviously, before you come into a company, you are told who your hiring manager is. You probably even communicated with them before you started. But I make this point because you will report to more people than *just* your hiring manager. Likely, there will be additional staff to consider: your "mentor", your team lead(s), your director. When you get hired to a new position, take time early to figure out the various components of your team and try to understand their roles. Here are a few examples to consider:

* Is there a "mentor" or more experienced developer who is assigned to help you get acclimated? What is the scope of their assignment? 
* What lead(s) are on your team? What are their particular assignments: do they split up responsibilities based on types of work? 
* Who is your skip-level manager or director? 
* Who are you expected to contact first if you cannot log in for the day?
* Who are your first and second calls if you notice that one of your services goes down?
* Do you have the phone numbers for these various contacts?


## Do Not Go Past the Chain of Command
The quickest way to anger your supervisor is by going over their head. **You want to avoid doing this as all costs.** There may be times you think you have communicated to your supervisor and they just won't listen, so you are tempted to jump a level up. I promise you that if you feel this way, you will be better served by reflecting on the conversation, consulting a blog or book on communication, and trying again. Going over your immediate supervisor will feel like a stab in the back to your supervisor, you need to make sure you understand the ramifications of that decision before you do so.

And honestly, if you are in a situation where you feel you *have* to go over their heads, there are probably other organizational issues at play. You may consider this a sign that you should leave the team or even organization. 


## Keep Your Immediate Supervisor Updated
Obviously you do not need to tell your supervisor every time you commit code. But consider that your supervisors are the ones who will get contacted when something is wrong. They effectively protect you from a lot of the external politicking, but this relationship should not be one-way. 

Here is an example: let's say you are working an oncall rotation. You are notified of an issue with an external web service dependency: performance of the service is degraded and it is being researched. At this time, there is no obvious issue with your application. 

Should the team lead be notified? 

Yes. 

**Knowledge is power.** Sometimes we get caught off-guard, it's just a fact of life. But anytime we can prevent that from happening is worth pursuing. If you do not tell them and they get a call from their supervisor saying *"Why are customers complaining that our application is timing out?"* All they can say is *"I do not know."* Now, that's the truth, but it looks much better for them to immediately say *"There is a known service degradation issue for one of our dependencies, X. We do not have an update from their team yet but our oncall is continuing to monitor."*

They will be very appreciative if they can say the second option in front of their supervisor. 


Of course, supervisors will have a preference for how communication with them should be done and when. It's worth ironing out their preferences, if you can, before you have to use them. Maybe they do not feel that they should be notified about something like the above and that they should only be notified when an issue with your application is noticed. Just ask them whenever they have a moment, they will appreciate that. 
