#!/usr/bin/env sh
npx gitmoji-changelog

git add -A
git commit -m ":bookmark: $1"
git tag $1
git push origin master --tags
npx conventional-github-releaser -p angular 
