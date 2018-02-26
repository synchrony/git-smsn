#!/bin/bash

for dir in private personal public observatorio universal; do
  cd ${dir};
  echo "git status for "${dir}
  git status
  cd -
done
