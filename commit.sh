#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "using default commit message"
    MSG="$(whoami)'s recent changes"
else
    MSG=$1
fi

for dir in private personal public observatorio universal; do
  cd ${dir};
  echo "committing "${dir}
  git commit -a -m "${MSG}"
  cd -
done
