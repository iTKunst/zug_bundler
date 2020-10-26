#!/bin/bash
# shellcheck disable=SC2086

echo pINIT.sh [LOAD]

source ./$DIR_BNDL/git/linux/pCLONE.sh
source ./$DIR_BNDL/git/linux/pINIT_GLBL.sh
source ./$DIR_BNDL/git/linux/pINIT_PROJ.sh
source ./$DIR_BNDL/git/linux/pINIT_SYS.sh
source ./$DIR_BNDL/misc/linux/mSET_PATH.sh

pINIT () {

	log_enter pINIT

  # echo pINIT [ENTER]

	if [ ! -d Exe ]; then
		mkdir Exe
	fi

	if [ ! -d Env ]; then
		mkdir Env
	fi

	source ./$DIR_BNDL/init.sh
  mSET_PATH
  source bENV.sh

	local CLONE=0

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

  # echo pINIT [EXIT]

	return 0
}

echo pINIT.sh [UNLOAD]
