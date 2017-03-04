#!/bin/bash

read -p "Did you export the graph to vcs? " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]
then
  bash
    printf    "\n\n Beginning add.sh.\n"
    && add.sh\
    && printf "\n\nBeginning commit.sh.\n"
    && bash commit.sh\
    && printf "\n\nBeginning pull*.sh.\n"
    && bash pull-master-or-collab.sh\
    && printf "\n\nBeginning push*.sh.\n"
    && bash push-master-or-collab.sh\
    && mv ../it ../it.$(date +"%Y_%m_%d_%I_%M_%p")
fi
