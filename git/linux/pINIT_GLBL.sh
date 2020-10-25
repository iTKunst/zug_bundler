#!/bin/bash
# shellcheck disable=SC2086
source LOG.sh


init_glbl() {
	log_enter pINIT_GLBL


source bENV.sh

if [ -z $GLBL_DIR ]; then
  log_invalid GLBL_DIR
	exit 1
fi
log_var GLBL_DIR $GLBL_DIR

if [ -d "$GLBL_DIR" ]; then
	echo exists
  source ./$GLBL_DIR/init.sh
else
	echo not exists
  CLONE=1
fi


log_exit pINIT_GLBL

echo $CLONE

exit 0

}
