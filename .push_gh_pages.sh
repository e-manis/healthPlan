#!/bin/bash

# set global script vars used to access the repository
GH_REPO="@github.com/e-manis/healthPlan.git"
FULL_REPO="https://$GH_TOKEN$GH_REPO"
# clone the gh-pages branch
git clone --branch gh-pages ${FULL_REPO} deploy
# tell git who we are
cd deploy
git config user.name "e-manis"
git config user.email "travis"
# copy the build contents
rm -rf *
cp -rf ../app/pub/* .
# commit back to github
REV=$(git rev-parse HEAD)
git add -A .
git commit --allow-empty -m "Travis-ci build for commit: $REV"
git push origin gh-pages
