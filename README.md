## What it is
These are scripts for versioning Semantic Synchrony (SmSn) data with Git, so that you can share some of your graph with others.

## How it works
These are intended only as a model -- they are tailored to my system, and will not work on yours without some modification (see "things to tweak", below).

In the SmSn VCS model, you define four separate Git repositories, one for each sharability level: private, personal, public and universal.
For instance, you might keep the private and personal repositories on your local machine, and the public and universal ones on Git.

## How to use it: The data refresh cycle
* In SmSn, work with the graph until you want to preserve your changes. Depending on your tastes that might mean daily, or randomly, ...
* In SmSn, export to VCS (in Emacs brain-mode, use `M-x brain-export-vcs-prompt`).
* Shut down Gremlin Server.
(Or leave it running, but don't edit the graph again until you have re-imported it (below).
Edits made between now and then will be lost.)
* Get some reports: In a shell, go to the VCS folder, and run "lost-nodes.sh" to see whether any nodes have disappeared.
(For each note in SmSn, there exists a corresponding file in the VCS folder.)
For more detail, run `bash status.sh` to see what files have been changed, added, deleted.
* If those reports look good, run `bash cycle-master.sh`.
That performs each of the following, unless a step fails, in which case the ones after it are not performed either.
    * Commits the latest changes.
    * Pulls from the four repositories, adding everyone else's recent changes.
    * If there are no conflicts, it pushes to the four repositories.
	Otherwise the user will have to manually correct them.
    * Renames the neo4j folder from "it" to "it" with today's date and time appended.
	This prevents Gremlin Server from finding it, which prevents the user from continuing to use that neo4j data -- which is good because it became obsolete upon pulling changes from the graph's other users.
* Restart Gremlin Server.
(Emacs can continue running.)
* In Semantic Synchrony, import from VCS (in Emacs brain-mode, use `M-x brain-import-vcs-prompt`).

### Things to tweak
* The above assumes the working branch for each of the four repositories is called "master".
See if-the-4-branch-names-vary/ for what to do if they don't all have the same name.
* In the last step of cycle-master.sh, where it renames the old neo4j folder, you'll have to make sure it renames the right thing.
My neo4j folder is called "it" and resides one folder up from these scripts, hence "../it".
Where you see "../it" you'll need to substitute a path appropriate to your system.
