#!/bin/bash
# shellcheck disable=SC2086


pCLONE_SYS () {

	log_enter pCLONE_SYS


	if [ -z $SYS_DIR ]; then
		log_invalid SYS_DIR
		return 1
	fi
	log_var SYS_DIR $SYS_DIR

	if [ -z $URI_URI_SYS_GIT ]; then
		log_invalid URI_URI_SYS_GIT
		return 1
	fi
	log_var URI_URI_SYS_GIT $URI_URI_SYS_GIT

	export init=0

	if [ ! -d $SYS_DIR ]; then
		pADD_SUB $URI_URI_SYS_GIT $SYS_DIR
		if [ $?  -ne 0 ]; then
			return $?
		fi
		export init=1
	else
		log_dup $URI_URI_SYS_GIT
	fi


	log_exit pCLONE_SYS

	return 0
}
