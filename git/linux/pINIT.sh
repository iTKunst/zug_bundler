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

source pINIT_GLBL.sh
log_var ERRORLEVEL $ERRORLEVEL
if [ $ERRORLEVEL -ne 0 ]; then
	exit $ERRORLEVEL
fi

source pINIT_PROJ.sh
log_var ERRORLEVEL $ERRORLEVEL
if [ $ERRORLEVEL -ne 0 ]; then
	exit $ERRORLEVEL
fi

source pINIT_SYS.sh
log_var ERRORLEVEL $ERRORLEVEL
if [ $ERRORLEVEL -ne 0 ]; then
	exit $ERRORLEVEL
fi

chmod +x ./Exe/*.sh

log_var CLONE $CLONE

if [ $CLONE -eq 1  ]; then
  source pCLONE.sh
	if [ $ERRORLEVEL -ne 0 ]; then
		exit $ERRORLEVEL
	fi
fi

log_exit pINIT

exit 0