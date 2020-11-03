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
	pINIT_GLBL
  pINIT_PROJ
	pINIT_SYS

	chmod +x ./Exe/*.sh


	if [ $CLONE -eq 1 ]; then
		pCLONE
	fi

	log_exit pINIT


	return 0
}


# echo pINIT.sh [UNLOADED]
