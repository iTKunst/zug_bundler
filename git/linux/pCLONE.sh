#!/bin/bash
# shellcheck disable=SC2086

# echo pCLONE.sh [LOAD]

source ./$DIR_BNDL/git/linux/pADD_SUB.sh
source ./$DIR_BNDL/git/linux/pCLONE_GLBL.sh
source ./$DIR_BNDL/git/linux/pCLONE_PROJ.sh
source ./$DIR_BNDL/git/linux/pCLONE_REPO.sh
source ./$DIR_BNDL/git/linux/pCLONE_SYS.sh


pCLONE () {

	log_enter pCLONE

  # echo PCLONE [ENTER]

	source pSET_TRACE.sh

	local INIT=0
  export RES=0

	pCLONE_GLBL
	if [ $?  -ne 0 ]; then
		INIT=0
		return $?
	fi

	pCLONE_PROJ
	log_var RES $?
	if [ $?  -ne 0 ]; then
		INIT=0
		exit 1
	fi

	pCLONE_SYS
	if [ $? -ne 0 ]; then
		INIT=0
		exit 1
	fi

	log_var INIT $INIT
	if [ $INIT -eq 1 ]; then
		pINIT
		if [ $? -ne 0 ]; then
			exit 1
		fi
	else
		log_cmd "Please run pUPDATE.sh to get the latest changes."
	fi

	log_exit pCLONE

  # echo PCLONE [EXIT]

	return 0

}

# echo pCLONE.sh [UNLOAD]
