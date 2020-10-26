#!/bin/bash
# shellcheck disable=SC2086


pINIT_GLBL() {

	log_enter pINIT_GLBL


	if [ -z $DIR_GLBL ]; then
		log_invalid DIR_GLBL
		return 1
	fi
	log_var DIR_GLBL $DIR_GLBL


	if [ -d "$DIR_GLBL" ]; then
		source ./$DIR_GLBL/init.sh
	else
		CLONE=1
	fi


	log_exit pINIT_GLBL

	return 0
}
