# Styling And Deploying An App

Learning Log is fully functional now, but it has no styling and runs
only on your local machine. In this chapter we’ll style the project in a
simple but professional manner and then deploy it to a live server so
anyone in the world can make an account.


<span id="page_466"></span>
## TRY IT YOURSELF #1

<span id="ch20exe1"></span>**20-1. Other Forms:** We&rsquo;ve applied
Bootstrap&rsquo;s styles to the `login` and `add_topic` pages. Make similar
changes to the rest of the form-based pages: `new_entry` and
`edit_entry`, and `register`.

<span id="ch20exe2"></span>**20-2. Stylish Blog:** Use Bootstrap to
style the Blog project you created in [Chapter 19](../chapter_19/README.md#ch19).



<span id="page_482"></span>
## TRY IT YOURSELF #2

<span id="ch20exe3"></span>**20-3. Live Blog:** Deploy the Blog project
you&rsquo;ve been working on to Heroku. Make sure you set `DEBUG` to `False`
and change the `ALLOWED_HOSTS` setting, so your deployment is reasonably
secure.

<span id="ch20exe4"></span>**20-4. More 404s:** The
`get_object_or_404()` function should also be used in the `new_entry()`
and `edit_entry()` views. Make this change, test it by entering a URL
like *http://localhost:8000/new_entry/99999/*, and check that you see a
404 error.

<span id="ch20exe5"></span>**20-5. Extended Learning Log:** Add one
feature to Learning Log, and push the change to your live deployment.
Try a simple change, such as writing more about the project on the home
page. Then try adding a more advanced feature, such as giving users the
option of making a topic public. This would require an attribute called
`public` as part of the `Topic` model (this should be set to `False` by
default) and a form element on the new_topic page that allows the user
to change a topic from private to public. You&rsquo;d then need to migrate the
project and revise *views.py* so any topic that&rsquo;s public is visible to
unauthenticated users as well. Remember to migrate the live database
after you&rsquo;ve pushed your changes to Heroku.

