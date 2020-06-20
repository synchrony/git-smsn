#!/bin/bash

git clone file:///home/jeff/work/git_jbb/kb-extras.git
git clone -b collab file:///home/jeff/work/git_jbb/smsn-private.git
git clone -b collab file:///home/jeff/work/git_jbb/smsn-personal.git
git clone https://github.com/synchrony/data-public.git
git clone https://github.com/synchrony/data-universal.git
git clone https://github.com/JeffreyBenjaminBrown/observatorio-fiscal-smsn.git

mv kb-extras metadata
mv smsn-private private
mv smsn-personal personal
mv data-public public
mv data-universal universal
mv observatorio-fiscal-smsn observatorio
