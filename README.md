## What it is
These are scripts for versioning Semantic Synchrony (SmSn) data with Git, so that you can share some of your graph with others.

## How it works
These are intended only as a model -- they are tailored to my system, and will not work on yours without some modification (see "things to tweak", below).

In the SmSn VCS model, you define four separate Git repositories, one for each sharability level: private, personal, public and universal. For instance, you might keep the private and personal repositories on your local machine, and the public and universal ones on Git. 

## How to use it: The data refresh cycle
* In SmSn, work with the graph until you want to preserve your changes. Depending on your tastes that might mean daily, or randomly, ...
* In SmSn, export to VCS (in Emacs brain-mode, use `M-x brain-export-vcs-prompt`).
* Shut down Gremlin Server. (Or leave it running, but recognize that until you have imported the graph (below) your edits will not be preserved.)
* In a shell, go to the VCS folder, and run `bash status.sh` to see what files have been changed, added, deleted. For each note in SmSn, there exists a corresponding file in the VCS folder.
* If that looks good, run `bash cycle-master-or-collab.sh`. That performs each of the following, unless a step fails, in which case the ones after it are not performed either.
    * Commits the latest changes.
    * Pulls from the four repositories, adding everyone else's recent changes.
    * If there are no conflicts, it pushes to the four repositories. Otherwise the user will have to manually correct them.
    * Renames the neo4j folder from "it" to "it" with today's date and time appended. This prevents Gremlin Server from finding it, which prevents the user from continuing to use that neo4j data -- which is good because it became obsolete upon pulling changes from the graph's other users.
* Restart Gremlin Server. (Emacs can continue running.)
* In Semantic Synchrony, import from VCS (in Emacs brain-mode, use `M-x brain-import-vcs-prompt`).

### Things to tweak
* cycle-master-or-collab.sh uses two scripts that need changing: pull-master-or-collab.sh and push-master-or-collab.sh. By historical accident, I use the branch name "master" for my two private repositories, and "master" for the two public ones. You'll probably want it to use "master" for all four of them, at least initially.
* In the last step of cycle-master-or-collab.sh, where it renames the old neo4j folder, you'll have to make sure it renames the right thing. My neo4j folder is called "it" and resides one folder up from these scripts, so in the two places where I've written "../it" you'll need to put what is appropriate to your system.
