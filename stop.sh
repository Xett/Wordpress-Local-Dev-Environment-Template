#!/bin/sh
# Import variables
. "config.sh"
# Import dump_database_check function
. $PROJECT_DIRECTORY"scripts/dump_database_check.sh"
# Run commands function
run()
{
   COMMAND="sudo service apache2 stop; echo \"Stopping Apache Web Server\"; "
   dump_database_check "Do you want to dump the database?" && COMMAND=$COMMAND"sudo mysqldump -u$MYSQL_USER -p'$MYSQL_PASSWORD' scotchbox > $MYSQL_DUMP; echo \"Dumping MYSQL Databases\""
   RESULT=$(vagrant ssh -- -t $COMMAND)
   echo "$RESULT"
}
# Run our ssh commands
run
# Stop the vm
vagrant halt
# Pause at end
read -p "Press enter to continue"
exit
#.
