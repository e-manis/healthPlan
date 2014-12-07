#!/bin/bash

GH_REPO="@github.com/e-manis/healthPlan.git"
FULL_REPO="https://$GH_TOKEN$GH_REPO"

echo "post install test"
git checkout gh-pages
cp -rf app/pub/* .
rm -rf app/

git status

