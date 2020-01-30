% AWK(1) Version 1.0 | AWK Examples

AWK
====

**awk** — saves time and keystrokes


SYNOPSIS
========

| **awk** \[(stuff)\}


EXAMPLES
========

- **cat file | awk '!seen[$0]++ { print }'**

  Print only unique lines from file (or from input stream). This works by
  creating an associative array `seen`. Since it is `++`ed, awk decides it
  contains integers and initializes them to 0.

  Note that it is possible to remove the `{ print }` part, since by default awk
  prints.


SEE ALSO
========

**awk(1)**, **bash(1)**
