#!/bin/bash
# shellcheck disable=SC2086


pINIT_GLBL() {

	log_enter pINIT_GLBL


	if [ -z $DIR_GLBL ]; then
		log_invalid DIR_GLBL
		exit
	fi
	log_var DIR_GLBL $DIR_GLBL

	if [ ! -d "$DIR_GLBL" ]; then
		CLONE=1
	else
		source $DIR_GLBL/init.sh
	fi

	RES=$?
	if [ $RES -ne 0 ]; then
		log_error Error initializing $DIR_GLBL
	  exit
	fi


	log_exit pINIT_GLBL

	return 0
}
