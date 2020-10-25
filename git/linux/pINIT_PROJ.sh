#!/bin/bash
# shellcheck disable=SC2086

pINIT_PROJ() {

	log_enter pINIT_PROJ


	if [ -z $PROJ_DIR ]; then
		log_invalid PROJ_DIR
		return 1
	fi
	log_var PROJ_DIR $PROJ_DIR

	if [ -d $PROJ_DIR ]; then
		source ./$PROJ_DIR/init.sh
	else
		CLONE=1
	fi

	log_exit pINIT_PROJ

	return 0
}
