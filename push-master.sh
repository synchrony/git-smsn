#!/bin/bash

for dir in private personal public universal; do
  cd ${dir}
  echo "pushing to master in "${dir}
  git push origin master
  cd -
done
