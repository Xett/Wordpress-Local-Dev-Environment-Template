#!/bin/sh
update_submodules()
{
   git submodule init
   git submodule update
   git submodule foreach '[ "$path" == "Wordpress-Database-Template" ] || git pull origin master'
}
