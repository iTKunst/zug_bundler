#!/bin/bash
# shellcheck disable=SC2086


init_sys() {
	log_enter pINIT_SYS


source bENV.sh

if [ -z $SYS_DIR ]; then
  log_invalid SYS_DIR
	exit 1
fi
log_var SYS_DIR $SYS_DIR


if [ -d $SYS_DIR ]; then
  source ./$SYS_DIR/init.sh
	if [ $?  -ne 0 ]; then
		exit $?
	fi
else
  CLONE=1
fi


log_exit pINIT_SYS

exit 0
}