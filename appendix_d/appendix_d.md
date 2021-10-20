# Using Git For Version Control

Version control software allows you to take snapshots of a project
whenever it’s in a working state. When you make changes to a project—for
example, when you implement a new feature—you have the option of
reverting back to a previous working state if the project’s current
state isn’t functioning well.

Using version control software gives you the freedom to work on
improvements and make mistakes without worrying about ruining your
project. This is especially critical in large projects, but can also be
helpful in smaller projects, even when you’re working on programs
contained in a single file.

In this appendix you’ll learn to install Git and use it for version
control in the programs you’re working on now. Git is the most popular
version control software in use today. Many of its advanced tools help
teams collaborate on large projects, but its most basic features also
work well for solo developers. Git implements version control by
tracking the changes made to every file in a project; if you make a
mistake, you can just return to a previously saved state.

### **Installing Git**

Git runs on all operating systems, but there are different approaches to
installing it on each system. The following sections provide specific
instructions for each operating system.

#### ***Installing Git on Linux***

To install Git on Linux, enter the following:

\$ sudo apt-get install git

That’s it. You can now use Git in your projects.

#### ***Installing Git on OS X***

Git may already be installed on your system, so try issuing the command
git --version. If you see output listing a specific version number, Git
is installed on your system. If you see a message prompting you to
install or update Git, simply follow the onscreen directions.

You can also go to *<https://git-scm.com/>*, follow the Downloads link,
and click an appropriate installer for your system.

#### ***Installing Git on Windows***

You can install Git for Windows from *<http://msysgit.github.io/>*.

#### ***Configuring Git***

Git keeps track of who makes changes to a project, even when there’s
only one person working on the project. To do this, Git needs to know
your username and email. You have to provide a username, but feel free
to make up a fake email address:

\$ git config --global user.name "username"  
\$ git config --global user.email "username@example.com"

If you forget this step, Git will prompt you for this information when
you make your first commit.

### **Making a Project**

Let’s make a project to work with. Create a folder somewhere on your
system called *git_practice*. Inside the folder, make a simple Python
program:

*hello_world.py*

print("Hello Git world!")

We’ll use this program to explore Git’s basic functionality.

### **Ignoring Files**

Files with the extension *.pyc* are automatically generated from *.py*
files, so we don’t need Git to keep track of them. These files are
stored in a directory called *\_\_pycache\_\_*. To tell Git to ignore
this directory, make a special file called *.gitignore*—with a dot at
the beginning of the filename and no file extension—and add the
following line to it:

*.gitignore*

\_\_pycache\_\_/

This tells Git to ignore any file in the *\_\_pycache\_\_* directory.
Using a *.gitignore* file will keep your project clutter free and easier
to work with.

**NOTE**

*If you’re using Python 2.7, replace this line with* \*.pyc*. Python 2.7
doesn’t create a* \_\_pycache\_\_ *directory; each* .pyc *file is stored
in the same directory as its corresponding* .py *file. The asterisk
tells Git to ignore any file with the* .pyc *extension.*

You might need to modify your text editor’s settings so it will show
hidden files in order to open *.gitignore*. Some editors are set to
ignore filenames that begin with a dot.

### **Initializing a Repository**

Now that you have a directory containing a Python file and a
*.gitignore* file, you can initialize a Git repository. Open a terminal,
navigate to the *git_practice* folder, and run the following command:

git_practice\$ git init  
Initialized empty Git repository in git_practice/.git/  
git_practice\$

The output shows that Git has initialized an empty repository in
*git_practice*. A *repository* is the set of files in a program that Git
is actively tracking. All the files Git uses to manage the repository
are located in the hidden directory *.git/*, which you won’t need to
work with at all. Just don’t delete that directory, or you’ll lose your
project’s history.

### **Checking the Status**

Before doing anything else, let’s look at the status of the project:

   git_practice\$ git status  
➊ # On branch master  
   #  
   # Initial commit  
   #  
➋ # Untracked files:  
   #   (use "git add \<file>..." to include in what will be committed)  
   #  
   #   .gitignore  
   #   hello_world.py  
   #  
➌ nothing added to commit but untracked files present (use "git add" to
track)  
   git_practice\$

In Git, a *branch* is a version of the project you’re working on; here
you can see that we’re on a branch named master ➊. Each time you check
your project’s status, it should say that you’re on the branch master.
We then see that we’re about to make the initial commit. A *commit* is a
snapshot of the project at a particular point in time.

Git informs us that untracked files are in the project ➋, because we
haven’t told it which files to track yet. Then we’re told that there’s
nothing added to the current commit, but there are untracked files
present that we might want to add to the repository ➌.

### **Adding Files to the Repository**

Let’s add the two files to the repository, and check the status again:

➊ git_practice\$ git add .  
➋ git_practice\$ git status  
   # On branch master  
   #  
   # Initial commit  
   #  
   # Changes to be committed:  
   #   (use "git rm --cached \<file>..." to unstage)  
   #  
➌ #   new file:   .gitignore  
   #   new file:   hello_world.py  
   #  
   git_practice\$

The command git add . adds all files within a project that are not
already being tracked to the repository ➊. It doesn’t commit the files;
it just tells Git to start paying attention to them. When we check the
status of the project now, we can see that Git recognizes some changes
that need to be committed ➋. The label *new file* means these files were
newly added to the repository ➌.

### **Making a Commit**

Let’s make the first commit:

➊ git_practice\$ git commit -m "Started project."  
➋ \[master (root-commit) c03d2a3\] Started project.  
➌  2 files changed, 1 insertion(+)  
    create mode 100644 .gitignore  
    create mode 100644 hello_world.py  
➍ git_practice\$ git status  
   # On branch master  
   nothing to commit, working directory clean  
   git_practice\$

We issue the command git commit -m "message" ➊ to take a snapshot of the
project. The -m flag tells Git to record the message that follows
("Started project.") in the project’s log. The output shows that we’re
on the master branch ➋ and that two files have changed ➌.

When we check the status now, we can see that we’re on the master
branch, and we have a clean working directory ➍. This is the message you
want to see each time you commit a working state of your project. If you
get a different message, read it carefully; it’s likely you forgot to
add a file before making a commit.

### **Checking the Log**

Git keeps a log of all commits made to the project. Let’s check the log:

git_practice\$ git log  
commit a9d74d87f1aa3b8f5b2688cb586eac1a908cfc7f  
Author: Eric Matthes \<eric@example.com>  
Date:   Mon Mar 16 07:23:32 2015 -0800  
  
    Started project.  
git_practice\$

Each time you make a commit, Git generates a unique, 40-character
reference ID. It records who made the commit, when it was made, and the
message recorded. You won’t always need all of this information, so Git
provides an option to print a simpler version of the log entries:

git_practice\$ git log --pretty=oneline  
a9d74d87f1aa3b8f5b2688cb586eac1a908cfc7f Started project.  
git_practice\$

The --pretty=oneline flag provides the two most important pieces of
information: the reference ID of the commit and the message recorded for
the commit.

### **The Second Commit**

To see the real power of version control, we need to make a change to
the project and commit that change. Here we’ll just add another line to
*hello_world.py*:

*hello_world.py*

print("Hello Git world!")  
print("Hello everyone.")

If we check the status of the project, we’ll see that Git has noticed
the file that changed:

   git_practice\$ git status  
➊ # On branch master  
   # Changes not staged for commit:  
   #   (use "git add \<file>..." to update what will be committed)  
   #   (use "git checkout -- \<file>..." to discard changes in working
directory)  
   #  
➋ #   modified:   hello_world.py  
   #  
➌ no changes added to commit (use "git add" and/or "git commit -a")  
   git_practice\$

We see the branch we’re working on ➊, the name of the file that was
modified ➋, and that no changes have been committed ➌. Let’s commit the
change and check the status again:

➊ git_practice\$ git commit -am "Extended greeting."  
   \[master 08d4d5e\] Extended greeting.  
    1 file changed, 1 insertion(+)  
➋ git_practice\$ git status  
   # On branch master  
   nothing to commit, working directory clean  
➌ git_practice\$ git log --pretty=oneline  
   08d4d5e39cb906f6cff197bd48e9ab32203d7ed6 Extended greeting.  
   be017b7f06d390261dbc64ff593be6803fd2e3a1 Started project.  
   git_practice\$

We make a new commit, passing the -am flag when we use the command git
commit ➊. The -a flag tells Git to add all modified files in the
repository to the current commit. (If you create any new files between
commits, simply reissue the git add . command to include the new files
in the repository.) The -m flag tells Git to record a message in the log
for this commit.

When we check the status of the project, we see that we once again have
a clean working directory ➋. Finally, we see the two commits in the log
➌.

### **Reverting a Change**

Now let’s see how to abandon a change and revert back to the previous
working state. First, add a new line to *hello_world.py*:

*hello_world.py*

print("Hello Git world!")  
print("Hello everyone.")  
  
print("Oh no, I broke the project!")

Save and run this file.

We check the status and see that Git notices this change:

   git_practice\$ git status  
   # On branch master  
   # Changes not staged for commit:  
   #   (use "git add \<file>..." to update what will be committed)  
   #   (use "git checkout -- \<file>..." to discard changes in working
directory)  
   #  
➊ #   modified:   hello_world.py  
   #  
   no changes added to commit (use "git add" and/or "git commit -a")  
   git_practice\$

Git sees that we modified *hello_world.py* ➊, and we can commit the
change if we want to. But this time, instead of committing the change,
we want to revert back to the last commit when we knew our project was
working. We won’t do anything to *hello_world.py*; we won’t delete the
line or use the Undo feature in the text editor. Instead, enter the
following commands in your terminal session:

git_practice\$ git checkout .  
git_practice\$ git status  
# On branch master  
nothing to commit, working directory clean  
git_practice\$

The command git checkout allows you to work with any previous commit.
The command git checkout . abandons any changes made since the last
commit and restores the project to the last committed state.

When you return to your text editor, you’ll see that *hello_world.py*
has changed back to this:

print("Hello Git world!")  
print("Hello everyone.")

Although going back to a previous state may seem trivial in this simple
project, if we were working on a large project with dozens of modified
files, all of the files that had changed since the last commit would be
reverted. This feature is incredibly useful: you can make as many
changes as you want when implementing a new feature, and if they don’t
work, you can discard them without harming the project. You don’t have
to remember those changes and manually undo them. Git does all of that
for you.

**NOTE**

*You might have to click in your editor’s window to refresh the file and
see the previous version.*

### **Checking Out Previous Commits**

You can check out any commit in your log, not just the most recent, by
including the first six characters of the reference ID instead of a dot.
By checking it out, you can review an earlier commit, and you’re able to
then return to the latest commit or abandon your recent work and pick up
development from the earlier commit:

   git_practice\$ git log --pretty=oneline  
   08d4d5e39cb906f6cff197bd48e9ab32203d7ed6 Extended greeting.  
   be017b7f06d390261dbc64ff593be6803fd2e3a1 Started project.  
   git_practice\$ git checkout be017b  
   Note: checking out 'be017b'.  
  
➊ You are in 'detached HEAD' state. You can look around, make
experimental  
   changes and commit them, and you can discard any commits you make in
this  
   state without impacting any branches by performing another
checkout.  
  
   If you want to create a new branch to retain commits you create, you
may  
   do so (now or later) by using -b with the checkout command again.
Example:  
  
     git checkout -b new_branch_name  
  
   HEAD is now at be017b7... Started project.  
   git_practice\$

When you check out a previous commit, you leave the master branch and
enter what Git refers to as a *detached HEAD* state ➊. *HEAD* is the
current state of the project; we are *detached* because we’ve left a
named branch (master, in this case).

To get back to the master branch, you check it out:

git_practice\$ git checkout master  
Previous HEAD position was be017b7... Started project.  
Switched to branch 'master'  
git_practice\$

This brings you back to the master branch. Unless you want to work with
some more advanced features of Git, it’s best not to make any changes to
your project when you’ve checked out an old commit. However, if you’re
the only one working on a project and you want to discard all of the
more recent commits and go back to a previous state, you can reset the
project to a previous commit. Working from the master branch, enter the
following:

➊ git_practice\$ git status  
   # On branch master  
   nothing to commit, working directory clean  
➋ git_practice\$ git log --pretty=oneline  
   08d4d5e39cb906f6cff197bd48e9ab32203d7ed6 Extended greeting.  
   be017b7f06d390261dbc64ff593be6803fd2e3a1 Started project.  
➌ git_practice\$ git reset --hard be017b  
   HEAD is now at be017b7 Started project.  
➍ git_practice\$ git status  
   # On branch master  
   nothing to commit, working directory clean  
➎ git_practice\$ git log --pretty=oneline  
   be017b7f06d390261dbc64ff593be6803fd2e3a1 Started project.  
   git_practice\$

We first check the status to make sure we’re on the master branch ➊.
When we look at the log, we see both commits ➋. We then issue the git
reset --hard command with the first six characters of the reference ID
of the commit we want to revert to permanently ➌. We check the status
again and see we’re on the master branch with nothing to commit ➍. When
we look at the log again, we see that we’re at the commit we wanted to
start over from ➎.

### **Deleting the Repository**

Sometimes you’ll mess up your repository’s history and won’t know how to
recover it. If this happens, first consider asking for help using the
methods discussed in [Appendix C](app03.html). If you can’t fix it
and you’re working on a solo project, you can continue working with the
files but get rid of the project’s history by deleting the *.git*
directory. This won’t affect the current state of any of the files, but
it will delete all commits, so you won’t be able to check out any other
states of the project.

To do this, either open a file browser and delete the *.git* repository
or do it from the command line. Afterwards, you’ll need to start over
with a fresh repository to start tracking your changes again. Here’s
what this entire process looks like in a terminal session:

➊ git_practice\$ git status  
   # On branch master  
   nothing to commit, working directory clean  
➋ git_practice\$ rm -rf .git  
➌ git_practice\$ git status  
   fatal: Not a git repository (or any of the parent directories):
.git  
➍ git_practice\$ git init  
   Initialized empty Git repository in git_practice/.git/  
  
➎ git_practice\$ git status  
   # On branch master  
   #  
   # Initial commit  
   #  
   # Untracked files:  
   #   (use "git add \<file>..." to include in what will be committed)  
   #  
   #   .gitignore  
   #   hello_world.py  
   #  
   nothing added to commit but untracked files present (use "git add" to
track)  
➏ git_practice\$ git add .  
   git_practice\$ git commit -m "Starting over."  
   \[master (root-commit) 05f5e01\] Starting over.  
    2 files changed, 2 insertions(+)  
    create mode 100644 .gitignore  
    create mode 100644 hello_world.py  
➐ git_practice\$ git status  
   # On branch master  
   nothing to commit, working directory clean  
   git_practice\$

We first check the status and see that we have a clean working directory
➊. Then we use the command rm -rf .git to delete the *.git* directory
(rmdir /s .git on Windows) ➋. When we check the status after deleting
the *.git* folder, we’re told that this is not a Git repository ➌. All
the information Git uses to track a repository is stored in the *.git*
folder, so removing it deletes the entire repository.

We’re then free to use git init to start a fresh repository ➍. Checking
the status shows that we’re back at the initial stage, awaiting the
first commit ➎. We add the files and make the first commit ➏. Checking
the status now shows us that we’re on the new master branch with nothing
to commit ➐.

Using version control takes a bit of practice, but once you start using
it you’ll never want to work without it again.
