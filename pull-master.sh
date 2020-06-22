#!/bin/bash

for dir in `cat list-of-repositories.txt`; do
  cd ${dir}
  echo "pulling from origin/master in "${dir}
  git pull origin master
  cd -
done
