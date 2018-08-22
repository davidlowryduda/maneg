#!/bin/sh

# gen_manpages.sh
# David Lowry-Duda
#
# This script recreates all manpages in the directory by rerunning pandoc
# on them. It is called through
#
#     $ bash gen_manpages.sh
#
# while in the directory.
#
# CAUTION: No attention is paid to clobbering files! Only update
# the markdown files.

# Check that this file is visible, otherwise exit.
if ! [ -s gen_manpages.sh ]; then exit 1; fi

for f in *.eg.markdown; do
  echo Converting $f ...
  #echo From $f To $(basename "$f" .markdown)
  output=$(basename "$f" .markdown)
  pandoc -s --from markdown --to man -o $output $f
done
