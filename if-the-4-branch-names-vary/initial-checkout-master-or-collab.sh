#!/bin/bash

# PITFALL: I think this is obsolete, and that I should favor
  # "fresh-clones.sh" instead. --jbb 2020 06 20

BK=/tmp/git-smsn-bk

echo "moving any existing local repositories to "${BK}
rm -rf $BK
mkdir $BK
mv private $BK
mv personal $BK
mv public $BK
mv universal $BK

echo "cloning repositories"
git clone file:///home/jeff/git_jbb/smsn-private.git private -b collab
git clone file:///home/jeff/git_jbb/smsn-personal.git personal -b collab
git clone https://github.com/synchrony/data-public.git public -b master
git clone https://github.com/synchrony/data-universal.git universal -b master

echo "done"
