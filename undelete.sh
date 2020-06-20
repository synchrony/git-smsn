#!/bin/bash

for DIR in public universal; do
  cd $DIR
  for I in `cat ../statuses/$DIR.grepped_deleted`
    do git checkout --theirs $I
  done
  cd ..
done
