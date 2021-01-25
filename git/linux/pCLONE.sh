#!/bin/bash
# shellcheck disable=SC2086

# echo pCLONE.sh [LOAD]

source ./$DIR_BNDL/git/linux/pADD_SUB.sh
source ./$DIR_BNDL/git/linux/pCLONE_GLBL.sh
source ./$DIR_BNDL/git/linux/pCLONE_TMPL.sh
source ./$DIR_BNDL/git/linux/pCLONE_REPO.sh
source ./$DIR_BNDL/git/linux/pCLONE_SYS.sh


pCLONE () {

	log_enter pCLONE

  # echo PCLONE [ENTER]

	source pSET_TRACE.sh

  INIT=1

	pCLONE_GLBL
	pCLONE_TMPL
	pCLONE_SYS

	log_var INIT $INIT
	if [ $INIT -eq 0 ]; then
		log_cmd "Please run pUPDATE.sh to get the latest changes."
		exit
	fi

	pINIT

	log_exit pCLONE

  # echo PCLONE [EXIT]

	return 0

}

# echo pCLONE.sh [UNLOAD]
