#!/bin/bash
# shellcheck disable=SC2086


pINIT_SYS() {

	log_enter pINIT_SYS


	if [ -z $DIR_SYS ]; then
		log_invalid DIR_SYS
		return 1
	fi
	log_var DIR_SYS $DIR_SYS

  git submodule init
	if [ $? -ne 0 ]; then
		log_err Unable to initialize submodule
		return $?
	fi

  git submodule update
	if [ $? -ne 0 ]; then
		log_err Unable to update submodule
		return $?
	fi

	if [ ! -d "$DIR_SYS" ]; then
		CLONE=1
	else
	  source $DIR_SYS/init.sh
	fi

	RES=$?
	if [ $RES -ne 0 ]; then
		log_error Error initializing $DIR_SYS
	  exit
	fi


	log_exit pINIT_SYS

	return 0
}