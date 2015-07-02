#!/bin/bash
set -ev
HASH=$(git rev-parse --short HEAD)
git clone --branch=gh-pages https://github.com/polybuildr/blog.git blog
petroglyph --regenerate
cd blog
if [ -n "$(git status --porcelain)" ]; then
    git config user.name "Travis CI"
    git config user.email travis@travis-ci.org
    git add .
    git commit -m "Built blog from commit $HASH"
    git push --force --quiet https://${GH_TOKEN}@github.com/polybuildr/blog.git > /dev/null 2>&1
else
    echo "No changes to push."
fi
