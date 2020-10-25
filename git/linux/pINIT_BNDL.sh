#!/bin/bash
# shellcheck disable=SC2086
source LOG.sh

log_enter pINIT_BNDL


source bENV.sh

if [ -z $BNDL_DIR ]; then
  log_invalid BNDL_DIR
	exit /B 1
fi
log_var BNDL_DIR $BNDL_DIR

export CLONE=0

if [ -d $BNDL_DIR ]; then
  source ./$BNDL_DIR/init.sh
	if [ $ERRORLEVEL -neq 0 ]; then
		exit /B $ERRORLEVEL
	fi
else
  export CLONE=1
fi


log_exit pINIT_BNDL

exit /B 0