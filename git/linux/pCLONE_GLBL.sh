#!/bin/bash
# shellcheck disable=SC2086


pCLONE_GLBL() {

	log_enter pCLONE_GLBL


	source bENV.sh

	if [ -z $GLBL_DIR ]; then
		log_invalid GLBL_DIR
		return 1
	fi
	log_var GLBL_DIR $GLBL_DIR

	if [ -z "$GLBL_GIT" ]; then
		log_invalid GLBL_GIT
		return 1
	fi
	log_var GLBL_GIT $GLBL_GIT

	if [ ! -d $GLBL_DIR ]; then
		CALL pCLONE $GLBL_GIT $GLBL_DIR
		if [ $?  -ne 0 ]; then
			return $?
		fi
		INIT=1
	else
		log_dup $GLBL_GIT
	fi


	log_exit pCLONE_GLBL

	echo $INIT

	return 0
}
