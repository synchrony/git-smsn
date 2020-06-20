##!/bin/bash
#
#echo "Did you export the graph to the VCS folders here?"
#read -p "Did you then run lost-nodes.sh to verify nothing disappeared?" -n 1 -r
#if [[ $REPLY =~ ^[Yy]$ ]]
#then
#  printf "\n\nBeginning add.sh.\n"\
#    && bash add.sh\
#    && echo "added" >> cyc-rec.txt\
#    \
#    && printf "\n\nBeginning commit.sh.\n"\
#    && bash commit.sh\
#    && echo "committed" >> cyc-rec.txt\
#    \
#    && printf "\n\nBeginning pull*.sh.\n"\
#    && bash pull-master-or-collab.sh\
#    && echo "pulled" >> cyc-rec.txt\
#    \
#    && printf "\n\nBeginning push*.sh.\n"\
#    && bash push-master-or-collab.sh\
#    && echo "pushed" >> cyc-rec.txt\
#    \
#    && mv ../neo4j ../neo4j.$(date +"%Y_%m_%d_%I_%M_%p")
#fi
