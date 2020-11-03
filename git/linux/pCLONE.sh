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

  INIT=1

	pCLONE_GLBL
	pCLONE_PROJ
	pCLONE_SYS

	log_var INIT $INIT
	if [ $INIT -eq 1 ]; then
		pINIT
	else
		log_cmd "Please run pUPDATE.sh to get the latest changes."
	fi

	log_exit pCLONE

  # echo PCLONE [EXIT]

	return 0

}

# echo pCLONE.sh [UNLOAD]
