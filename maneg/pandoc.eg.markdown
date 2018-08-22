% PANDOC(eg) | Pandoc examples

NAME
====

**pandoc** -- convert from one filetype to another (but don't provide convenient
terminal documentation by default)


Examples
========

**pandoc -s input.markdown -o output.html**

: Converts input.markdown to output.html. The **-s** option sets *standalone*
mode, which indicates that complete processing is to be done if possible.

**pandoc -s --from markdown --to html -o output.html input.markdown**

: Converts input.markdown to output.html, explicitly setting filetypes. Use
this if the file extension doesn't determine the filetype, or doesn't align
with the filetype.


AUTHOR
======

David Lowry-Duda <david@lowryduda.com>

If you like this example file, check out the others (and make your own!).
