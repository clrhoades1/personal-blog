---
title: My Experience with NixOS - Part 1
author: Connor Rhoades
description: "The beginning of my journey on using NixOS"
pubDate: 05/04/2025
tags: ["astro", "learning in public", "NixOS"]
layout: '../../layouts/Blog Post.astro'
---

# Beginning my time with NixOS

I'll be honest, I wanted something to do on a Saturday afternoon and stumbled upon a YouTube video of someone building a personal development computer using NixOS. That was the only spark I needed to want to dual boot my laptop with Windows 11 and NixOS. I have always liked the *idea* of using Linux to do software development, though nowadays I find that it's really not needed. If anything, I'd rather spin up a Docker container for any virtualized environment and operating that on the OS I know best, Windows. 

That being said, why not take a ride on the wild side again? The last time I attempted a dual-boot setup, I bricked the computer. But now, 10 years later, 5 years of professional experience and a degree later, I was 50% sure I could do it properly this time! And I figured having a strictly "work" OS on my laptop may help me avoid distraction when I want to do dedicated work. 

And thus, I went down the rabbit hole. 

## Why NixOS?
Because I saw it on a YouTube video

## ..Really?
Yes! And truthfully, I didn't really dig into it much further than that before I installed it. From my perspective, it's not like a marriage: I was free to switch it out whenever I wanted to. Plus it was Linux based, so it's not like I would be on completely unfamiliar territory. 

That being said, I did do some additional research, it seems to be well regarded. But it's wild card is that it's built around the Nix package manager, which has a unique approach to how it manages system configurations and software. Everything is stored in a declarative configuration file, making my exact setup easily repproducible. As far as I can tell, there is really nothing quite like it. 

So I know it will be a fairly unique experience and it will take some time to figure it all out, but I was down for a challenge. And since I was ready, it was time to start with the dual booting install!

## Installation
Unlike my first bite at the apple, I did get this distribution install. But it ended up being a little more complicated than I had hoped. To do the install, I followed a blog by Drake Rossman, [here](https://drakerossman.com/blog/how-to-dualboot-windows-and-nixos). While I did have some complications that resulted in me having to re-install NixOS 3 times, I don't believe the article was at fault and I found it to be excellent! 

### The First Time
When I performed the installation the first time, everything went well except that when I attempted to boot the machine after modifying the boot partition. The machine would not boot. Oh boy.. 

I booted back up from the installer, I was able to navigate to the ```/mnt/actual-backup``` folder and noticed that the necessary files were under a backup subdirectory in that folder. I moved the files up one level, rebooted, and everything worked! I stil had my Windows install and I could dual boot just fine. Everything was great...for a moment

### The Second Time 
After it was properly booted, I attempted to install hyprland! Why? It was in that cool looking YouTube video. No, really, that's it. What instructions did I follow to make that happen? None, I just tried it out. AAAnd I bricked my ```configurations.nix``` file..maybe, honestly I may have just been impatient. Ok...so I can figure that out later. So I'll just stick with the Enlightenment GUI I picked, right? Well, I tried it for 10 minutes and I hated it. I did some research to check out how to change the GUI, but honestly, I figured I might as well just reinstall using a GUI I liked. 

### Third Time is the Charm
I installed NixOS with a GUI I preferred (which one? No clue). So far, so good! I went ahead and installed Git and pulled in my personal-blog site so I could do some testing. I got everything all set up, then rebooted the computer and noticed that Git was gone!

At this point, now I get to contend with the unique part of NixOS: system configurations and installations

## Configuration
NixOS is built around the Nix package manager, so I have to use their perscribed methods to install software. There is no .deb packages for me to use here, my options (from my understanding at the time) were: ```nix-env``` and the ```/etc/nixos/configurations.nix``` file. 

Now, you could subvert the nix options if you wanted to, but I quickly found that issues will be encountered. For example, I installed git outsite of those two options, and I got it working! I could pull down my repos, push changes, the works. But after one system reboot- git was gone. Additionally, I later install VS Code using a proper methodology, ```nix-env```. VS Code was working well enough, but I then installed some extensions through the VS Code interface. Nope. One reboot later and the extensions were gone

In some ways, Nix reminds me a lot of Docker. Any software I add to a running container is lost if I rebuild the container, though fortunately you won't just lose all of your files stored on your machine. It's important to understand how the Nix system works so that you don't lose hours of (configuration) work. 

I ended up getting a couple of applications installed and set up the ssh-agent to start up on boot. It did take a minute to get a base understanding of how Nix handles installations, but it was pretty simple after that! Using ```nix-env```, I installed nodejs, git, docker, and VS Code. Though, my attempt to use ```nix-env``` to install VS Code required me to create ```~/.config/nixpkgs/config.nix``` (which was **not** specified in the instructions) and add ```{ allowUnfree = true; }``` to the file (which was in the instructions). 

And for the ssh-agent, I just added ```programs.ssh.startAgent = true;``` to the configuration.nix file and I was set! Well, I did have to ```ssh-add``` my key but once I ran the command, it worked upon reboot (no special nix commands required)!

## What Is Next
With all of my configurations above, I was completely set up to start doing some development! I am pretty happy with how the machine is working. But...I think I still want hyprland :) So, my next steps is to read up a bit more on hyprland and see what else I can learn about configuring these GUIs, hopefully without bricking my machine! And I also want to start backing up my configuration files, just to be safe