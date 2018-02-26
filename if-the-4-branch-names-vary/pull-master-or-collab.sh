#!/bin/bash

for dir in private personal; do
  cd ${dir}
  echo "pulling from origin/collab in "${dir}
  git pull origin collab
  cd -
done

for dir in public observatorio universal; do
  cd ${dir}
  echo "pulling from origin/master in "${dir}
  git pull origin master
  cd -
done
