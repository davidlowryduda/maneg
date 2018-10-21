% tlmgr(eg) | Extra documentation for tlmgr, texlive manager

NAME
====

**tlmgr** — the native TeX Live Manager

SYNOPSIS
========

| **tlmgr** \[**option...**] _action_ \[**option...**] \[**operand...**]


Examples
========

To search for a missing sty file
--------------------------------

1. Suppose the sty file is _file.sty_

2. Search for the file with

    **tlmgr search --global --file _file.sty_**

    This will inform you of the package name.

3. Install the package with

    **sudo /path/to/tlmgr install _package_**


SEE ALSO
========

**tlmgr(1)**
