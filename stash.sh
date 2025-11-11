#!/bin/bash

for dir in `cat list-of-repositories.txt`; do
  cd ${dir};
  echo "stashing changes in "${dir}
  git stash
  cd -
done
