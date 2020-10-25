#!/bin/bash
# shellcheck disable=SC2086
source LOG.sh

log_enter pINIT_GLBL


source bENV.sh

if [ -z $GLBL_DIR ]; then
  log_invalid GLBL_DIR
	exit 1
fi
log_var GLBL_DIR $GLBL_DIR

export CLONE=0

if [ -d "$GLBL_DIR" ]; then
	echo exists
  source ./$GLBL_DIR/init.sh
else
	echo not exists
  export CLONE=1
fi

log_var CLONE $CLONE

log_exit pINIT_GLBL

echo $CLONE

exit 0