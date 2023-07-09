#!/bin/bash

for dir in `cat list-of-repositories.txt`; do
  cd ${dir}
  echo "pulling from origin/main in "${dir}
  git pull origin main
  cd -
done
