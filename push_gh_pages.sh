#!/bin/bash

rm -rf out || exit 0;
mkdir out;

GH_REPO="@github.com/e-manis/healthPlan.git"
FULL_REPO="https://$GH_TOKEN$GH_REPO"

git config user.name "e-manis-travis"
git config user.email "travis"
git clone $FULL_REPO

