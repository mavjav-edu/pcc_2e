# Generating Data

*Data visualization* involves exploring data through visual
representations. It’s closely associated with *data mining*, which uses
code to explore the patterns and connections in a data set. A data set
can be just a small list of numbers that fits in one line of code or
many gigabytes of data.

## TRY IT YOURSELF #1

<span id="ch15exe1"></span>**15-1. Cubes:** A number raised to the third
power is a *cube*. Plot the first five cubic numbers, and then plot the
first 5000 cubic numbers.

<span id="ch15exe2"></span>**15-2. Colored Cubes:** Apply a colormap to
your cubes plot.



<span id="page_339"></span>
## TRY IT YOURSELF #2

<span id="ch15exe3"></span>**15-3. Molecular Motion:** Modify
*rw_visual.py* by replacing `plt.scatter()` with `plt.plot()`. To
simulate the path of a pollen grain on the surface of a drop of water,
pass in the `rw.x_values` and `rw.y_values`, and include a `linewidth`
argument. Use 5000 instead of 50,000 points.

<span id="ch15exe4"></span>**15-4. Modified Random Walks:** In the class
`RandomWalk`, `x_step` and `y_step` are generated from the same set of
conditions. The direction is chosen randomly from the list `[1, -1]` and
the distance from the list `[0, 1, 2, 3, 4]`. Modify the values in these
lists to see what happens to the overall shape of your walks. Try a
longer list of choices for the distance, such as 0 through 8, or remove
the ΓÇô1 from the *x* or *y* direction list.

<span id="ch15exe5"></span>**15-5. Refactoring:** The method
`fill_walk()` is lengthy. Create a new method called `get_step()` to
determine the direction and distance for each step, and then calculate
the step. You should end up with two calls to `get_step()` in
`fill_walk()`:

``` python
x_step = get_step()
y_step = get_step()
```

This refactoring should reduce the size of `fill_walk()` and make the
method easier to read and understand.

## TRY IT YOURSELF #3

<span id="ch15exe6"></span>**15-6. Automatic Labels:** Modify
*die_visual.py* and *dice_visual.py* by replacing the list we used to
set the value of `hist.x_labels` with a loop to generate this list
automatically. If you&rsquo;re comfortable with list comprehensions, try
replacing the other `for` loops in *die_visual.py* and *dice_visual.py*
with comprehensions as well.

<span id="ch15exe7"></span>**15-7. Two D8s:** Create a simulation
showing what happens if you roll two eight-sided dice 1000 times.
Increase the number of rolls gradually until you start to see the limits
of your system&rsquo;s capabilities.

<span id="ch15exe8"></span>**15-8. Three Dice:** If you roll three D6
dice, the smallest number you can roll is 3 and the largest number is
18. Create a visualization that shows what happens when you roll three
D6 dice.

<span id="ch15exe9"></span>**15-9. Multiplication:** When you roll two
dice, you usually add the two numbers together to get the result. Create
a visualization that shows what happens if you multiply these numbers
instead.

<span id="ch15exe10"></span>**15-10. Practicing with Both Libraries:**
Try using matplotlib to make a die-rolling visualization, and use Pygal
to make the visualization for a random walk.

