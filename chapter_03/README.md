# Introducing Lists

In this chapter and the next you’ll learn what lists are and how to
start working with the elements in a list. Lists allow you to store sets
of information in one place, whether you have just a few items or
millions of items. Lists are one of Python’s most powerful features
readily accessible to new programmers, and they tie together many
important concepts in programming.

## TRY IT YOURSELF #1

Try these short programs to get some firsthand experience with Python&rsquo;s
lists. You might want to create a new folder for each chapter&rsquo;s
exercises to keep them organized.

<span id="ch3exe1"></span>**3-1. Names:** Store the names of a few of
your friends in a list called `names`. Print each person&rsquo;s name by
accessing each element in the list, one at a time.

<span id="ch3exe2"></span>**3-2. Greetings:** Start with the list you
used in [Exercise 3-1](../chapter_03/README.md#ch3exe1), but instead of just printing
each person&rsquo;s name, print a message to them. The text of each message
should be the same, but each message should be personalized with the
person&rsquo;s name.

<span id="ch3exe3"></span>**3-3. Your Own List:** Think of your favorite
mode of transportation, such as a motorcycle or a car, and make a list
that stores several examples. Use your list to print a series of
statements about these items, such as &ldquo;I would like to own a Honda
motorcycle.&rdquo;

## TRY IT YOURSELF #2

The following exercises are a bit more complex than those in [Chapter
2](../chapter_02/README.md#ch02), but they give you an opportunity to use lists in all
of the ways described.

<span id="ch3exe4"></span>**3-4. Guest List:** If you could invite
anyone, living or deceased, to dinner, who would you invite? Make a list
that includes at least three people you&rsquo;d like to invite to dinner. Then
use your list to print a message to each person, inviting them to
dinner.

<span id="ch3exe5"></span>**3-5. Changing Guest List:** You just heard
that one of your guests can&rsquo;t make the dinner, so you need to send out a
new set of invitations. You&rsquo;ll have to think of someone else to invite.

- Start with your program from [Exercise 3-4](../chapter_03/README.md#ch3exe4). Add a
`print` statement at the end of your program stating the name of the
guest who can&rsquo;t make it.

- Modify your list, replacing the name of the guest who can&rsquo;t make it
with the name of the new person you are inviting.

- Print a second set of invitation messages, one for each person who is
still in your list.

<span id="ch3exe6"></span>**3-6. More Guests:** You just found a bigger
dinner table, so now more space is available. Think of three more guests
to invite to dinner.

- Start with your program from [Exercise 3-4](../chapter_03/README.md#ch3exe4) or
[Exercise 3-5](../chapter_03/README.md#ch3exe5). Add a `print` statement to the end of
your program informing people that you found a bigger dinner table.

- Use `insert()` to add one new guest to the beginning of your list.

- Use `insert()` to add one new guest to the middle of your list.

- Use `append()` to add one new guest to the end of your list.

- Print a new set of invitation messages, one for each person in your
list.

<span id="page_47"></span><span id="ch3exe7"></span>**3-7. Shrinking
Guest List:** You just found out that your new dinner table won&rsquo;t arrive
in time for the dinner, and you have space for only two guests.

- Start with your program from [Exercise 3-6](../chapter_03/README.md#ch3exe6). Add a
new line that prints a message saying that you can invite only two
people for dinner.

- Use `pop()` to remove guests from your list one at a time until only
two names remain in your list. Each time you pop a name from your list,
print a message to that person letting them know you&rsquo;re sorry you can&rsquo;t
invite them to dinner.

- Print a message to each of the two people still on your list, letting
them know they&rsquo;re still invited.

- Use `del` to remove the last two names from your list, so you have an
empty list. Print your list to make sure you actually have an empty list
at the end of your program.



<span id="page_50"></span>
## TRY IT YOURSELF #3

<span id="ch3exe8"></span>**3-8. Seeing the World:** Think of at least
five places in the world you&rsquo;d like to visit.

- Store the locations in a list. Make sure the list is not in
alphabetical order.

- Print your list in its original order. Don&rsquo;t worry about printing the
list neatly, just print it as a raw Python list.

- Use `sorted()` to print your list in alphabetical order without
modifying the actual list.

- Show that your list is still in its original order by printing it.

- Use `sorted()` to print your list in reverse alphabetical order
without changing the order of the original list.

- Show that your list is still in its original order by printing it
again.

- Use `reverse()` to change the order of your list. Print the list to
show that its order has changed.

- Use `reverse()` to change the order of your list again. Print the list
to show it&rsquo;s back to its original order.

- Use `sort()` to change your list so it&rsquo;s stored in alphabetical order.
Print the list to show that its order has been changed.

- Use `sort()` to change your list so it&rsquo;s stored in reverse
alphabetical order. Print the list to show that its order has changed.

<span id="ch3exe9"></span>**3-9. Dinner Guests:** Working with one of
the programs from [Exercises 3-4](../chapter_03/README.md#ch3exe4) through
[3-7](../chapter_03/README.md#ch3exe7) ([page 46](../chapter_03/README.md#page_46)), use `len()` to
print a message indicating the number of people you are inviting to
dinner.

<span id="ch3exe10"></span>**3-10. Every Function:** Think of something
you could store in a list. For example, you could make a list of
mountains, rivers, countries, cities, languages, or anything else you&rsquo;d
like. Write a program that creates a list containing these items and
then uses each function introduced in this chapter at least once.



<span id="page_52"></span>
## TRY IT YOURSELF #4

<span id="ch3exe11"></span>**3-11. Intentional Error:** If you haven&rsquo;t
received an index error in one of your programs yet, try to make one
happen. Change an index in one of your programs to produce an index
error. Make sure you correct the error before closing the program.

