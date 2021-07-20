# Testing Your Code

When you write a function or a class, you can also write tests for that
code. Testing proves that your code works as it’s supposed to in
response to all the input types it’s designed to receive. When you write
tests, you can be confident that your code will work correctly as more
people begin to use your programs. You’ll also be able to test new code
as you add it to make sure your changes don’t break your program’s
existing behavior. Every programmer makes mistakes, so every programmer
must test their code often, catching problems before users encounter
them.




<span id="page_222"></span>
## TRY IT YOURSELF #1

<span id="ch11exe1"></span>**11-1. City, Country:** Write a function
that accepts two parameters: a city name and a country name. The
function should return a single string of the form `City, Country`, such
as `Santiago, Chile`. Store the function in a module called
*city_functions.py*.

Create a file called *test_cities.py* that tests the function you just
wrote (remember that you need to import `unittest` and the function you
want to test). Write a method called `test_city_country()` to verify
that calling your function with values such as `'santiago'` and
`'chile'` results in the correct string. Run *test_cities.py*, and make
sure `test_city_country()` passes.

<span id="ch11exe2"></span>**11-2. Population:** Modify your function so
it requires a third parameter, `population`. It should now return a
single string of the form `City, Country ΓÇô population xxx`, such as
`Santiago, Chile ΓÇô population 5000000`. Run *test_cities.py* again. Make
sure `test_city_country()` fails this time.

Modify the function so the `population` parameter is optional. Run
*test_cities.py* again, and make sure `test_city_country()` passes
again.

Write a second test called `test_city_country_population()` that
verifies you can call your function with the values `'santiago'`,
`'chile'`, and `'population=5000000'`. Run *test_cities.py* again, and
make sure this new test passes.

## TRY IT YOURSELF #2

<span id="ch11exe3"></span>**11-3. Employee:** Write a class called
`Employee`. The `__init__()` method should take in a first name, a last
name, and an annual salary, and store each of these as attributes. Write
a method called `give_raise()` that adds \$5000 to the annual salary by
default but also accepts a different raise amount.

Write a test case for `Employee`. Write two test methods,
`test_give_default_raise()` and `test_give_custom_raise()`. Use the
`setUp()` method so you don&rsquo;t have to create a new employee instance in
each test method. Run your test case, and make sure both tests pass.

