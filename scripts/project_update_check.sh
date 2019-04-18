#!/bin/sh
project_update_check()
{
   if [ -f $MYSQL_UPDATE ]
   then
      if grep -q "0" $MYSQL_UPDATE
      then
         echo "Project has been updated"
         set_update_commands
         echo "1" >update
      fi
   fi
}
