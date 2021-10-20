# Functions

In this chapter you’ll learn to write *functions*, which are named
blocks of code that are designed to do one specific job. When you want
to perform a particular task that you’ve defined in a function, you
*call* the name of the function responsible for it. If you need to
perform that task multiple times throughout your program, you don’t need
to type all the code for the same task again and again; you just call
the function dedicated to handling that task, and the call tells Python
to run the code inside the function. You’ll find that using functions
makes your programs easier to write, read, test, and fix.

## TRY IT YOURSELF #1

<span id="ch8exe1"></span>**8-1. Message:** Write a function called
`display_message()` that prints one sentence telling everyone what you
are learning about in this chapter. Call the function, and make sure the
message displays correctly.

<span id="ch8exe2"></span>**8-2. Favorite Book:** Write a function
called `favorite_book()` that accepts one parameter, `title`. The
function should print a message, such as
`One of my favorite books is Alice in Wonderland`. Call the function,
making sure to include a book title as an argument in the function call.

## TRY IT YOURSELF #2

<span id="ch8exe3"></span>**8-3. T-Shirt:** Write a function called
`make_shirt()` that accepts a size and the text of a message that should
be printed on the shirt. The function should print a sentence
summarizing the size of the shirt and the message printed on it.

Call the function once using positional arguments to make a shirt. Call
the function a second time using keyword arguments.

<span id="ch8exe4"></span>**8-4. Large Shirts:** Modify the
`make_shirt()` function so that shirts are large by default with a
message that reads *I love Python*. Make a large shirt and a medium
shirt with the default message, and a shirt of any size with a different
message.

<span id="ch8exe5"></span>**8-5. Cities:** Write a function called
`describe_city()` that accepts the name of a city and its country. The
function should print a simple sentence, such as
`Reykjavik is in Iceland`. Give the parameter for the country a default
value. Call your function for three different cities, at least one of
which is not in the default country.

## TRY IT YOURSELF #3

<span id="ch8exe6"></span>**8-6. City Names:** Write a function called
`city_country()` that takes in the name of a city and its country. The
function should return a string formatted like this:

``` python
"Santiago, Chile"
```

Call your function with at least three city-country pairs, and print the
value that&rsquo;s returned.

<span id="ch8exe7"></span>**8-7. Album:** Write a function called
`make_album()` that builds a dictionary describing a music album. The
function should take in an artist name and an album title, and it should
return a dictionary containing these two pieces of information. Use the
function to make three dictionaries representing different albums. Print
each return value to show that the dictionaries are storing the album
information correctly.

Add an optional parameter to `make_album()` that allows you to store the
number of tracks on an album. If the calling line includes a value for
the number of tracks, add that value to the album&rsquo;s dictionary. Make at
least one new function call that includes the number of tracks on an
album.

<span id="ch8exe8"></span>**8-8. User Albums:** Start with your program
from [Exercise 8-7](../chapter_08/README.md#ch8exe7). Write a `while` loop that allows
users to enter an album&rsquo;s artist and title. Once you have that
information, call `make_album()` with the user&rsquo;s input and print the
dictionary that&rsquo;s created. Be sure to include a quit value in the
`while` loop.

## TRY IT YOURSELF #4

<span id="ch8exe9"></span>**8-9. Magicians:** Make a list of magician&rsquo;s
names. Pass the list to a function called `show_magicians()`, which
prints the name of each magician in the list.

<span id="ch8exe10"></span>**8-10. Great Magicians:** Start with a copy
of your program from [Exercise 8-9](../chapter_08/README.md#ch8exe9). Write a function
called `make_great()` that modifies the list of magicians by adding the
phrase *the Great* to each magician&rsquo;s name. Call `show_magicians()` to
see that the list has actually been modified.

<span id="ch8exe11"></span>**8-11. Unchanged Magicians:** Start with
your work from [Exercise 8-10](../chapter_08/README.md#ch8exe10). Call the function
`make_great()` with a copy of the list of magicians&rsquo; names. Because the
original list will be unchanged, return the new list and store it in a
separate list. Call `show_magicians()` with each list to show that you
have one list of the original names and one list with *the Great* added
to each magician&rsquo;s name.



<span id="page_154"></span>
## TRY IT YOURSELF #5

<span id="ch8exe12"></span>**8-12. Sandwiches:** Write a function that
accepts a list of items a person wants on a sandwich. The function
should have one parameter that collects as many items as the function
call provides, and it should print a summary of the sandwich that is
being ordered. Call the function three times, using a different number
of arguments each time.

<span id="ch8exe13"></span>**8-13. User Profile:** Start with a copy of
*user_profile.py* from [page 153](../chapter_08/README.md#page_153). Build a profile
of yourself by calling `build_profile()`, using your first and last
names and three other key-value pairs that describe you.

<span id="ch8exe14"></span>**8-14. Cars:** Write a function that stores
information about a car in a dictionary. The function should always
receive a manufacturer and a model name. It should then accept an
arbitrary number of keyword arguments. Call the function with the
required information and two other name-value pairs, such as a color or
an optional feature. Your function should work for a call like this one:

``` python
car = make_car('subaru', 'outback', color='blue', tow_package=True)
```

Print the dictionary that&rsquo;s returned to make sure all the information
was stored correctly.



<span id="page_159"></span>
## TRY IT YOURSELF #6

<span id="ch8exe15"></span>**8-15. Printing Models:** Put the functions
for the example *printing_models.py* in a separate file called
*printing_functions.py*. Write an `import` statement at the top of
*printing_models.py*, and modify the file to use the imported functions.

<span id="ch8exe16"></span>**8-16. Imports:** Using a program you wrote
that has one function in it, store that function in a separate file.
Import the function into your main program file, and call the function
using each of these approaches:

``` python
import module_name
from module_name import function_name
from module_name import function_name as fn
import module_name as mn
from module_name import *
```

<span id="ch8exe17"></span>**8-17. Styling Functions:** Choose any three
programs you wrote for this chapter, and make sure they follow the
styling guidelines described in this section.

