#!/bin/bash
# shellcheck disable=SC2086



pCLONE_PROJ () {

	log_enter pCLONE_PROJ


	if [ -z $DIR_PROJ ]; then
		log_invalid DIR_PROJ
		exit
	fi
	log_var DIR_PROJ $DIR_PROJ

	if [ -z $PROJ_GIT ]; then
		log_invalid PROJ_GIT
		exit
	fi
	log_var PROJ_GIT $PROJ_GIT

  export RES=0

	if [ ! -d $DIR_PROJ ]; then
		pCLONE_REPO $PROJ_GIT $DIR_PROJ
		INIT=1
	else
		log_dup $PROJ_GIT
	fi

	log_exit pCLONE_PROJ

	return
}
