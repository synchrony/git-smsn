#!/bin/bash

for dir in `cat list-of-repositories.txt`; do
  cd ${dir};
  echo "git diff for "${dir}
  git diff
  cd -
done
