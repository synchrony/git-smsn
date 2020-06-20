#!/bin/bash

for dir in private personal public universal; do
  cd ${dir}
  echo "showing "${dir}
  git branch -a
  cd -
done
