# Installation
Run install.sh. This moves post-merge and pre-commit files to .git/hooks.

post-merge automates updating the database after an update. The update file in the directory is used for checking purposes.

pre-commit automatically updates all submodules and add their updates to the commit.

# Usage
Run start.sh to start and/or update the server.

Run ssh.sh to ssh into the server.

Run stop.sh to stop and dump the server if you choose.

Run update_submodules.sh to update the submodules (database, themes, plugins). This doesn't automatically commit them.

# How automation is implemented
The post-merge git hook shell script is ran after a pull is merged to the local repository. This shell script checks the branch, the number of commits ahead and the number of commits behind of the local database repository. If it is in the master branch and behind, it updates. If it is not in the master branch and is behind, it updates.

When start.sh is ran, it updates all the submodules excluding the database, and then it updates the database.

# Server Account Information

## MySQL Information
Hostname - localhost

Username - root

Password - root

Database - scotchbox

## Wordpress Settings
Username - WebAdmin

Password - gG5XCvUSL4keOwamsEz
