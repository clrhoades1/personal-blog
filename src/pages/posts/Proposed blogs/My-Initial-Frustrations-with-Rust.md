---
title: My Initial Frustrations with Rust
author: Connor Rhoades
description: "Part of the series of learning Rust, I discuss the initial challenges I had with the language"
pubDate: 02/01/2026
tags: ["Rust", "reading", "learning", "continual education", "low-level", "challenging"]
layout: '../../../layouts/Blog Post.astro'
---

In my quest to learn the Rust programming language, I decided to start by attempt a [fairly simple to-do application](https://github.com/clrhoades1/rust-todo). That program would allow the user to create a list and store items into the list, while being able to mark-off and delete the various items in it as needed. It would also use SQLite to store said items and lists. It's not exactly a project I would give to someone with no programming experience, but it seems to be the right amount of simple + challenging given this was using a new language. 

And I will say, now that it's done, it was a good choice. The challenge of understanding Rust was more confronting that I expected. Though, I will say, my frustrations are not because I feel the language is "wrong" or "difficult". It's just that it's a bit of a transition from the languages I have been using professionally for years. 

## Scoping 
These concepts are part of every language, but the degree of Rust's strictness on those topics was unexpected to me. For example: I want to be able to pass some variable to a function. It's not like Python where I just pass the variable, I need to consider to I want to pass by reference or do I want to pass a copy of the value and **I must deliberately make that decision.** 

## Ownership

Additionally, how strict Rust is with ownership was a surprise. I found myself trying to use variables that had their values lost because Rust had considered the ownership changed. 

## Error Handling

