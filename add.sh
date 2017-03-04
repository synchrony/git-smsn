#!/bin/bash

for dir in private personal public universal; do
  cd ${dir}
  echo "adding new atoms in "${dir}
  git add -A
  cd -
done
