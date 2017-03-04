#!/bin/bash

read -p "Did you export the graph to vcs? " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]
then
  bash add.sh\
    && bash commit.sh\
    && bash pull-master-or-collab.sh\
    && bash push-master-or-collab.sh\
    && mv ../it ../it.$(date +"%Y_%m_%d_%I_%M_%p")
fi
