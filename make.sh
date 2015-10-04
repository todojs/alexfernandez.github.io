#!/bin/bash
# Alex 2015-10-04: generate all files, add, commit and push

date=$(date -Iseconds -u)

pandoc index.md -o index.html
pandoc from-ground-to-cloud.md -o from-ground-to-cloud.html

git add -A
git commit -am "Make on $date"
git push

