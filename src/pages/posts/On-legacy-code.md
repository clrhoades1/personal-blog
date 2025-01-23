---
title: On Legacy Code
author: Connor Rhoades
description: "The dark secret of the technology world is that everything relies on Legacy Code."
pubDate: 01/20/2025
tags: ["astro", "blogging", "learning in public", "successes"]
link: "../../pages/component-posts/on-legacy-code.astro"
layout: '../../layouts/Blog Post.astro'
---

# On Legacy Code

Every tutorial, blog, articles, and class will inniate you with what is new. New code, new languages, new technologies, new EVERYTHING. But there is a dark secret that none of those teachers want to say out loud: the vast majority of code you will work on will be **legacy code**. *GASP*

Of course, this is not a bad thing. The code is there for a reason: because it works. 

Most of the time. 

That code can range from being written last week from last being touched 20 years ago. You may think that that is an exaggeration, but ask anyone in a banking system or in a healthcare system. I guarantee you that you will find someone whose face loses color as they recollect some unreadable block of code that only God understands. 

Fortunately, most legacy code is not that scary. But the existance of it highlights a deficiency in current coding courses: they do not teach you how to read someone elses code. They do not tell you about how much time you will spend reading someone elses code. They do not tell you how to side step a total review and just going to the key parts of the codebase that matter to you in that moment. They do not tell you about the infuriating moment of looking at code that says the below (**WITHOUT ANY COMMENTS**) while you are busy troubleshooting the cause of a major service outage

```java 
if(!unknownFileOrigins && sourceFileName=="production.txt" || dta.service==True && k.computate>0) {
   ...
}
```

So if you are going to be joining this *wonderful* world of coding, it is worth taking some time to actually look at someone elses code. Pull up an open sourced library you always use or a cool GitHub project. Trace it through, can you understand what they are attempting to do? Or even reviewing your friends project that he is exciting about and walking through it with him. It is all valuable. 

For those of you who will need to work with it more intimately though (particularly the older, unmaintainable stuff), I recommend the book  *Working Effectively with Legacy Code*. If you need this book though, good luck spelunking. 

