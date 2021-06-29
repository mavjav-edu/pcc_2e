

# User Accounts


## TRY IT YOURSELF #1

<span id="ch19exe1"></span>**19-1. Blog:** Start a new Django project
called *Blog*. Create an app called *blogs* in the project, with a model
called `BlogPost`. The model should have fields like `title`, `text`,
and `date_added`. Create a superuser for the project, and use the admin
site to make a couple of short posts. Make a home page that shows all
posts in chronological order.

Create a form for making new posts and another for editing existing
posts. Fill in your forms to make sure they work.



## TRY IT YOURSELF #2

<span id="ch19exe2"></span>**19-2. Blog Accounts:** Add a user
authentication and registration system to the Blog project you started
in [Exercise 19-1](../chapter_19/README.md#ch19exe1) ([page 438](../chapter_19/README.md#page_438)).
Make sure logged-in users see their username somewhere on the screen and
unregistered users see a link to the registration page.



<span id="page_454"></span>

## TRY IT YOURSELF #3

<span id="ch19exe3"></span>**19-3. Refactoring:** There are two places
in *views.py* where we make sure the user associated with a topic
matches the currently logged-in user. Put the code for this check in a
function called `check_topic_owner()`, and call this function where
appropriate.

<span id="ch19exe4"></span>**19-4. Protecting new_entry:** A user can
add a new entry to another user&rsquo;s learning log by entering a URL with
the ID of a topic belonging to another user. Prevent this attack by
checking that the current user owns the entry&rsquo;s topic before saving the
new entry.

<span id="ch19exe5"></span>**19-5. Protected Blog:** In your Blog
project, make sure each blog post is connected to a particular user.
Make sure all posts are publicly accessible but only registered users
can add posts and edit existing posts. In the view that allows users to
edit their posts, make sure the user is editing their own post before
processing the form.

