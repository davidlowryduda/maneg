% GIT(eg) | git examples

NAME
====

**git** -- the stupid content tracker


Examples
========

**git log -10**

:   Display the 10 most recent parts of the gitlog.


Interaction with GitHub
=======================

To put a local repo on github
-----------------------------

1. Create a new repo on github.
2. Add the URL for the github repo with

    **git remote add origin <remote repo url>**

3. Push the changes with

    **git push -u origin master**

    The **-u** option sets the remote repo as upstream.

AUTHOR
======

David Lowry-Duda <david@lowryduda.com>

If you like this example file, check out the others (and make your own!).

SEE ALSO
========

**git(1)**
