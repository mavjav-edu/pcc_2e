# Getting Started With Django

Behind the scenes, today’s websites are actually rich applications that
act like fully developed desktop applications. Python has a great set of
tools for building web applications. In this chapter you’ll learn how to
use Django (*<http://djangoproject.com/>*) to build a project called
Learning Log—an online journal system that lets you keep track of
information you’ve learned about particular topics.

## TRY IT YOURSELF #1

<span id="ch18exe1"></span>**18-1. New Projects:** To get a better idea
of what Django does, build a couple of empty projects and look at what
it creates. Make a new folder with a simple name, like *InstaBook* or
*FaceGram* (outside of your *learning_log* directory), navigate to that
folder in a terminal, and create a virtual environment. Install Django,
and run the command `django-admin.py startproject instabook.` (make sure
you include the dot at the end of the command).

Look at the files and folders this command creates, and compare them to
Learning Log. Do this a few times until you&rsquo;re familiar with what Django
creates when starting a new project. Then delete the project directories
if you wish.



<span id="page_412"></span>
## TRY IT YOURSELF #2

<span id="ch18exe2"></span>**18-2. Short Entries:** The `__str__()`
method in the `Entry` model currently appends an ellipsis to every
instance of `Entry` when Django shows it in the admin site or the shell.
Add an `if` statement to the `__str__()` method that adds an ellipsis
only if the entry is more than 50 characters long. Use the admin site to
add an entry that&rsquo;s fewer than 50 characters in length, and check that
it doesn&rsquo;t have an ellipsis when viewed.

<span id="ch18exe3"></span>**18-3. The Django API:** When you write code
to access the data in your project, you&rsquo;re writing a *query*. Skim
through the documentation for querying your data at
*<https://docs.djangoproject.com/en/1.8/topics/db/queries/>.* Much of
what you see will look new to you, but it will be quite useful as you
start to work on your own projects.

<span id="ch18exe4"></span>**18-4. Pizzeria:** Start a new project
called `pizzeria` with an app called `pizzas`. Define a model `Pizza`
with a field called `name`, which will hold name values such as
`Hawaiian` and `Meat Lovers`. Define a model called `Topping` with
fields called `pizza` and `name`. The `pizza` field should be a foreign
key to `Pizza`, and `name` should be able to hold values such as
`pineapple`, `Canadian bacon`, and `sausage`.

Register both models with the admin site, and use the site to enter some
pizza names and toppings. Use the shell to explore the data you entered.

## TRY IT YOURSELF #3

<span id="ch18exe5"></span>**18-5. Meal Planner:** Consider an app that
helps people plan their meals throughout the week. Make a new folder
called *meal_planner*, and start a new Django project inside this
folder. Then make a new app called `meal_plans`. Make a simple home page
for this project.

<span id="ch18exe6"></span>**18-6. Pizzeria Home Page:** Add a home page
to the *Pizzeria* project you started in [Exercise
18-4](../chapter_18/README.md#ch18exe4) ([page 412](../chapter_18/README.md#page_412)).

## TRY IT YOURSELF #4

<span id="ch18exe7"></span>**18-7. Template Documentation:** Skim the
Django template documentation at
*<https://docs.djangoproject.com/en/1.8/ref/templates/>*. You can refer
back to it when you&rsquo;re working on your own projects.

<span id="ch18exe8"></span>**18-8. Pizzeria Pages:** Add a page to the
*Pizzeria* project from [Exercise 18-6](../chapter_18/README.md#ch18exe6) ([page
416](../chapter_18/README.md#page_416)) that shows the names of available pizzas. Then
link each pizza name to a page displaying the pizza&rsquo;s toppings. Make
sure you use template inheritance to build your pages efficiently.

