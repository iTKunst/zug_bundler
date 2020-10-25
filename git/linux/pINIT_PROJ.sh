#!/bin/bash
# shellcheck disable=SC2086

init_proj() {
	log_enter pINIT_PROJ


source bENV.sh

if [ -z $PROJ_DIR ]; then
  log_invalid PROJ_DIR
	exit 1
fi
log_var PROJ_DIR $PROJ_DIR

if [ -d $PROJ_DIR ]; then
  source ./$PROJ_DIR/init.sh
	if [ $?  -ne 0 ]; then
		exit $?
	fi
else
  CLONE=1
fi


log_exit pINIT_PROJ


exit 0

}
