#!/bin/bash
# shellcheck disable=SC2086
source LOG.sh

log_enter pINIT_PROJ


source bENV.sh

if [ -z $PROJ_DIR ]; then
  log_invalid PROJ_DIR
	exit /B 1
fi
log_var PROJ_DIR $PROJ_DIR

export CLONE=0

if [ -d $PROJ_DIR ]; then
  source ./$PROJ_DIR/init.sh
	if [ $ERRORLEVEL -ne 0 ]; then
		exit /B $ERRORLEVEL
	fi
else
  expert CLONE=1
fi


log_exit pINIT_PROJ

exit /B 0