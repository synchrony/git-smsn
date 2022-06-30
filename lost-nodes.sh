#!/bin/bash

MAIN_DIR=$PWD

DELS=/tmp/smsn-deleted-files # to collect the deleted files from the 4 repos
ADDS=/tmp/smsn-new-files # to collect the added files from the 4 repos
echo "" > $DELS
echo "" > $ADDS
for DIR in `cat list-of-repositories.txt`; do
  cd $DIR
  git ls-files -d >> $DELS
  git ls-files -o >> $ADDS
  cd $MAIN_DIR
done
sort $DELS > $DELS.sorted
sort $ADDS > $ADDS.sorted
comm -23 $DELS.sorted $ADDS.sorted
echo "If you see any node addresses above, then something disappeared."
