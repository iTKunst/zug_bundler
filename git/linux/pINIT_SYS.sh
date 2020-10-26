#!/bin/bash
# shellcheck disable=SC2086


pINIT_SYS() {

	log_enter pINIT_SYS


	if [ -z $DIR_SYS ]; then
		log_invalid DIR_SYS
		return 1
	fi
	log_var DIR_SYS $DIR_SYS


	if [ -d $DIR_SYS ]; then
		source ./$DIR_SYS/init.sh
		if [ $?  -ne 0 ]; then
			return $?
		fi
	else
		CLONE=1
	fi


	log_exit pINIT_SYS

	return 0
}