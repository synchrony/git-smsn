#!/bin/bash

BK=/tmp/git-smsn-bk

echo "moving any existing local repositories to "${BK}
rm -rf $BK
mkdir $BK
mv private $BK
mv personal $BK
mv public $BK
mv universal $BK

echo "checking out repositories"
git clone file:///home/jeff/work/git_jbb/smsn-private.git private -b collab
git clone file:///home/jeff/work/git_jbb/smsn-personal.git personal -b collab
git clone https://github.com/joshsh/smsn-public.git public -b master
git clone https://github.com/joshsh/smsn-universal.git universal -b master

echo "done"
