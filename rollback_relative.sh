#!/bin/bash

if [ $# -eq 0 ] #no arguments
  then echo "branch name not given; failure"; exit 1
  else DIFF=$1
fi
 
for dir in private personal public universal; do
  cd ${dir};
  echo "rolling back "${dir}
  git revert HEAD~${DIFF}
  cd -
done
