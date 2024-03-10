#!/bin/bash

echo "======="

git config --globar user.name "${GITHUB_ACTOR}"
git config --globar user.email "${INPUT_EMAIL}"
git config --globar --add safe.directory /github/workspace

python3 /usr/bin/feed.py

git add -A && git commit -m "update feed"
git push --set-upstream origin main


echo "======="
