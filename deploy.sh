#!/bin/bash

npm run generate
git add dist
git commit -m "build"
git subtree push --prefix dist origin gh-pages
