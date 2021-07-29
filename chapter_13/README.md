# Aliens!

In this chapter we’ll add aliens to Alien Invasion. First, we’ll add one
alien near the top of the screen, and then we’ll generate a whole fleet
of aliens. We’ll make the fleet advance sideways and down, and we’ll get
rid of any aliens hit by a bullet. Finally, we’ll limit the number of
ships a player has and end the game when the player runs out of ships.




<span id="page_276"></span>
## TRY IT YOURSELF #1

<span id="ch13exe1"></span>**13-1. Stars:** Find an image of a star.
Make a grid of stars appear on the screen.

<span id="ch13exe2"></span>**13-2. Better Stars:** You can make a more
realistic star pattern by introducing randomness when you place each
star. Recall that you can get a random number like this:

``` python
from random import randint
random_number = randint(-10,10)
```

This code returns a random integer between -10 and 10. Using your code
in [Exercise 13-1](../chapter_13/README.md#ch13exe1), adjust each star&rsquo;s position by a
random amount.

## TRY IT YOURSELF #2

<span id="ch13exe3"></span>**13-3. Raindrops:** Find an image of a
raindrop and create a grid of raindrops. Make the raindrops fall toward
the bottom of the screen until they disappear.

<span id="ch13exe4"></span>**13-4. Steady Rain:** Modify your code in
[Exercise 13-3](../chapter_13/README.md#ch13exe3) so that when a row of raindrops
disappears off the bottom of the screen, a new row appears at the top of
the screen and begins to fall.

## TRY IT YOURSELF #3

<span id="ch13exe5"></span>**13-5. Catch:** Create a game that places a
character that you can move left and right at the bottom of the screen.
Make a ball appear at a random position at the top of the screen and
fall down the screen at a steady rate. If your character &ldquo;catches&rdquo; the
ball by colliding with it, make the ball disappear. Make a new ball each
time your character catches the ball or whenever the ball disappears off
the bottom of the screen.



<span id="page_290"></span>
## TRY IT YOURSELF #4

<span id="ch13exe6"></span>**13-6. Game Over:** Using your code from
[Exercise 13-5](../chapter_13/README.md#ch13exe5) ([page 284](../chapter_13/README.md#page_284)),
keep track of the number of times the player misses the ball. When
they&rsquo;ve missed the ball three times, end the game.

