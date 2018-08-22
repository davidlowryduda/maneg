% MAN(eg) | Making Personal man Pages

NAME
====

**man** — saves time and lives, but has too few examples.

SYNOPSIS
========

Make your own man pages to remember everything better, with an additional
**examples** section to really remember useful tidbits.

DESCRIPTION
===========

Typical Usage
-------------

Typing

|     **man eg \[commandname]**

will bring up the additional custom man page in the **eg** section.

It is also possible (and perhaps even a good idea) to add man pages in typical
sections (like 1, the prototypical section) --- these can be added to either
`/usr/local/share/man/man1` (or equivalently for sections aside from 1) or to
`~/TaskList/man/man1` (or wherever additional MANPATHs are set).


Adding and Editing
------------------

To author a new **eg** section manpage, start with the template file in
`~/TaskList/man/maneg/` and adjust it appropriately. See the other examples
there for more details.

Saving the file as `newman.eg.markdown` (where you will use your command
instead of **newman**), convert it to man-style using pandoc through

|     **pandoc -s --from markdown --to man -o newman.eg newman.eg.markdown**

and then it is done. Test that it's available through

|     **man eg newman**

and marvel at its greatness.

To edit a manpage, instead edit the appropriate markdown file and then rerun
pandoc on it. NOTE THAT THE MARKDOWN FILES ARE SACRED (don't touch the
post-formatted files).


Initial Setup
-------------

To first create manpages in this way, set two environmental variables (perhaps
in your .bashrc).

|     **export MANPATH="\$MANPATH:\$HOME/TaskList/man"**
|     **export MANSECT="1:n:l:8:3:2:3posix:3pm:3perl:5:4:9:6:7:eg"**

**MANPATH** sets where manpages are searched for, and **MANSECT** defines
the allowed sections (and order of checking). This is the default **MANSECT**
with the **eg** section appended.

It is now possible to have manpages in `~/TaskList/man`. Note that manpages
should be saved in

|     ~/TaskList/man/man\$SECTION/command.\$SECTION

in order to be retrieved by `man $SECTION command`. Thus the file

|     ~/TaskList/man/maneg/man.eg

will be called with

|     **man eg man**

and further files should named with this convention. See the section on
*Adding and Editing* for more details on how to edit these manpages.

NOTES
=====

It may be a good idea to automate the pandoc-conversion process through a
script, but this isn't currently done. It is now important to remember the
incantation.

AUTHOR
======

David Lowry-Duda <david@lowryduda.com>

SEE ALSO
========

**man(1)**, **manpath(1)**
