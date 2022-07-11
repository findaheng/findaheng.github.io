#!/bin/bash

set -e

if [ "$1" == "-m" ]; then 
  MSG="$2"
else
  MSG="Deployed site changes"
fi

git add -f dist
git commit --amend -m "$MSG"
git push origin `git subtree split --prefix dist main`:gh-pages --force
git reset origin/main
