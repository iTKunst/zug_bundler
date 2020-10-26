#!/bin/bash
# shellcheck disable=SC2086


pCLONE_GLBL() {

	log_enter pCLONE_GLBL


	if [ -z $DIR_GLBL ]; then
		log_invalid DIR_GLBL
		return 1
	fi
	log_var DIR_GLBL $DIR_GLBL

	if [ -z "$GLBL_GIT" ]; then
		log_invalid GLBL_GIT
		return 1
	fi
	log_var GLBL_GIT $GLBL_GIT

	if [ ! -d $DIR_GLBL ]; then
		pCLONE_REPO $GLBL_GIT $DIR_GLBL
		if [ $?  -ne 0 ]; then
			return $?
		fi
		INIT=1
	else
		log_dup $GLBL_GIT
	fi


	log_exit pCLONE_GLBL

	return 0
}
