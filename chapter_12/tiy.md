---
layout: default
title: A Ship That Fires Bullets
nav_exclude: true
parent: Home
has_children: true
---

Let’s build a game!

<iframe title="'gg good game galaga' by Matthew Henry @MatthewHenryDesign" alt="Good Game 3D animation in the style of Space Invaders" src="https://giphy.com/embed/RtpmUzMbynBeCgEa5E" frameBorder="0" class="giphy-embed"></iframe>

We’ll use Pygame, a collection of fun, powerful
Python modules that manage graphics, animation, and even sound, making
it easier for you to build sophisticated games. With Pygame handling
tasks like drawing images to the screen, you can skip much of the
tedious, difficult coding and focus on the higher-level logic of game
dynamics.

Resources for spaceship and enemy ship images can be found in [images](./images/index.md).

## TRY IT YOURSELF #1

<span id="ch12exe1"></span>**12-1. Blue Sky:** Make a Pygame window with
a blue background.

<span id="ch12exe2"></span>**12-2. Game Character:** Find a bitmap image
of a game character you like or convert an image to a bitmap. Make a
class that draws the character at the center of the screen and match the
background color of the image to the background color of the screen, or
vice versa.

## TRY IT YOURSELF #2

<span id="ch12exe3"></span>**12-3. Rocket:** Make a game that begins
with a rocket in the center of the screen. Allow the player to move the
rocket up, down, left, or right using the four arrow keys. Make sure the
rocket never moves beyond any edge of the screen.

<span id="ch12exe4"></span>**12-4. Keys:** Make a Pygame file that
creates an empty screen. In the event loop, print the `event.key`
attribute whenever a `pygame.KEYDOWN` event is detected. Run the program
and press various keys to see how Pygame responds.


[top](#top)

## TRY IT YOURSELF #3

<span id="ch12exe5"></span>**12-5. Sideways Shooter:** Write a game that
places a ship on the left side of the screen and allows the player to
move the ship up and down. Make the ship fire a bullet that travels
right across the screen when the player presses the spacebar. Make sure
bullets are deleted once they disappear off the screen.

[top](#top)

