#!/bin/bash

DELS=temp.deleted-files # to collect the deleted files from the 4 repos
ADDS=temp.new-files # to collect the added files from the 4 repos
echo "" > $DELS
echo "" > $ADDS
for DIR in private personal public universal; do
  cd $DIR
  git ls-files -d >> ../$DELS
  git ls-files -o >> ../$ADDS
  cd ..
done
sort $DELS > $DELS.sorted
sort $ADDS > $ADDS.sorted
comm $DELS.sorted $ADDS.sorted
echo "If you see any node addresses in the first column above, then something disappeared."
