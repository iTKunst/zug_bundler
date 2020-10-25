#!/bin/bash
# shellcheck disable=SC2086


pINIT_SYS() {

	log_enter pINIT_SYS


	if [ -z $SYS_DIR ]; then
		log_invalid SYS_DIR
		return 1
	fi
	log_var SYS_DIR $SYS_DIR


	if [ -d $SYS_DIR ]; then
		source ./$SYS_DIR/init.sh
		if [ $?  -ne 0 ]; then
			return $?
		fi
	else
		CLONE=1
	fi


	log_exit pINIT_SYS

	return 0
}