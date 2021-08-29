#!/bin/bash

git add .

read -p 'Enter commit message: ' COMMIT_MESSAGE
git commit -m "$COMMIT_MESSAGE"

git push -u origin master
expect {
  "Username" {
    send "$GIT_USERNAME\n"
  }
  "Password" {
    send "$GIT_ACCESS_TOKEN\n"
  }
}
