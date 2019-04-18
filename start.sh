#!/bin/sh
# Import variables
. "config.sh"
# First ssh command ran on the server, stops the web server while we run commands
COMMANDS[0]="sudo service apache2 stop; echo \"Stopping Apache Web Server\"; "
# Last ssh command ran on the server, starts the web server as we are finished
COMMANDS[20]="sudo service apache2 start; echo \"Starting Apache Web Server\"; "
# Import update_database_check function
. $PROJECT_DIRECTORY"scripts/project_update_check.sh"
# Import create_webadmin function
. $PROJECT_DIRECTORY"scripts/create_mysql_webadmin.sh"
# Import set_update_commands function
. $PROJECT_DIRECTORY"scripts/update_commands.sh"
# Run commands function
run()
{
   COMMAND=""
   for i in "${COMMANDS[@]}"
   do
      COMMAND=$COMMAND$i
   done
   RESULT=$(vagrant ssh -- -t $COMMAND )
   echo "$RESULT"
}
# ignore changes on these files
git update-index --assume-unchanged $MYSQL_UPDATE
git update-index --assume-unchanged $PROJECT_DIRECTORY"config.sh"
git update-index --assume-unchanged $MYSQL_CREATE_USER
git update-index --assume-unchanged $PROJECT_DIRECTORY"post-merge"
# Create WebAdmin MYSQL user
create_webadmin
# Check if the database needs updating, and load commands to do it if so
project_update_check
# Start the vm
vagrant up
# Run our ssh commands
run
# Pause at end
read -p "Press enter to continue"
exit
