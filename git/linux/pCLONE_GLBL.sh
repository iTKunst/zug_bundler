#!/bin/bash
# shellcheck disable=SC2086
source LOG.sh

log_enter pCLONE_GLBL

if [ ! -f env.sh ]; then
  log_file_err env.sh
  exit
fi

source bENV.sh
source pSET_TRACE.sh

if [ -z $GLBL_DIR ]; then
  log_invalid GLBL_DIR
  exit
fi
log_var GLBL_DIR $GLBL_DIR

if [ -z "$GLBL_GIT" ]; then
  log_invalid GLBL_GIT
  exit
fi
log_var GLBL_GIT $GLBL_GIT

export init=0

if [ ! -d $GLBL_DIR ]; then
	export init=1
  clone $GLBL_GIT $GLBL_DIR
else
  log_dup $GLBL_GIT
fi
log_var $ERRORLEVEL $ERRORLEVEL

if [ $ERRORLEVEL -neq 0 ]; then
  log_clone_err $GLBL_GIT
  log_err "Does it exist in the repo?"
  exit /B $ERRORLEVEL
fi

##### Program End
##############################################################################################

log_exit pCLONE_GLBL

exit /B 0