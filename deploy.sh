#!/bin/bash
set -e
TAG="`git log -1 --pretty=%B`"
echo "Deploying with tag... $TAG"
sleep 2
hugo -D
cd public
git add .
git commit -m "$TAG"
git push
cd ..
