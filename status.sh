#!/bin/bash

for dir in `cat list-of-repositories.txt`; do
  cd ${dir};
  echo "git status for "${dir}
  git status
  cd -
done
