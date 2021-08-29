#!/bin/bash

git add .

read -p "Enter commit message: " COMMIT_MESSAGE
git commit -m "$COMMIT_MESSAGE"

git push -u origin master
