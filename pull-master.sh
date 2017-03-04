#!/bin/bash

for dir in private personal public universal; do
  cd ${dir}
  echo "pulling from origin/master in "${dir}
  git pull origin master
  cd -
done
