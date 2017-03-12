#!/bin/bash

echo "Did you export the graph to the VCS folders here?"
read -p "Did you then run lost-nodes.sh to verify nothing disappeared?" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
  printf "\n\nBeginning add.sh.\n"\
    && bash add.sh\
    && printf "\n\nBeginning commit.sh.\n"\
    && bash commit.sh\
    && printf "\n\nBeginning pull*.sh.\n"\
    && bash pull-master.sh\
    && printf "\n\nBeginning push*.sh.\n"\
    && bash push-master.sh\
    && mv ../it ../it.$(date +"%Y_%m_%d_%I_%M_%p")

    echo "Done. Now you can clear your graph and import from this directory."
fi

