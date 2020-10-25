#!/bin/bash
# shellcheck disable=SC2086
source LOG.sh

log_enter pCLONE_PROJ

source bENV.sh

if [ -z $PROJ_DIR ]; then
  log_invalid PROJ_DIR
  exit 1
fi
log_var PROJ_DIR $PROJ_DIR

if [ -z $PROJ_GIT ]; then
  log_invalid PROJ_GIT
  exit 1
fi
log_var PROJ_GIT $PROJ_GIT

export init=0

if [ ! -d $PROJ_DIR ]; then
  CALL pCLONE $PROJ_GIT $PROJ_DIR
	if [ $ERRORLEVEL -ne 0 ]; then
		exit $ERRORLEVEL
	fi
  export init=1
else
  log_dup $PROJ_GIT
fi


log_exit pCLONE_PROJ

exit 0