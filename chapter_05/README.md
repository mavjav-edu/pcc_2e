

# If Statements


<span id="page_82"></span>

## TRY IT YOURSELF #1

<span id="ch5exe1"></span>**5-1. Conditional Tests:** Write a series of
conditional tests. Print a statement describing each test and your
prediction for the results of each test. Your code should look something
like this:

``` python
car = 'subaru'
print("Is car == 'subaru'? I predict True.")
print(car == 'subaru')

print("\nIs car == 'audi'? I predict False.")
print(car == 'audi')
```

<<<<<<< HEAD
- Look closely at your results, and make sure you understand why each
line evaluates to `True` or `False`.

- Create at least 10 tests. Have at least 5 tests evaluate to `True` and
=======
ΓÇó Look closely at your results, and make sure you understand why each
line evaluates to `True` or `False`.

ΓÇó Create at least 10 tests. Have at least 5 tests evaluate to `True` and
>>>>>>> e01804d5ddbb1540178d3613b1ccbf1a3dcd6300
another 5 tests evaluate to `False`.

<span id="ch5exe2"></span>**5-2. More Conditional Tests:** You don&rsquo;t
have to limit the number of tests you create to 10. If you want to try
more comparisons, write more tests and add them to
*conditional_tests.py*. Have at least one `True` and one `False` result
for each of the following:

<<<<<<< HEAD
- Tests for equality and inequality with strings

- Tests using the `lower()` function

- Numerical tests involving equality and inequality, greater than and
less than, greater than or equal to, and less than or equal to

- Tests using the `and` keyword and the `or` keyword

- Test whether an item is in a list

- Test whether an item is not in a list
=======
ΓÇó Tests for equality and inequality with strings

ΓÇó Tests using the `lower()` function

ΓÇó Numerical tests involving equality and inequality, greater than and
less than, greater than or equal to, and less than or equal to

ΓÇó Tests using the `and` keyword and the `or` keyword

ΓÇó Test whether an item is in a list

ΓÇó Test whether an item is not in a list
>>>>>>> e01804d5ddbb1540178d3613b1ccbf1a3dcd6300



## TRY IT YOURSELF #2

<span id="ch5exe3"></span>**5-3. Alien Colors #1:** Imagine an alien was
just shot down in a game. Create a variable called `alien_color` and
assign it a value of `'green'`, `'yellow'`, or `'red'`.

<<<<<<< HEAD
- Write an `if` statement to test whether the alien&rsquo;s color is green. If
it is, print a message that the player just earned 5 points.

- Write one version of this program that passes the `if` test and
=======
ΓÇó Write an `if` statement to test whether the alien&rsquo;s color is green. If
it is, print a message that the player just earned 5 points.

ΓÇó Write one version of this program that passes the `if` test and
>>>>>>> e01804d5ddbb1540178d3613b1ccbf1a3dcd6300
another that fails. (The version that fails will have no output.)

<span id="ch5exe4"></span>**5-4. Alien Colors #2:** Choose a color for
an alien as you did in [Exercise 5-3](../chapter_05/README.md#ch5exe3), and write an
`if`-`else` chain.

<<<<<<< HEAD
- If the alien&rsquo;s color is green, print a statement that the player just
earned 5 points for shooting the alien.

- If the alien&rsquo;s color isn&rsquo;t green, print a statement that the player
just earned 10 points.

- Write one version of this program that runs the `if` block and another
=======
ΓÇó If the alien&rsquo;s color is green, print a statement that the player just
earned 5 points for shooting the alien.

ΓÇó If the alien&rsquo;s color isn&rsquo;t green, print a statement that the player
just earned 10 points.

ΓÇó Write one version of this program that runs the `if` block and another
>>>>>>> e01804d5ddbb1540178d3613b1ccbf1a3dcd6300
that runs the `else` block.

<span id="page_89"></span><span id="ch5exe5"></span>**5-5. Alien Colors
#3:** Turn your `if`-`else` chain from [Exercise 5-4](../chapter_05/README.md#ch5exe4)
into an `if`-`elif-else` chain.

<<<<<<< HEAD
- If the alien is green, print a message that the player earned 5
points.

- If the alien is yellow, print a message that the player earned 10
points.

- If the alien is red, print a message that the player earned 15 points.

- Write three versions of this program, making sure each message is
=======
ΓÇó If the alien is green, print a message that the player earned 5
points.

ΓÇó If the alien is yellow, print a message that the player earned 10
points.

ΓÇó If the alien is red, print a message that the player earned 15 points.

ΓÇó Write three versions of this program, making sure each message is
>>>>>>> e01804d5ddbb1540178d3613b1ccbf1a3dcd6300
printed for the appropriate color alien.

<span id="ch5exe6"></span>**5-6. Stages of Life:** Write an
`if`-`elif`-`else` chain that determines a person&rsquo;s stage of life. Set a
value for the variable `age`, and then:

<<<<<<< HEAD
- If the person is less than 2 years old, print a message that the
person is a baby.

- If the person is at least 2 years old but less than 4, print a message
that the person is a toddler.

- If the person is at least 4 years old but less than 13, print a
message that the person is a kid.

- If the person is at least 13 years old but less than 20, print a
message that the person is a teenager.

- If the person is at least 20 years old but less than 65, print a
message that the person is an adult.

- If the person is age 65 or older, print a message that the person is
=======
ΓÇó If the person is less than 2 years old, print a message that the
person is a baby.

ΓÇó If the person is at least 2 years old but less than 4, print a message
that the person is a toddler.

ΓÇó If the person is at least 4 years old but less than 13, print a
message that the person is a kid.

ΓÇó If the person is at least 13 years old but less than 20, print a
message that the person is a teenager.

ΓÇó If the person is at least 20 years old but less than 65, print a
message that the person is an adult.

ΓÇó If the person is age 65 or older, print a message that the person is
>>>>>>> e01804d5ddbb1540178d3613b1ccbf1a3dcd6300
an elder.

<span id="ch5exe7"></span>**5-7. Favorite Fruit:** Make a list of your
favorite fruits, and then write a series of independent `if` statements
that check for certain fruits in your list.

<<<<<<< HEAD
- Make a list of your three favorite fruits and call it
`favorite_fruits`.

- Write five `if` statements. Each should check whether a certain kind
=======
ΓÇó Make a list of your three favorite fruits and call it
`favorite_fruits`.

ΓÇó Write five `if` statements. Each should check whether a certain kind
>>>>>>> e01804d5ddbb1540178d3613b1ccbf1a3dcd6300
of fruit is in your list. If the fruit is in your list, the `if` block
should print a statement, such as *You really like bananas!*



<span id="page_93"></span>

## TRY IT YOURSELF #3

<span id="ch5exe8"></span>**5-8. Hello Admin:** Make a list of five or
more usernames, including the name `'admin'`. Imagine you are writing
code that will print a greeting to each user after they log in to a
website. Loop through the list, and print a greeting to each user:

<<<<<<< HEAD
- If the username is `'admin'`, print a special greeting, such as *Hello
admin, would you like to see a status report?*

- Otherwise, print a generic greeting, such as *Hello Eric, thank you
=======
ΓÇó If the username is `'admin'`, print a special greeting, such as *Hello
admin, would you like to see a status report?*

ΓÇó Otherwise, print a generic greeting, such as *Hello Eric, thank you
>>>>>>> e01804d5ddbb1540178d3613b1ccbf1a3dcd6300
for logging in again.*

<span id="ch5exe9"></span>**5-9. No Users:** Add an `if` test to
*hello_admin.py* to make sure the list of users is not empty.

<<<<<<< HEAD
- If the list is empty, print the message *We need to find some users!*

- Remove all of the usernames from your list, and make sure the correct
=======
ΓÇó If the list is empty, print the message *We need to find some users!*

ΓÇó Remove all of the usernames from your list, and make sure the correct
>>>>>>> e01804d5ddbb1540178d3613b1ccbf1a3dcd6300
message is printed.

<span id="ch5exe10"></span>**5-10. Checking Usernames:** Do the
following to create a program that simulates how websites ensure that
everyone has a unique username.

<<<<<<< HEAD
- Make a list of five or more usernames called `current_users`.

- Make another list of five usernames called `new_users`. Make sure one
or two of the new usernames are also in the `current_users` list.

- Loop through the `new_users` list to see if each new username has
=======
ΓÇó Make a list of five or more usernames called `current_users`.

ΓÇó Make another list of five usernames called `new_users`. Make sure one
or two of the new usernames are also in the `current_users` list.

ΓÇó Loop through the `new_users` list to see if each new username has
>>>>>>> e01804d5ddbb1540178d3613b1ccbf1a3dcd6300
already been used. If it has, print a message that the person will need
to enter a new username. If a username has not been used, print a
message saying that the username is available.

<<<<<<< HEAD
- Make sure your comparison is case insensitive. If `'John'` has been
=======
ΓÇó Make sure your comparison is case insensitive. If `'John'` has been
>>>>>>> e01804d5ddbb1540178d3613b1ccbf1a3dcd6300
used, `'JOHN'` should not be accepted.

<span id="ch5exe11"></span>**5-11. Ordinal Numbers:** Ordinal numbers
indicate their position in a list, such as *1st* or *2nd*. Most ordinal
numbers end in *th*, except 1, 2, and 3.

<<<<<<< HEAD
- Store the numbers 1 through 9 in a list.

- Loop through the list.

- Use an `if`-`elif`-`else` chain inside the loop to print the proper
=======
ΓÇó Store the numbers 1 through 9 in a list.

ΓÇó Loop through the list.

ΓÇó Use an `if`-`elif`-`else` chain inside the loop to print the proper
>>>>>>> e01804d5ddbb1540178d3613b1ccbf1a3dcd6300
ordinal ending for each number. Your output should read
`"1st 2nd 3rd 4th 5th 6th 7th 8th 9th"`, and each result should be on a
separate line.



## TRY IT YOURSELF #4

<span id="ch5exe12"></span>**5-12. Styling** `if` **statements:** Review
the programs you wrote in this chapter, and make sure you styled your
conditional tests appropriately.

<span id="ch5exe13"></span>**5-13. Your Ideas:** At this point, you&rsquo;re a
more capable programmer than you were when you started this book. Now
that you have a better sense of how real-world situations are modeled in
programs, you might be thinking of some problems you could solve with
your own programs. Record any new ideas you have about problems you
might want to solve as your programming skills continue to improve.
Consider games you might want to write, data sets you might want to
explore, and web applications you&rsquo;d like to create.

