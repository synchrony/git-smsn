#!/bin/bash

for dir in private personal public universal; do
  cd ${dir};
  echo "git diff for "${dir}
  git diff
  cd -
done
