#!/bin/bash

BK=/tmp/joshkb-git-bk

echo "moving any existing local repositories to "${BK}
rm -rf $BK
mkdir $BK
mv private $BK
mv personal $BK
mv public $BK
mv universal $BK

echo "checking out repositories"
git clone file:///home/jeff/work/git_jbb/smsn-private.git private
git clone file:///home/jeff/work/git_jbb/smsn-personal.git personal
git clone https://github.com/joshsh/smsn-public.git public
git clone https://github.com/joshsh/smsn-universal.git universal

echo "done"
