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

source ./$BNDL_DIR/git/linux/pINIT_BNDL.sh
if [ $ERRORLEVEL -neq 0 ]; then
	exit /B $ERRORLEVEL
fi

source ./Exe/mSET_PATH.sh

source pINIT_GLBL.sh
if [ $ERRORLEVEL -neq 0 ]; then
	exit /B $ERRORLEVEL
fi

source pINIT_PROJ.sh
if [ $ERRORLEVEL -neq 0 ]; then
	exit /B $ERRORLEVEL
fi

source pINIT_SYS.sh
if [ $ERRORLEVEL -neq 0 ]; then
	exit /B $ERRORLEVEL
fi

chmod +x ./Exe/*.sh

if [ $CLONE -eq 1  ]; then
  source pCLONE.sh
	if [ $ERRORLEVEL -neq 0 ]; then
		exit /B $ERRORLEVEL
	fi
fi

log_exit pINIT

exit /B 0