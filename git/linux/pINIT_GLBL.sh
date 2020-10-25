#!/bin/bash
# shellcheck disable=SC2086


pINIT_GLBL() {

	log_enter pINIT_GLBL


	if [ -z $GLBL_DIR ]; then
		log_invalid GLBL_DIR
		return 1
	fi
	log_var GLBL_DIR $GLBL_DIR


	if [ -d "$GLBL_DIR" ]; then
		source ./$GLBL_DIR/init.sh
	else
		CLONE=1
	fi


	log_exit pINIT_GLBL

	return 0
}
