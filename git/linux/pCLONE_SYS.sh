#!/bin/bash
# shellcheck disable=SC2086


pCLONE_SYS () {

	log_enter pCLONE_SYS


	if [ -z $DIR_SYS ]; then
		log_invalid DIR_SYS
		RES_CLONE=1
		exit
	fi
	log_var DIR_SYS $DIR_SYS

	if [ -z $URI_SYS_GIT ]; then
		log_invalid URI_SYS_GIT
		RES_CLONE=1
		exit
	fi
	log_var URI_SYS_GIT $URI_SYS_GIT

	export init=0

	if [ ! -d $DIR_SYS ]; then
		pADD_SUB $URI_SYS_GIT $DIR_SYS
		if [ $?  -ne 0 ]; then
			RES_CLONE=1
			exit
		fi
		export init=1
	else
		log_dup $URI_SYS_GIT
	fi


	log_exit pCLONE_SYS

	return 0
}
