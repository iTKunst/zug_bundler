#!/bin/bash
# shellcheck disable=SC2086


pINIT_BNDL() {

	log_enter pINIT_BNDL


	if [ -z $DIR_BNDL ]; then
		log_invalid DIR_BNDL
		exit
	fi
	log_var DIR_BNDL $DIR_BNDL


	if [ ! -d "$DIR_BNDL" ]; then
		log_dir_err $DIR_BNDL
		exit
	fi

	source ./$DIR_BNDL/init.sh
	RES=$?
	if [ $RES -ne 0 ]; then
		log_error Error initializing $DIR_BNDL
	  exit
	fi


	log_exit pINIT_BNDL

	return 0
}
