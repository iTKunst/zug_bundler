#!/bin/bash
# shellcheck disable=SC2086



pCLONE_PROJ () {

	log_enter pCLONE_PROJ


	if [ -z $DIR_PROJ ]; then
		log_invalid DIR_PROJ
		return 1
	fi
	log_var DIR_PROJ $DIR_PROJ

	if [ -z $PROJ_GIT ]; then
		log_invalid PROJ_GIT
		return 1
	fi
	log_var PROJ_GIT $PROJ_GIT

	if [ ! -d $DIR_PROJ ]; then
		pCLONE_REPO $PROJ_GIT $DIR_PROJ
		log_var RES $?
		if [ $?  -ne 0 ]; then
			return $?
		fi
		INIT=1
	else
		log_dup $PROJ_GIT
	fi

	log_exit pCLONE_PROJ

	return 0
}
