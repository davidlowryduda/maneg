% CUT(eg) | cut examples

NAME
====

**cut** -- remove sections from each line of files


Examples
========

**cut -f2- -d' ' filename**

:   Print all fields but the first one from *filename*. To omit more fields,
change the *2* to a different number.

    Explicitly, **-f2-** chooses fields 2 and beyond, **-d' '** sets the
delimiter to a space, and **filename** denotes the input filename.


AUTHOR
======

David Lowry-Duda <david@lowryduda.com>

If you like this example file, check out the others (and make your own!).

SEE ALSO
========

**cut(1)**
