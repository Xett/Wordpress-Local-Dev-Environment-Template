#!/bin/sh
BRANCH=''
AHEAD=0
BEHIND=0

check()
{
   if [ $BRANCH=='master' ]
   then
      #we are on the master branch, so we check for the updates
      if [ $AHEAD > 0 ]
      then
         echo "we are ahead of master and shouldn't update"
      elif [ $BEHIND > 0 ]
      then
         git pull origin/$BRANCH
      fi
   else
      if [ $BEHIND > 0 ]
      then
         git pull origin/$BRANCH
      fi
   fi
}
update_database()
{
   cd $DATABASE_DIRECTORY
   git init
   get_current_branch
   get_numCommitsAhead
   get_numCommitsBehind
   check
   read -p "Press enter to continue"
   exit
}
