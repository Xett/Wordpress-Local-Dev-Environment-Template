#!/bin/sh
update_submodules()
{
   git submodule init
   git submodule update
   git submodule foreach git pull origin master
}
