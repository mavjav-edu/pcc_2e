---
layout: default
title:  Text Editors
nav_exclude: true
parent: Home
---

Programmers spend a lot of time writing, reading, and editing code, and
using a text editor that makes this work as efficient as possible is
essential. An efficient editor should highlight the structure of your
code so you can catch common bugs as you’re working. It should also
include automatic indenting, markers to show appropriate line length,
and keyboard shortcuts for common operations.

As a new programmer, you should use an editor that has these features
but doesn’t have a steep learning curve. It’s also good to know a little
about more advanced editors so you’ll know when to consider upgrading.

We’ll look at a quality editor for each of the main operating systems:

Finally, we’ll look at Emacs and vim, two advanced editors you’ll hear frequently mentioned
as you spend more time programming. We’ll use *hello_world.py* as an
example program to run in each editor.

## Choice of Text Editor

### **Geany**

Geany is a simple text editor that lets you run almost all of your
programs directly from the editor. It also displays your output in a
terminal window, which helps you get comfortable using terminals.

#### ***Installing Geany on Linux***

You can install Geany using one line on most Linux systems:

\$ sudo apt-get install geany

If you have multiple versions of Python installed, you’ll have to
configure Geany so it uses the correct version. Open Geany, select
**File ▸ Save As**, and save the empty file as *hello_world.py*. Enter
the following line in the editing window:

print("Hello Python world!")

Go to **Build ▸ Set Build Commands**. You should see the fields Compile
and Execute with a command next to each. Geany assumes python is the
correct command for each of these, but if your system uses the python3
command, you’ll need to change this. In **Compile**, enter:

python3 -m py_compile "%f"

Make sure the spaces and capitalization in your Compile command exactly
match what is shown here.

Use this **Execute** command:

python3 "%f"

Again, make sure the spacing and capitalization exactly match what is
shown here.

#### ***Installing Geany on Windows***

You can download a Windows installer for Geany by going to
*<http://www.geany.org/>* and clicking Releases in the Download menu.
Run the installer called *Geany-1.25_setup.exe*, or something similar,
and accept all of the defaults.

Open Geany, select **File ▸ Save As**, and save the empty file as
*hello_world.py*. Enter the following line in the editing window:

print("Hello Python world!")

Now go to **Build ▸ Set Build Commands**. You should see the fields
Compile and Execute with a command next to each. Each of these commands
starts with python (in lowercase), but Geany doesn’t know where your
system stored the python command. You need to add the path you use when
starting a terminal session. (You can skip these steps if you set the
Path variable as described in [Appendix A](..\appendix_a\index.md).)

In the Compile and Execute commands, add the drive your python command
is on, and the folder where the python command is stored. Your
**Compile** command should look like this:

C:\\Python35\\python -m py_compile "%f"

Your path may be a little different, but make sure the spaces and
capitalization exactly match what is shown here.

Your **Execute** command should look something like this:

C:\\Python35\\python "%f"

Again, make sure the spacing and capitalization in your Execute command
exactly match what is shown here. When you have these lines set
correctly, click **OK**. You should now be able to run your program
successfully.

#### ***Running Python Programs in Geany***

There are three ways to run a program in Geany. To run *hello_world.py*,
select **Build ▸ Execute** in the menu, or click the icon with a set of
gears, or press F5. When you run *hello_world.py*, you should see a
terminal window pop up with the following output:

Hello Python world!  
  
------------------  
(program exited with code: 0)  
Press return to continue

#### ***Customizing Geany Settings***

Now we’ll set up Geany to be as efficient as possible by customizing the
features mentioned at the beginning of this appendix.

##### **Converting Tabs to Spaces**

Mixing tabs and spaces in your code can cause problems in your Python
programs that are very difficult to diagnose. To check the indentation
settings in Geany, go to **Edit ▸ Preferences ▸ Editor ▸ Indentation**.
Set the tab width to **4**, and set **Type** to **Spaces**.

If you have a mix of tabs and spaces in one of your programs, you can
convert all tabs to spaces with **Document ▸ Replace Tabs by Spaces**.

##### **Setting the Line Length Indicator**

Most editors allow you to set up a visual cue, usually a vertical line,
to show where your lines should end. Set this feature by selecting
**Edit ▸ Preferences ▸ Editor ▸ Display**, and make sure that **Long
line marker** is enabled. Then make sure the value of Column is set to
79.

##### **Indenting and Unindenting Code Blocks**

To indent a block of code, highlight the code and go to **Edit ▸ Format
▸ Increase Indent**, or press CTRL-I. To unindent a block of code, go to
**Edit ▸ Format ▸ Decrease Indent**, or press CTRL-U.

##### **Commenting Out Blocks of Code**

To temporarily disable a block of code, you can highlight the block and
comment it so Python will ignore it. Go to **Edit ▸ Format ▸ Toggle Line
Commentation** (CTRL-E). The line will be commented out with a special
sequence (#\~) to indicate it’s not a regular comment. When you want to
uncomment the block of code, highlight the block and issue the same
command again.

### **Sublime Text**

Sublime Text is a simple text editor that’s easy to install on OS X (and
other systems as well), and lets you run almost all your programs
directly from the editor. It also runs your code in a terminal session
embedded in the Sublime Text window, which makes it easy to see the
output of your code.

Sublime Text has a very liberal licensing policy: you can use the editor
free of charge as long as you want, but the author requests that you
purchase a license if you like it and want to continue using it. We’ll
download Sublime Text 3, the most recent version at the time of this
writing.

#### ***Installing Sublime Text on OS X***

Download the installer for Sublime Text from
*<http://www.sublimetext.com/3>*. Follow the download link and click the
installer for OS X. When it’s downloaded, open the installer and drag
the Sublime Text icon into your *Applications* folder.

#### ***Installing Sublime Text on Linux***

On most Linux systems, it’s easiest to install Sublime Text from a
terminal session, like this:

\$ sudo add-apt-repository ppa:webupd8team/sublime-text-3  
\$ sudo apt-get update  
\$ sudo apt-get install sublime-text-installer

#### ***Installing Sublime Text on Windows***

Download an installer for Windows from *<http://www.sublimetext.com/3>*.
Run the installer, and you should see Sublime Text in your Start menu.

#### ***Running Python Programs in Sublime Text***

If you’re using the version of Python that came with your system, you’ll
probably be able to run your programs without adjusting any settings. To
run programs, go to **Tools ▸ Build** or press CTRL-B. When you run
*hello_world.py*, you should see a terminal screen appear at the bottom
of the Sublime Text window displaying the following output:

Hello Python world!  
\[Finished in 0.1s\]

#### ***Configuring Sublime Text***

If you have multiple versions of Python installed or if Sublime Text
won’t run Python programs automatically, you’ll have to set up a
configuration file. First, you’ll need to know the full path to your
Python interpreter. On Linux and OS X, issue the following command:

\$ type -a python3  
python3 is /usr/local/bin/python3

Replace python3 with the command you normally use to start a terminal
session.

If you’re using Windows, see “[Installing Python 3 on
Windows](app01.html#app01lev2sec05)” on [page 488](app01.html)
to find the path to your Python interpreter.

Now open Sublime Text, and go to **Tools ▸ Build System ▸ New Build
System**, which will open a new configuration file for you. Delete what
you see, and enter the following:

*Python3.sublime-build*

{  
    "cmd": \["/usr/local/bin/python3", "-u", "\$file"\],  
}

This code tells Sublime Text to use the python3 command when running the
currently open file. Make sure you use the path you found in the
previous step (on Windows, your path will look something like
C:/Python35/ python). Save the file as *Python3.sublime-build* in the
default directory that Sublime Text opens when you choose Save.

Open *hello_world.py*, select **Tools ▸ Build System ▸ Python3**, and
then select **Tools ▸ Build**. You should see your output in a terminal
embedded at the bottom of the Sublime Text window.

#### ***Customizing Sublime Text Settings***

Now we’ll set up Sublime Text to be as efficient as possible by
customizing the features mentioned at the beginning of this appendix.

##### **Converting Tabs to Spaces**

Go to **View ▸ Indentation** and make sure there’s a check mark next to
Indent Using Spaces. If there isn’t, check it.

##### **Setting the Line Length Indicator**

Go to **View ▸ Ruler**, and then click **80**. Sublime Text will place a
vertical line at the 80-character mark.

##### **Indenting and Unindenting Code Blocks**

To indent a block of code, highlight it and select **Edit ▸ Line ▸
Indent** or press CTRL-\]. To unindent a block of code, click **Edit ▸
Line ▸ Unindent** or press CTRL-\[.

##### **Commenting Out Blocks of Code**

To comment out a highlighted block of code, select **Edit ▸ Comment ▸
Toggle Comment**, or press CTRL-/. To uncomment a block of code, issue
the same command again.

### **IDLE**

Idle is Python’s default editor. It’s a little less intuitive to work
with than Geany or Sublime Text, but you’ll see references to it in
other tutorials aimed at beginners, so you might want to give it a try.

#### ***Installing IDLE on Linux***

If you’re using Python 3, install the idle3 package like this:

\$ sudo apt-get install idle3

If you’re using Python 2, install the idle package like this:

\$ sudo apt-get install idle

#### ***Installing IDLE on OS X***

If you used Homebrew to install Python, IDLE is probably already on your
system. In a terminal, run the command brew linkapps, which tells IDLE
how to find the correct Python interpreter on your system. You’ll then
find IDLE in your user applications folder.

Otherwise, go to *<https://www.python.org/download/mac/tcltk/>* and
follow the instructions there; you’ll also need to install a few
graphical packages that IDLE depends on.

#### ***Installing IDLE on Windows***

IDLE should have been installed automatically when you installed Python.
You should find it in your Start menu.

#### ***Customizing IDLE Settings***

Because it’s the default Python editor, most of the settings in IDLE are
already attuned to recommended Python settings: tabs are automatically
converted into spaces, and the line length indicator is set to 80
characters wide.

##### **Indenting and Unindenting Code Blocks**

To indent a block of code, highlight it and select **Format ▸ Indent
Region** or press CTRL-\]. To unindent a block of code, select **Format
▸ Dedent Region** or press CTRL-\[.

##### **Commenting Out Blocks of Code**

To comment out a block of code, highlight the code, and then select
**Format ▸ Comment Out Region**, or press ALT-3. To uncomment the code,
select **Format ▸ Uncomment Region**, or press ALT-4.

### **Emacs and vim**

Emacs and vim are two popular editors favored by many experienced
programmers because they’re designed to be used so your hands never have
to leave the keyboard. This makes writing, reading, and modifying code
very efficient once you learn how the editor works. It also means they
have a fairly steep learning curve.

Programmers will often recommend that you give them a try, but many
proficient programmers forget how much new programmers are already
trying to learn. It’s beneficial to be aware of these editors, but hold
off on using them until you’re comfortable writing and working with code
in a simpler editor that lets you focus on learning to program rather
than learning to use an editor.
