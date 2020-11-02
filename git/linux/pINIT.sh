#!/bin/bash
# shellcheck disable=SC2086


# echo pINIT.sh [LOADED]

source ./$DIR_BNDL/git/linux/pCLONE.sh
source ./$DIR_BNDL/git/linux/pINIT_BNDL.sh
source ./$DIR_BNDL/git/linux/pINIT_GLBL.sh
source ./$DIR_BNDL/git/linux/pINIT_PROJ.sh
source ./$DIR_BNDL/git/linux/pINIT_SYS.sh
source ./$DIR_BNDL/misc/linux/mSET_PATH.sh

pINIT () {

	log_enter pINIT

	pINIT_BNDL
	log_var RES $?
	if [ $? -ne 0 ]; then
		return $?
	fi

	pINIT_GLBL
	log_var RES $?
	if [ $? -ne 0 ]; then
		return $?
	fi
	log_var CLONE $CLONE

	pINIT_PROJ
	log_var RES $?
	if [ $? -ne 0 ]; then
		return $?
	fi
	log_var CLONE $CLONE

	pINIT_SYS
	log_var RES $?
	if [ $? -ne 0 ]; then
		return $?
	fi
	log_var CLONE $CLONE

	chmod +x ./Exe/*.sh


	if [ $CLONE -eq 1 ]; then
		pCLONE
		if [ $? -ne 0 ]; then
			return $?
		fi
	fi

	log_exit pINIT


	return 0
}


# echo pINIT.sh [UNLOADED]
