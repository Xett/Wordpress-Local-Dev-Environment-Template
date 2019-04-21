#!/bin/sh
SCRIPT=$(readlink -f "$0")
PROJECT_DIRECTORY=$(dirname "$SCRIPT")
DATABASE_DIRECTORY=$PROJECT_DIRECTORY"/database/Wordpress-Database-Template"
. $PROJECT_DIRECTORY"/scripts/update_database.sh"
update_database
read -p "Press enter to continue"
exit
