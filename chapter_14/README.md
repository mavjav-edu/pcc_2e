# Scoring

In this chapter we’ll finish the Alien Invasion game. We’ll add a Play
button to start a game on demand or to restart a game once it ends.
We’ll also change the game so it speeds up when the player moves up a
level, and we’ll implement a scoring system. By the end of the chapter,
you’ll know enough to start writing games that increase in difficulty as
a player progresses and that show scores.

## TRY IT YOURSELF #1

<span id="ch14exe1"></span>**14-1. Press P to Play:** Because Alien
Invasion uses keyboard input to control the ship, it&rsquo;s best to start the
game with a keypress. Add code that lets the player press P to start. It
may help to move some code from `check_play_button()` to a
`start_game()` function that can be called from both
`check_play_button()` and `check_keydown_events()`.

<span id="ch14exe2"></span>**14-2. Target Practice:** Create a rectangle
at the right edge of the screen that moves up and down at a steady rate.
Then have a ship appear on the left side of the screen that the player
can move up and down while firing bullets at the moving, rectangular
target. Add a Play button that starts the game, and when the player
misses the target three times, end the game and make the Play button
reappear. Let the player restart the game with this Play button.

## TRY IT YOURSELF #2

<span id="ch14exe3"></span>**14-3. Challenging Target Practice:** Start
with your work from [Exercise 14-2](../chapter_14/README.md#ch14exe2) ([page
298](../chapter_14/README.md#page_298)). Make the target move faster as the game
progresses, and restart at the original speed when the player clicks
Play.



<span id="page_317"></span>
## TRY IT YOURSELF #3

<span id="ch14exe4"></span>**14-4. All-Time High Score:** The high score
is reset every time a player closes and restarts Alien Invasion. Fix
this by writing the high score to a file before calling `sys.exit()` and
reading the high score in when initializing its value in `GameStats`.

<span id="ch14exe5"></span>**14-5. Refactoring:** Look for functions and
methods that are doing more than one task, and refactor them to keep
your code organized and efficient. For example, move some of the code in
`check_bullet_alien_collisions()`, which starts a new level when the
fleet of aliens has been destroyed, to a function called
`start_new_level()`. Also, move the four separate method calls in the
`__init__()` method in `Scoreboard` to a method called `prep_images()`
to shorten `__init__()`. The `prep_images()` method could also help
`check_play_button()` or `start_game()` if you&rsquo;ve already refactored
`check_play_button()`.

<div class="note" markdown="1">

<span class="font1">**NOTE**</span>

*Before attempting to refactor the project, see [Appendix
D](app04.html#app04) to learn how to restore the project to a working
state if you introduce bugs while refactoring.*

</div>

<span id="ch14exe6"></span>**14-6. Expanding Alien Invasion:** Think of
a way to expand Alien Invasion. For example, you could program the
aliens to shoot bullets down at the ship or add shields for your ship to
hide behind, which can be destroyed by bullets from either side. Or use
something like the `pygame.mixer` module to add sound effects like
explosions and shooting sounds.

