#!/bin/bash

for dir in public universal; do
  cd ${dir}
  echo "pushing to master in "${dir}
  git push origin master
  cd -
done

for dir in private personal; do
  cd ${dir}
  echo "pushing to collab in "${dir}
  git push origin collab
  cd -
done
