#!/bin/bash

npm run generate
git add dist
git commit -m "build"
git subtree pull --prefix dist origin master
git subtree push --prefix dist origin master
