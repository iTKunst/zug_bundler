#!/bin/bash
# shellcheck disable=SC2086


pCLONE_SYS () {

	log_enter pCLONE_SYS


	if [ -z $DIR_SYS ]; then
		log_invalid DIR_SYS
		exit
	fi
	log_var DIR_SYS $DIR_SYS

	if [ -z $SYS_GIT ]; then
		log_invalid SYS_GIT
		exit
	fi
	log_var SYS_GIT $SYS_GIT

	export init=0

	if [ ! -d $DIR_SYS ]; then
		pADD_SUB $SYS_GIT $DIR_SYS
		export init=1
	else
		log_dup $SYS_GIT
	fi


	log_exit pCLONE_SYS

	return 0
}
