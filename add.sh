#!/bin/bash

for dir in `cat list-of-repositories.txt`; do
  cd ${dir}
  echo "adding new atoms in "${dir}
  git ls-files --others | grep "\.smsn$" | xargs git add
  git add -A
  cd -
done
