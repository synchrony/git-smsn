#!/bin/bash

if [ $# -eq 0 ] #no arguments
  then echo "branch name not given; failure"; exit 1
  else BRANCH=$1
fi

for dir in `cat list-of-repositories.txt`; do
  cd ${dir};
  echo "creating branch in "${dir}
  git branch ${BRANCH}
  cd -
done
