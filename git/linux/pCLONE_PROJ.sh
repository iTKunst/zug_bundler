#!/bin/bash
# shellcheck disable=SC2086



pCLONE_PROJ () {

	log_enter pCLONE_PROJ


	if [ -z $PROJ_DIR ]; then
		log_invalid PROJ_DIR
		return 1
	fi
	log_var PROJ_DIR $PROJ_DIR

	if [ -z $PROJ_GIT ]; then
		log_invalid PROJ_GIT
		return 1
	fi
	log_var PROJ_GIT $PROJ_GIT

	if [ ! -d $PROJ_DIR ]; then
		pCLONE_REPO $PROJ_GIT $PROJ_DIR
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
