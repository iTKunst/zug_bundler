#!/bin/bash
# shellcheck disable=SC2086


pINIT_PROJ() {

	log_enter pINIT_PROJ


	if [ -z $DIR_PROJ ]; then
		log_invalid DIR_PROJ
		return 1
	fi
	log_var DIR_PROJ $DIR_PROJ

	if [ ! -d "$DIR_PROJ" ]; then
		log_dir_error $DIR_PROJ
		exit
	fi

	source ./$DIR_PROJ/init.sh
	if [ $? ne 0]; then
		log_error Error initializing $DIR_PROJ
	  exit
	fi

	log_exit pINIT_PROJ

	return 0
}
