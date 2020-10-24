#!/bin/bash
# shellcheck disable=SC2086
source LOG.sh

log_enter pCLONE_PROJ

if [ ! -f env.sh ]; then
  log_file_err env.sh
  exit
fi

source bENV.sh
source pSET_TRACE.sh

if [ -z $PROJ_DIR ]; then
  log_invalid PROJ_DIR
  exit
fi
log_var PROJ_DIR $PROJ_DIR

if [ -z $PROJ_GIT ]; then
  log_invalid PROJ_GIT
  exit
fi
log_var PROJ_GIT $PROJ_GIT

export init=0
if [ ! -d $PROJ_DIR ]; then
  export init=1
  clone $PROJ_GIT $PROJ_DIR
else
  log_dup $PROJ_GIT
fi
log_var $ERRORLEVEL $ERRORLEVEL

if [ $ERRORLEVEL -neq 0 ]; then
  log_clone_err $PROJ_GIT
  log_err "Does it exist in the repo?"
  exit
fi

##### Program End
##############################################################################################

log_exit pCLONE_PROJ
