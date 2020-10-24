#!/bin/bash
# shellcheck disable=SC2086
source LOG.sh

log_enter pCLONE_SYS

if [ ! -f env.sh ]; then
  log_file_err env.sh
  exit
fi

source bENV.sh
source pSET_TRACE.sh

if [ -z $SYS_DIR ]; then
  log_invalid SYS_DIR
  exit
fi
log_var SYS_DIR $SYS_DIR

if [ -z $SYS_GIT ]; then
  log_invalid SYS_GIT
  exit
fi
log_var SYS_GIT $SYS_GIT

export init=0
if [ ! -d $SYS_DIR ]; then
  export init=1
  clone $SYS_GIT $SYS_DIR
else
  log_dup $SYS_GIT
fi
log_var $ERRORLEVEL $ERRORLEVEL

if [ $ERRORLEVEL -neq 0 ]; then
  log_clone_err $SYS_GIT
  log_err "Does it exist in the repo?"
  exit
fi

##### Program End
##############################################################################################

log_exit pCLONE_SYS
