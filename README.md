# Wordpress-Local-Dev-Environment
Wordpress local development environment utilising vagrant, scotchbox and CircleCI

# Install
Move post-merge file to .git/hooks. This automates updating the database after an update. The update file in the directory is used for checking purposes.

Edit config.sh, and fill in PROJECT_DIRECTORY. Make sure to use / and not \\ i.e C:/a2-cp3402-2019-team25/

Run start.sh

# Usage

Run start.sh to start and/or update the server.

Run ssh.sh to ssh into the server.

Run stop.sh to stop and dump the server if you choose.

## How automation is implemented
post-merge is a git hook shell script that is ran after a pull is merged to the local repository. This shell script changes the file update to "0".

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
