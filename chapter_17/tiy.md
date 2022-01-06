---
layout: default
title:  Working With APIs
nav_exclude: true
parent: Home
---

In this chapter you’ll learn how to write a self-contained program to
generate a visualization based on data that it retrieves. Your program
will use a web *application programming interface (API)* to
automatically request specific information from a website rather than
entire pages. It will then use that information to generate a
visualization. Because programs written like this will always use
current data to generate a visualization, even when that data might be
rapidly changing, it will always be up to date.

## TRY IT YOURSELF #1

<span id="ch17exe1"></span>**17-1. Other Languages:** Modify the API
call in *python_repos.py* so it generates a chart showing the most
popular projects in other languages. Try languages such as *JavaScript*,
*Ruby*, *C*, *Java*, *Perl*, *Haskell*, and *Go*.

<span id="ch17exe2"></span>**17-2. Active Discussions:** Using the data
from *hn_submissions.py*, make a bar chart showing the most active
discussions currently happening on Hacker News. The height of each bar
should correspond to the number of comments each submission has. The
label for each bar should include the submission&rsquo;s title, and each bar
should act as a link to the discussion page for that submission.

<span id="ch17exe3"></span>**17-3. Testing** ***python_repos.py*****:**
In *python_repos.py*, we printed the value of `status_code` to make sure
the API call was successful. Write a program called
*test_python_repos.py*, which uses `unittest` to assert that the value
of `status_code` is 200. Figure out some other assertions you can
make&rsquo;for example, that the number of items returned is expected and that
the total number of repositories is greater than a certain amount.

[top](#top)

[Next Chapter](../chapter_18/tiy.md)
