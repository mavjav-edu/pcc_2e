# User Input And While Loops

Most programs are written to solve an end user’s problem. To do so, you
usually need to get some information from the user. For a simple
example, let’s say someone wants to find out whether they’re old enough
to vote. If you write a program to answer this question, you need to
know the user’s age before you can provide an answer. The program will
need to ask the user to enter, or *input*, their age; once the program
has this input, it can compare it to the voting age to determine if the
user is old enough and then report the result.

## TRY IT YOURSELF #1

<span id="ch7exe1"></span>**7-1. Rental Car:** Write a program that asks
the user what kind of rental car they would like. Print a message about
that car, such as &ldquo;Let me see if I can find you a Subaru.&rdquo;

<span id="ch7exe2"></span>**7-2. Restaurant Seating:** Write a program
that asks the user how many people are in their dinner group. If the
answer is more than eight, print a message saying they&rsquo;ll have to wait
for a table. Otherwise, report that their table is ready.

<span id="ch7exe3"></span>**7-3. Multiples of Ten:** Ask the user for a
number, and then report whether the number is a multiple of 10 or not.

## TRY IT YOURSELF #2

<span id="ch7exe4"></span>**7-4. Pizza Toppings:** Write a loop that
prompts the user to enter a series of pizza toppings until they enter a
`'quit'` value. As they enter each topping, print a message saying
you&rsquo;ll add that topping to their pizza.

<span id="ch7exe5"></span>**7-5. Movie Tickets:** A movie theater
charges different ticket prices depending on a person&rsquo;s age. If a person
is under the age of 3, the ticket is free; if they are between 3 and 12,
the ticket is \$10; and if they are over age 12, the ticket is \$15.
Write a loop in which you ask users their age, and then tell them the
cost of their movie ticket.

<span id="page_128"></span><span id="ch7exe6"></span>**7-6. Three
Exits:** Write different versions of either [Exercise
7-4](../chapter_07/README.md#ch7exe4) or [Exercise 7-5](../chapter_07/README.md#ch7exe5) that do
each of the following at least once:

- Use a conditional test in the `while` statement to stop the loop.

- Use an `active` variable to control how long the loop runs.

- Use a `break` statement to exit the loop when the user enters a
`'quit'` value.333333

<span id="ch7exe7"></span>**7-7. Infinity:** Write a loop that never
ends, and run it. (To end the loop, press <span
class="small">CTRL</span>-C or close the window displaying the output.)

## TRY IT YOURSELF #3

<span id="ch7exe8"></span>**7-8. Deli:** Make a list called
`sandwich_orders` and fill it with the names of various sandwiches. Then
make an empty list called `finished_sandwiches`. Loop through the list
of sandwich orders and print a message for each order, such as
`I made your tuna sandwich.` As each sandwich is made, move it to the
list of finished sandwiches. After all the sandwiches have been made,
print a message listing each sandwich that was made.

<span id="ch7exe9"></span>**7-9. No Pastrami:** Using the list
`sandwich_orders` from [Exercise 7-8](../chapter_07/README.md#ch7exe8), make sure the
sandwich `'pastrami'` appears in the list at least three times. Add code
near the beginning of your program to print a message saying the deli
has run out of pastrami, and then use a `while` loop to remove all
occurrences of `'pastrami'` from `sandwich_orders`. Make sure no
pastrami sandwiches end up in `finished_sandwiches`.

<span id="ch7exe10"></span>**7-10. Dream Vacation:** Write a program
that polls users about their dream vacation. Write a prompt similar to
*If you could visit one place in the world, where would you go?* Include
a block of code that prints the results of the poll.

