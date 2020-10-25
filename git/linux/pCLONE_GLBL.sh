#!/bin/bash
# shellcheck disable=SC2086
source LOG.sh

log_enter pCLONE_GLBL


source bENV.sh

if [ -z $GLBL_DIR ]; then
  log_invalid GLBL_DIR
	exit /B 1
fi
log_var GLBL_DIR $GLBL_DIR

if [ -z "$GLBL_GIT" ]; then
  log_invalid GLBL_GIT
	exit /B 1
fi
log_var GLBL_GIT $GLBL_GIT

export INIT=0

if [ ! -d $GLBL_DIR ]; then
  CALL pCLONE $GLBL_GIT $GLBL_DIR
	if [ $ERRORLEVEL -neq 0 ]; then
		exit /B $ERRORLEVEL
	fi
	export INIT=1
else
  log_dup $GLBL_GIT
fi


log_exit pCLONE_GLBL

exit /B 0