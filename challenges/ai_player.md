---
layout: default
title: Automated Alien Invasion Player
parent: Challenges
nav_order: 40
---

# Challenges - Automated Alien Invasion Player
{: .no_toc }

In this investigation, you'll start out by writing a program that takes control of the Alien Invasion game, and then implements successively more effective strategies to reach a high score in the game.

The automated player is a lot more interesting to watch if your game has sound effects. You can see [how to add sounds to your game here](../../beyond_pcc/ai_player/), if you'd like to do that before trying these challenges. Also, this can be a fairly complex challenge to get started on, so there's [a guide](../../beyond_pcc/ai_player/) that can help you if you're not sure how to approach the overall challenge.

I've had a lot of fun writing my own game mods related to this challenge, so if you make something interesting please [share it](../../contact/)!

*Note: If you aren't familiar with Git or a comparable version control system, you might want to work through Appendix D before trying these challenges. In a larger project like this, it's really nice to be able to experiment with your code, and then go back to a known working state of your project when things stop working.*

---

* 
{:toc}

---

### AI Player 1: Automated Player

Write a program called *ai_player.py* that creates an instance of the `AlienInvasion` class. Your program should make the ship fire whenever possible. You should be able to run *ai_player.py*, sit back, and watch your player shoot down aliens. It won't be a great strategy because it will only clear the middle columns, but it will play automatically.

You can solve this challenge without making any changes to the code that was already written for the Alien Invasion project. All of the code necessary to automate the game can be written in a single *ai_player.py* file.

### AI Player 2: Sweeping Strategy

Now that you've automated firing, try to automate the ship's movement. Make the ship move all the way to the right until it hits the edge of the screen. Then make it turn around and sweep left across the entire screen. Continue this pattern until the game ends. The ship should fire continuously whenever possible throughout the entire game.

### AI Player 3: Randomized Shooting

Sometimes it's helpful to add a little randomness to the ship's firing pattern. See if you can use the [random module](../../beyond_pcc/random_functions/) to make the ship's firing more spaced out. That is, write code so that when a bullet can be fired, the ship will only fire 50% of the time, or 20% of the time. You can see if your code is having the desired effect by setting a really low value such as 1%; you shouldn't see many bullets fired at all with this setting.

### AI Player 4: Targeting Specific Aliens

Now that you've taken control of firing bullets and moving the ship, see if you can pick out a specific alien and target that alien. When that alien is destroyed, your automated player should select a new target alien and focus on that alien until it is destroyed, continuing this pattern until the entire fleet is destroyed.

### AI Player 5: Sweeping and Targeting

Now you have several strategies that you can combine. Write code so that your automated player sweeps right and left until half or more of the fleet is destroyed, and then starts targeting specific aliens.

### AI Player 6: Optimized Strategies

What's the highest score you can achieve? Refine these strategies and develop your own strategies to make the highest scoring automated player you can.

### AI Player 7: Scoring Accuracy

This challenge involves modifying the original Alien Invasion project, and then going back to your *ai_player.py* file. Expand on the game's statistics code by tracking hits and misses, and reporting the player's accuracy. You can show the accuracy throughout the game, or show the hit/miss ratio at the end of the game. You could also pause between levels, and report the accuracy whenever a level has been completed - you might even want to report an accuracy score for that level, and a separate accuracy score for the overall game.

With your accuracy scoring code in place, see if you can refine your automated player so it achieves a high overall score, and a high accuracy score.

[top](#top)