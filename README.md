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
post-merge is a git hook shell script that is ran after a pull is merged to the local repository. This shell script changes the file update to "0".

pre-commit is a git hook shell script that is ran before commits are processed. This shell script automatically updates all submodules and add their updates to the commit.

When the database is dumped during stop.sh, the file update is changed to "1".

When start.sh is ran, it reads the file update, and if it is "0", then it applies the database dump to the database.

# Server Account Information

## MySQL Information
Hostname - localhost

Username - root

Password - root

Database - scotchbox

## Wordpress Settings
Username - WebAdmin

Password - gG5XCvUSL4keOwamsEz
