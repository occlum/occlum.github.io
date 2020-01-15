#!/bin/bash

# please excute on gh-pages branch

temp=`mktemp` && \
npm run generate && \
cp dist/* $temp/ && \
git checkout master && \
cp $temp/* ./ && \
git add . && \
git commit -m "build"
