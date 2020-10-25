#!/bin/bash
# shellcheck disable=SC2086
source ./$BNDL_DIR/log/linux/LOG.sh
source ./$BNDL_DIR/git/misc/mSET_PATH.sh
source ./$BNDL_DIR/git/linux/pINIT_GLBL.sh
source ./$BNDL_DIR/git/linux/pINIT_PROJ.sh
source ./$BNDL_DIR/git/linux/pINIT_SYS.sh

init () {
	log_enter init

	if [ ! -d Exe ]; then
		mkdir Exe
	fi

	if [ ! -d Env ]; then
		mkdir Env
	fi

	source ./$BNDL_DIR/init.sh

	local CLONE=0

	init_glbl
	if [ $? -ne 0 ]; then
		exit $?
	fi
	log_var CLONE $CLONE

	init_proj
	log_var RES $?
	if [ $? -ne 0 ]; then
		exit $?
	fi
	log_var CLONE $CLONE

	init_sys
	log_var RES $?
	if [ $? -ne 0 ]; then
		exit $?
	fi
	log_var CLONE $CLONE

	chmod +x ./Exe/*.sh


	if [ $CLONE -eq 1 ]; then
		source pCLONE.sh
		if [ $? -ne 0 ]; then
			exit $?
		fi
	fi

	log_exit init

	exit 0

}
