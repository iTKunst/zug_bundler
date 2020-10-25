#!/bin/bash
# shellcheck disable=SC2086
source LOG.sh

log_enter pCLONE_SYS

source bENV.sh

if [ -z $SYS_DIR ]; then
  log_invalid SYS_DIR
  exit 1
fi
log_var SYS_DIR $SYS_DIR

if [ -z $SYS_GIT ]; then
  log_invalid SYS_GIT
  exit 1
fi
log_var SYS_GIT $SYS_GIT

export init=0

if [ ! -d $SYS_DIR ]; then
  clone $SYS_GIT $SYS_DIR
	if [ $?  -ne 0 ]; then
		exit $?
	fi
  export init=1
else
  log_dup $SYS_GIT
fi


log_exit pCLONE_SYS

exit 0