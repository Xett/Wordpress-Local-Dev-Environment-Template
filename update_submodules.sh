#!/bin/sh
# Import variables
SCRIPT=$(readlink -f "$0")
PROJECT_DIRECTORY=$(dirname "$SCRIPT")
. $PROJECT_DIRECTORY"/scripts/update_submodules.sh"
update_submodules
