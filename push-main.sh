#!/bin/bash

for dir in `cat list-of-repositories.txt`; do
  cd ${dir}
  echo "pushing to main in "${dir}
  git push origin main
  cd -
done
