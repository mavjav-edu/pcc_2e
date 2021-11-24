---
layout: default
title:  Working With Lists
nav_exclude: true
parent: Home
---
In [Chapter 3](../chapter_03/tiy.md) you learned how to make a simple list,
and you learned to work with the individual elements in a list. In this
chapter you’ll learn how to *loop* through an entire list using just a
few lines of code regardless of how long the list is. Looping allows you
to take the same action, or set of actions, with every item in a list.
As a result, you’ll be able to work efficiently with lists of any
length, including those with thousands or even millions of items.

# Working With Lists

## TRY IT YOURSELF #1

<span id="ch4exe1"></span>**4-1. Pizzas:** Think of at least three kinds
of your favorite pizza. Store these pizza names in a list, and then use
a `for` loop to print the name of each pizza.

- Modify your `for` loop to print a sentence using the name of the pizza
instead of printing just the name of the pizza. For each pizza you
should have one line of output containing a simple statement like *I
like pepperoni pizza*.

- Add a line at the end of your program, outside the `for` loop, that
states how much you like pizza. The output should consist of three or
more lines about the kinds of pizza you like and then an additional
sentence, such as *I really love pizza!*

<span id="ch4exe2"></span>**4-2. Animals:** Think of at least three
different animals that have a common characteristic. Store the names of
these animals in a list, and then use a `for` loop to print out the name
of each animal.

- Modify your program to print a statement about each animal, such as *A
dog would make a great pet.*

- Add a line at the end of your program stating what these animals have
in common. You could print a sentence such as *Any of these animals
would make a great pet!*

## TRY IT YOURSELF #2

<span id="ch4exe3"></span>**4-3. Counting to Twenty:** Use a `for` loop
to print the numbers from 1 to 20, inclusive.

<span id="ch4exe4"></span>**4-4. One Million:** Make a list of the
numbers from one to one million, and then use a `for` loop to print the
numbers. (If the output is taking too long, stop it by pressing <span
class="small">CTRL</span>-C or by closing the output window.)

<span id="ch4exe5"></span>**4-5. Summing a Million:** Make a list of the
numbers from one to one million, and then use `min()` and `max()` to
make sure your list actually starts at one and ends at one million.
Also, use the `sum()` function to see how quickly Python can add a
million numbers.

<span id="ch4exe6"></span>**4-6. Odd Numbers:** Use the third argument
of the `range()` function to make a list of the odd numbers from 1 to
20. Use a `for` loop to print each number.

<span id="ch4exe7"></span>**4-7. Threes:** Make a list of the multiples
of 3 from 3 to 30. Use a `for` loop to print the numbers in your list.

<span id="ch4exe8"></span>**4-8. Cubes:** A number raised to the third
power is called a *cube*. For example, the cube of 2 is written as
`2**3` in Python. Make a list of the first 10 cubes (that is, the cube
of each integer from 1 through 10), and use a `for` loop to print out
the value of each cube.

<span id="ch4exe9"></span>**4-9. Cube Comprehension:** Use a list
comprehension to generate a list of the first 10 cubes.

## TRY IT YOURSELF #3

<span id="ch4exe10"></span>**4-10. Slices:** Using one of the programs
you wrote in this chapter, add several lines to the end of the program
that do the following:

- Print the message, *The first three items in the list are:*. Then use
a slice to print the first three items from that program&rsquo;s list.

- Print the message, *Three items from the middle of the list are:*. Use
a slice to print three items from the middle of the list.

- Print the message, *The last three items in the list are:*. Use a
slice to print the last three items in the list.

<span id="ch4exe11"></span>**4-11. My Pizzas, Your Pizzas:** Start with
your program from [Exercise 4-1](#ch4exe1) ([page
60](#ch4exe1)). Make a copy of the list of pizzas, and call it
`friend_pizzas`. Then, do the following:

- Add a new pizza to the original list.

- Add a different pizza to the list `friend_pizzas`.

- Prove that you have two separate lists. Print the message, *My
favorite pizzas are:*, and then use a `for` loop to print the first
list. Print the message, *My friend&rsquo;s favorite pizzas are:*, and then
use a `for` loop to print the second list. Make sure each new pizza is
stored in the appropriate list.

<span id="ch4exe12"></span>**4-12. More Loops:** All versions of
*foods.py* in this section have avoided using `for` loops when printing
to save space. Choose a version of *foods.py*, and write two `for` loops
to print each list of foods.

## TRY IT YOURSELF #4

<span id="ch4exe13"></span>**4-13. Buffet:** A buffet-style restaurant
offers only five basic foods. Think of five simple foods, and store them
in a tuple.

- Use a `for` loop to print each food the restaurant offers.

- Try to modify one of the items, and make sure that Python rejects the
change.

- The restaurant changes its menu, replacing two of the items with
different foods. Add a block of code that rewrites the tuple, and then
use a `for` loop to print each of the items on the revised menu.



<span id="page_74"></span>
## TRY IT YOURSELF #5

<span id="ch4exe14"></span>**4-14. PEP 8:** Look through the original
PEP 8 style guide at *<https://python.org/dev/peps/pep-0008/>*. You
won&rsquo;t use much of it now, but it might be interesting to skim through
it.

<span id="ch4exe15"></span>**4-15. Code Review:** Choose three of the
programs you&rsquo;ve written in this chapter and modify each one to comply
with PEP 8:

- Use four spaces for each indentation level. Set your text editor to
insert four spaces every time you press <span class="small">TAB</span>,
if you haven&rsquo;t already done so (see [Appendix B](../appendix_b/index.md) for
instructions on how to do this).

- Use less than 80 characters on each line, and set your editor to show
a vertical guideline at the 80th character position.

- Don&rsquo;t use blank lines excessively in your program files.

