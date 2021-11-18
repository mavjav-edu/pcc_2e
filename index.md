---
layout: default
title: Home
nav_order: 10
description: "Online resources for Python Crash Course."
has_children: true
---

# Python Crash Course

## A Hands-On, Project-Based Introduction to Programming

<figure class="figurefx pushup">
    <img
    sizes="({{ 'max-width: 300px' | relative_url }}) 100vw, 300px"
    srcset="
    {{ '/assets/images/cover_g9giob_c_scale,w_200.png' | relative_url }} 200w,
    {{ '/assets/images/cover_g9giob_c_scale,w_300.png' | relative_url }} 300w"
    src="{{ '/assets/images/cover_g9giob_c_scale,w_300.png' | relative_url }}"
    alt="Two printed copies of the book, 'Python Crash Course 2e', lying on a surface"/>
    <figcaption>Two printed copies of the book, <a href="https://www.amazon.ca/Python-Crash-Course-Eric-Matthes/dp/1593279280?&linkCode=ll1&tag=mavaddat-20&linkId=9a5ce7ddbcd95a4320240caaa6247aee&language=en_CA&ref_=as_li_ss_tl" target="_blank">'Python Crash Course 2e'</a>, lying on a surface</figcaption>
</figure>

This is a tutoring curriculum for learning Python using [Python Crash Course, 2nd Edition]({{ 'https://www.amazon.ca/Python-Crash-Course-Eric-Matthes/dp/1593279280?&linkCode=ll1&tag=mavaddat-20&linkId=9a5ce7ddbcd95a4320240caaa6247aee&language=en_CA&ref_=as_li_ss_tl' | relative_url }}), an introductory programming book from [No Starch Press]({{ 'http://www.nostarch.com/pythoncrashcourse/' | relative_url }}) by [Eric Matthes]({{ 'https://github.com/ehmatthes' | relative_url }}).

### Get Started

If you are a student following this curriculum for the first time, please jump to the [setup instructions below]({{ '#setup-instructions' | relative_url }}) below.

### Homework

## <a id="try_it_yourself"></a>Exercises ✍🏽

The book has several sections that reinforce learning through exercises. Practice what you just read where you see:
<img src="{{ '/assets/images/tiy.svg' | relative_url }}"   width="188vw" alt="'Try It Yourself' in Adobe Dogma typeface"/>

- Getting Started \([Chapter 1](./chapter_01/tiy)\)

- Variables And Simple Data Types \([Chapter 2](./chapter_02/tiy)\)

- Introducing Lists \([Chapter 3](./chapter_03/tiy)\)

- Working With Lists \([Chapter 4](./chapter_04/tiy)\)

- If Statements \([Chapter 5](./chapter_05/tiy)\)

- Dictionaries \([Chapter 6](./chapter_06/tiy)\)

- User Input And While Loops \([Chapter 7](./chapter_07/tiy)\)

- Functions \([Chapter 8](./chapter_08/tiy)\)

- Classes \([Chapter 9](./chapter_09/tiy)\)

- Files And Exceptions \([Chapter 10](./chapter_10/tiy)\)

- Testing Your Code \([Chapter 11](./chapter_11/tiy)\)

- A Ship That Fires Bullets \([Chapter 12](./chapter_12/tiy)\)

- Aliens! \([Chapter 13](./chapter_13/tiy)\)

- Scoring \([Chapter 14](./chapter_14/tiy)\)

- Generating Data \([Chapter 15](./chapter_15/tiy)\)

- Downloading Data \([Chapter 16](./chapter_16/tiy)\)

- Working With API's \([Chapter 17](./chapter_17/tiy)\)

- Getting Started With Django \([Chapter 18](./chapter_18/tiy)\)

- User Accounts \([Chapter 19](./chapter_19/tiy)\)

- Styling And Deploying An App \([Chapter 20](./chapter_20/tiy)\)

#### Solutions

After you have tried the exercises yourself, you can check the author's implementations to compare. solutions to the homework may be found [here](solutions).

### Setup Instructions

Here you can find instructions for:

- [Installing Python](./appendix_a)&#09;({{ 'Appendix A' | relative_url }})
- [Installing and configuring Python](./chapter_01/tiy)&#09;({{ 'Chapter 1' | relative_url }})
- [Installing and using pip](./chapter_12/installing_pip)&#09;({{ 'Chapter 12' | relative_url }})
- [Installing Pygame](./chapter_12/tiy)&#09;({{ 'Chapter 12' | relative_url }})
- [Installing matplotlib and Pygal](./chapter_15/tiy) &#09;({{ 'Chapter 15' | relative_url }})
- [Creating a Virtual Environment](./chapter_18/tiy)&#09;({{ 'Chapter 18' | relative_url }})
- [Deploying a Project to Heroku](./chapter_20/tiy)&#09;({{ 'Chapter 20' | relative_url }})

## <a id="source_code"></a>Downloading source code

Students will be assigned chapters from this book using [GitHub classroom]({{ 'https://classroom.github.com/classrooms/49895023-python-with-mavi' | relative_url }}). <img src="https://avatars.githubusercontent.com/in/68187?s=120" alt="GitHub classroom logo" width="120px"/>

If you are not a student, a direct way to get these online resources is to download as a ZIP file.

<figure>
<img
sizes="({{ 'max-width: 360px' | relative_url }}) 100vw, 360px"
srcset="
{{ '/assets/images/download_zip_vyd8au_c_scale,w_100.png' | relative_url }} 100w,
{{ '/assets/images/download_zip_vyd8au_c_scale,w_268.png' | relative_url }} 268w,
{{ '/assets/images/download_zip_vyd8au_c_scale,w_360.png' | relative_url }} 360w"
src="{{ '/assets/images/download_zip_vyd8au_c_scale,w_360.png' | relative_url }}"
 alt="Screenshot downloading zip of code in GitHub repository" title="Click the Download ZIP Option"/><figcaption>Screenshot downloading zip of code in GitHub repository</figcaption></figure>

Click on the [_Download ZIP_]({{ 'https://github.com/mavjav-edu/pcc_2e/archive/master.zip' | relative_url }}) button on the upper right side of [this page]({{ 'https://github.com/mavjav-edu/pcc_2e' | relative_url }}), which will download the source code files ({{ 'and other resources' | relative_url }}) for the entire book.

A more flexible way is to [fork this repository and clone it]({{ 'https://guides.github.com/activities/forking/' | relative_url }}) to your local computer using `git`.

## [Cheat Sheets](./cheat_sheets)

Cheat sheets can be really helpful when you're working on a set of programming exercises or a project. This set of [cheat sheets](./cheat_sheets) will help remind you of the concepts you're learning, as well as the Python syntax for these concepts.

## [Updates](./updates)

Some of the [PyPI]({{ 'https://en.wikipedia.org/wiki/Python_Package_Index' | relative_url }}) libraries featured in the book have been updated recently, which is a good thing &mdash; it means that the Python packages you're learning to use are being steadily improved.

When packages are updated you have the option of using the version that was featured in the book, which lets you run code exactly as it's written in the book. You can also choose to install the latest version of each package, and modify the code in the book slightly. Each approach is outlined clearly in these updates.

A list of updates is kept [here](./updates).

### Contact

If you have any questions about Python Crash Course, please [join the Discord server]({{ 'https://discord.gg/KzzTBbr' | relative_url }}), contact [Mavaddat]('https://www.mavaddat.ca'), or get in touch with the book's author, 📧 <a href="javascript:location='mailto:\u0065\u0068\u006d\u0061\u0074\u0074\u0068\u0065\u0073\u0040\u0067\u006d\u0061\u0069\u006c\u002e\u0063\u006f\u006d';void 0"><img  class="email" src="{{ '/assets/images/ematthes.svg' | relative_url  }}"/></a>.

[<img src="https://raw.githubusercontent.com/johan/svg-cleanups/master/logos/twitter.svg" alt="Twitter logo" width="15"/> @ehmatthes](http://twitter.com/ehmatthes/)
<img src="https://pbs.twimg.com/profile_images/1153801365543538688/6ZRVUWah.png" title="the author on Twitter" alt="the author's Twitter profile image" width="20vw"/>