#!/bin/bash
# shellcheck disable=SC2086
source ./$BNDL_DIR/log/linux/LOG.sh

log_enter pINIT

if [ ! -d Exe ]; then
  mkdir Exe
fi

if [ ! -d Env ]; then
  mkdir Env
fi

source ./$BNDL_DIR/init.sh
source ./Exe/mSET_PATH.sh
source ./Exe/pINIT_GLBL.sh
source ./Exe/pINIT_PROJ.sh
source ./Exe/pINIT_SYS.sh

export CLONE=0

CLONE=$(init_glbl)
log_var CLONE $CLONE

log_var RES $?
if [ $? -ne 0 ]; then
	exit $?
fi
log_var CLONE $CLONE

source pINIT_PROJ.sh
log_var RES $?
if [ $? -ne 0 ]; then
	exit $?
fi

source pINIT_SYS.sh
log_var RES $?
if [ $? -ne 0 ]; then
	exit $?
fi

chmod +x ./Exe/*.sh

log_var CLONE $CLONE

if [ $CLONE -eq 1 ]; then
  source pCLONE.sh
	if [ $? -ne 0 ]; then
		exit $?
	fi
fi

log_exit pINIT

exit 0