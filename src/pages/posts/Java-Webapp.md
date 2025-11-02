---
title: Starting a new "Modern" Java-based Web App
author: Connor Rhoades
description: "The beginning of a work web application project utilizing the not-so latest tech"
pubDate: 11/22/2025
tags: ["astro", "reading", "learning", "java", "maven", "liberty"]
layout: '../../layouts/Blog Post.astro'
---

# Starting a new "Modern" Java-based Web App
Whenever I think about a new project or effort that needs to be worked, my mind immediately jumps to the latest technology or tool I can dive into to make it happen. It can certainly be fun to work with the shiny new thing, though I have found that it is important to stay planted in reality when it comes to applications that will eventually turn into production projects. In that context, it is important to also factor in "can the team support this application once it turns production?" If I were to build a web application with React + NodeJS while the rest of the team supports only C and Java codes, I add additional burden to the whole team when it comes time for them deal with a production page or feature request. And that doesn't even go into the build processes and security constraints of the organization. 

But at the same time, I don't think it's right to stick strictly to the status quo in terms of the tech stack. How else will there be evolution and growth, if only for yourself? Of course, if you're not the decision maker of the tech stack, it doesn't matter. 

When I was initially considering options, I reviewed some architectural articles looking for guidance. Something that struck me was the heavy emphasis on the strengths of the technology itself. Certainly it matters a great deal, but as can be seen with my list above, I don't find it important in this context. This application would be used by a small under of internal users. The load in the context of the rest of the organization would be non-existent. My thought is that maintainability trumps all in this case, but I suppose we will see how that comes to pass in the next few years. 

With that said, let's talk about the players making up this project:

## Java
Given the context of where this application runs, Java is a no-brainer. It's used absolutely everywhere and everyone has touched it, my team is no exception. There are other people who can give much more detail to the advantages of building with Java, but honestly, none of them impacted this decision. 

## Maven
Another no brainer: Maven is a tool that builds java projects and is deeply integrated within my team. Why break what isn't broken? 

I will say that, with Maven and Java projects in general, it feels like the difficult part is just getting started. Figuring out what files need to be where, how to configure pom.xml, web.xml, and server.xml files to pull everything you need, defining the correct folder structure, etc. I think people will much more experience starting these projects will disagree, but I found that to be a heavy hurdle, even after using a [Maven archetype](https://maven.apache.org/guides/introduction/introduction-to-archetypes.html). 

## Liberty
The full WebSphere is still in use for legacy applications, but as momentum as been winging towards Liberty for some time, it just felt right to start there. It is a lightweight WebSphere server that is easily scalable. What's not to love? One thing I do love is the integration with Maven, I can just start the web server from Maven for local testing purposes, AND it gets the updates in real-time. 

## JavaServer Pages (or Jakarta Server Pages) - JSP
Honestly, I went back and forth on this one quite a bit. No one on the immediate time had experience with JSPs, besides myself, and there was initially talk about using a separated out frontend component. Maybe something that runs off of Node, perhaps Astro. Ultimately, I ended up going back to JSPs because:
1. All of the communal experience with JSP and the resources we had for using it
2. We could keep the front end integrated within the some project. No extra complexity from an additional project and tech stack

One reason I really hesitated sticking with JSPs is because of how dated the technology that utilizes it tends to look. But, I realized that we could just use this technology and add in some CSS framework to help with the beautification. Especially since performance is no consideration at this time. 

## Bootstrap
This is where something new is being introduced into the team. Frontend is not something anyone on the team has extensive familiarity with. And when it comes to CSS frameworks, there is no shortage of options. It is completely overwhelming, so I ended up choosing a very popular one: Bootstrap. I had some experience with it already and I liked:
1. How responsive it is
2. The fact that there is such consistency between the elements that I don't have to worry as much about styling it
3. How relatively easy it is to use

It's a relatively "safe" new technology to introduce to the team, I believe. 

# What Was the Cost?
Something that still rings out in my head is "what is the cost of using this stack?" Will we get hit with significant performance issues? Will the team be well equipped to support it in a few years? How will it scale? I do not have an answer for any of these.

I think we are at the point that what matters is just getting started and making corrections later. And all we can do is hope the corrections are small, learn from the errors in judgement we discover later, and do better next time. 