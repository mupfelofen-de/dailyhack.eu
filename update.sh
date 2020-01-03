#!/bin/sh

cd "$( cd "$(dirname "$0")" ; pwd -P )"

git fetch origin

if [ "$(git diff master..origin/master)" = "" ]; then
    echo "Nothing to do"
else
    git pull
    jekyll b
fi
