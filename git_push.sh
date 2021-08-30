#!/bin/bash

git add .

read -p 'Enter commit message: ' COMMIT_MESSAGE
git commit -m "$COMMIT_MESSAGE"

expect -c "
spawn git push -u origin master
expect \"Username\" ; send \"$GIT_USERNAME\n\"
expect \"Password\" ; send \"$GIT_ACCESS_TOKEN\n\"
expect \"$\"
exit 0
"
