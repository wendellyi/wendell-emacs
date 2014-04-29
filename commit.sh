#! /bin/bash

COMMIT_PTR=$1
PRO_NAME=$2

if [ -z "$COMMIT_PTR" -o -z "$PRO_NAME" ]; then
    echo "parameter error"
fi

git add .
git commit
git remote add $COMMIT_PTR https://github.com/wendellyi/$PRO_NAME.git
git push $COMMIT_PTR master
