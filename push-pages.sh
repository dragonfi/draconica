#!/bin/sh

set -x

MSG="$(git log -1 --pretty=%B)"

cd public/
git status

read -p "Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Pushing...";
else
  echo "Exiting...";
  exit 1
fi

git add -A
git commit -am "$MSG"
git push
