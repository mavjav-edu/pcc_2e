# Classes

*Object-oriented programming* is one of the most effective approaches to
writing software. In object-oriented programming you write *classes*
that represent real-world things and situations, and you create
*objects* based on these classes. When you write a class, you define the
general behavior that a whole category of objects can have. When you
create individual objects from the class, each object is automatically
equipped with the general behavior; you can then give each object
whatever unique traits you desire. You’ll be amazed how well real-world
situations can be modeled with object-oriented programming.

## TRY IT YOURSELF #1

<span id="ch9exe1"></span>**9-1. Restaurant:** Make a class called
`Restaurant`. The `__init__()` method for `Restaurant` should store two
attributes: a `restaurant_name` and a `cuisine_type`. Make a method
called `describe_restaurant()` that prints these two pieces of
information, and a method called `open_restaurant()` that prints a
message indicating that the restaurant is open.

Make an instance called `restaurant` from your class. Print the two
attributes individually, and then call both methods.

<span id="ch9exe2"></span>**9-2. Three Restaurants:** Start with your
class from [Exercise 9-1](../chapter_09/README.md#ch9exe1). Create three different
instances from the class, and call `describe_restaurant()` for each
instance.

<span id="ch9exe3"></span>**9-3. Users:** Make a class called `User`.
Create two attributes called `first_name` and `last_name`, and then
create several other attributes that are typically stored in a user
profile. Make a method called `describe_user()` that prints a summary of
the user&rsquo;s information. Make another method called `greet_user()` that
prints a personalized greeting to the user.

Create several instances representing different users, and call both
methods for each user.

## TRY IT YOURSELF #2

<span id="ch9exe4"></span>**9-4. Number Served:** Start with your
program from [Exercise 9-1](../chapter_09/README.md#ch9exe1) ([page
166](../chapter_09/README.md#page_166)). Add an attribute called `number_served` with
a default value of 0. Create an instance called `restaurant` from this
class. Print the number of customers the restaurant has served, and then
change this value and print it again.

Add a method called `set_number_served()` that lets you set the number
of customers that have been served. Call this method with a new number
and print the value again.

Add a method called `increment_number_served()` that lets you increment
the number of customers who&rsquo;ve been served. Call this method with any
number you like that could represent how many customers were served in,
say, a day of business.

<span id="ch9exe5"></span>**9-5. Login Attempts:** Add an attribute
called `login_attempts` to your `User` class from [Exercise
9-3](../chapter_09/README.md#ch9exe3) ([page 166](../chapter_09/README.md#page_166)). Write a method
called `increment_login_attempts()` that increments the value of
`login_attempts` by 1. Write another method called
`reset_login_attempts()` that resets the value of `login_attempts` to 0.

Make an instance of the `User` class and call
`increment_login_attempts()` several times. Print the value of
`login_attempts` to make sure it was incremented properly, and then call
`reset_login_attempts()`. Print `login_attempts` again to make sure it
was reset to 0.

## TRY IT YOURSELF #3

<span id="ch9exe6"></span>**9-6. Ice Cream Stand:** An ice cream stand
is a specific kind of restaurant. Write a class called `IceCreamStand`
that inherits from the `Restaurant` class you wrote in [Exercise
9-1](../chapter_09/README.md#ch9exe1) ([page 166](../chapter_09/README.md#page_166)) or [Exercise
9-4](../chapter_09/README.md#ch9exe4) ([page 171](../chapter_09/README.md#page_171)). Either version
of the class will work; just pick the one you like better. Add an
attribute called `flavors` that stores a list of ice cream flavors.
Write a method that displays these flavors. Create an instance of
`IceCreamStand`, and call this method.

<span id="ch9exe7"></span>**9-7. Admin:** An administrator is a special
kind of user. Write a class called `Admin` that inherits from the `User`
class you wrote in [Exercise 9-3](../chapter_09/README.md#ch9exe3) ([page
166](../chapter_09/README.md#page_166)) or [Exercise 9-5](../chapter_09/README.md#ch9exe5) ([page
171](../chapter_09/README.md#page_171)). Add an attribute, `privileges`, that stores a
list of strings like `"can add post"`, `"can delete post"`,
`"can ban user"`, and so on. Write a method called `show_privileges()`
that lists the administrator&rsquo;s set of privileges. Create an instance of
`Admin`, and call your method.

<span id="ch9exe8"></span>**9-8. Privileges:** Write a separate
`Privileges` class. The class should have one attribute, `privileges`,
that stores a list of strings as described in [Exercise
9-7](../chapter_09/README.md#ch9exe7). Move the `show_privileges()` method to this
class. Make a `Privileges` instance as an attribute in the `Admin`
class. Create a new instance of `Admin` and use your method to show its
privileges.

<span id="ch9exe9"></span>**9-9. Battery Upgrade:** Use the final
version of *electric_car.py* from this section. Add a method to the
`Battery` class called `upgrade_battery()`. This method should check the
battery size and set the capacity to 85 if it isn&rsquo;t already. Make an
electric car with a default battery size, call `get_range()` once, and
then call `get_range()` a second time after upgrading the battery. You
should see an increase in the car&rsquo;s range.

## TRY IT YOURSELF #4

<span id="ch9exe10"></span>**9-10. Imported Restaurant:** Using your
latest `Restaurant` class, store it in a module. Make a separate file
that imports `Restaurant`. Make a `Restaurant` instance, and call one of
`Restaurant`&rsquo;s methods to show that the `import` statement is working
properly.

<span id="ch9exe11"></span>**9-11. Imported Admin:** Start with your
work from [Exercise 9-8](../chapter_09/README.md#ch9exe8) ([page
178](../chapter_09/README.md#page_178)). Store the classes `User`, `Privileges`, and
`Admin` in one module. Create a separate file, make an `Admin` instance,
and call `show_privileges()` to show that everything is working
correctly.

<span id="ch9exe12"></span>**9-12. Multiple Modules:** Store the `User`
class in one module, and store the `Privileges` and `Admin` classes in a
separate module. In a separate file, create an `Admin` instance and call
`show_privileges()` to show that everything is still working correctly.



<span id="page_186"></span>
## TRY IT YOURSELF #5

<span id="ch9exe13"></span>**9-13. OrderedDict Rewrite:** Start with
[Exercise 6-4](../chapter_06/README.md#ch6exe4) ([page 108](../chapter_06/README.md#page_108)),
where you used a standard dictionary to represent a glossary. Rewrite
the program using the `OrderedDict` class and make sure the order of the
output matches the order in which key-value pairs were added to the
dictionary.

<span id="ch9exe14"></span>**9-14. Dice:** The module `random` contains
functions that generate random numbers in a variety of ways. The
function `randint()` returns an integer in the range you provide. The
following code returns a number between 1 and 6:

``` python
from random import randint
x = randint(1, 6)
```

Make a class `Die` with one attribute called `sides`, which has a
default value of 6. Write a method called `roll_die()` that prints a
random number between 1 and the number of sides the die has. Make a
6-sided die and roll it 10 times.

Make a 10-sided die and a 20-sided die. Roll each die 10 times.

<span id="ch9exe15"></span>**9-15. Python Module of the Week:** One
excellent resource for exploring the Python standard library is a site
called *Python Module of the Week*. Go to *<http://pymotw.com/>* and
look at the table of contents. Find a module that looks interesting to
you and read about it, or explore the documentation of the `collections`
and `random` modules.

