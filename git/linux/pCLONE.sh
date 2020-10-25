#!/bin/bash
# shellcheck disable=SC2086
source pADD_SUB.sh
source pCLONE_GLBL.sh
source pCLONE_PROJ.sh
source pCLONE_REPO.sh
source pCLONE_SYS.sh


pCLONE () {

	log_enter pCLONE

  # echo PCLONE [ENTER]

	source pSET_TRACE.sh

	local INIT=0

	pCLONE_GLBL
	if [ $?  -ne 0 ]; then
		return $?
	fi

	pCLONE_PROJ
	if [ $?  -ne 0 ]; then
		return $?
	fi

	pCLONE_SYS
	if [ $? -ne 0 ]; then
		return $?
	fi

	log_var INIT $INIT
	if [ $INIT -eq 1 ]; then
		pINIT
		if [ $? -ne 0 ]; then
			return $?
		fi
	else
		log_cmd "Please run pUPDATE.sh to get the latest changes."
	fi

	log_exit pCLONE

  # echo PCLONE [EXIT]

	return 0

}
