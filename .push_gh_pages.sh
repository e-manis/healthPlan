#!/bin/bash

GH_REPO="@github.com/e-manis/healthPlan.git"
FULL_REPO="https://$GH_TOKEN$GH_REPO"

# clone the gh-pages branch
git clone --branch gh-pages ${FULL_REPO} deploy
# copy the build contents
cd deploy
rm -rf *
cp -rf ../app/pub/* .
# commit back to github
REV=$(git rev-parse HEAD)
git add -A .
git commit --allow-empty -m "Travis-ci build for commit: $REV"
git push origin gh-pages
