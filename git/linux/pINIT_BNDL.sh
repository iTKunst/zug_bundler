#!/bin/bash
# shellcheck disable=SC2086


pINIT_BNDL() {

	log_enter pINIT_BNDL


	if [ -z $DIR_BNDL ]; then
		log_invalid DIR_BNDL
		return 1
	fi
	log_var DIR_BNDL $DIR_BNDL


	if [ -d "$DIR_BNDL" ]; then
		source ./$DIR_BNDL/init.sh
	else
		return 1
	fi


	log_exit pINIT_BNDL

	return 0
}
