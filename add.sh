#!/bin/bash

for dir in private personal public observatorio universal; do
  cd ${dir}
  echo "adding new atoms in "${dir}
  git ls-files --others | grep "\.smsn$" | xargs git add
  git add -A
  cd -
done
