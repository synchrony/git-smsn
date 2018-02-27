#!/bin/bash

for dir in `cat list-of-repositories.txt`; do
  cd ${dir}
  echo "showing "${dir}
  git branch -a
  cd -
done
