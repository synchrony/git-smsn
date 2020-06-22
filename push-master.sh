#!/bin/bash

for dir in `cat list-of-repositories.txt`; do
  cd ${dir}
  echo "pushing to master in "${dir}
  git push origin master
  cd -
done
