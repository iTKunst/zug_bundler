#!/bin/bash
# shellcheck disable=SC2086
source LOG.sh

log_enter pCLONE

source bENV.sh
source pSET_TRACE.sh

if [ ! -d $BNDL_DIR ]; then
  log_dir_err $BNDL_DIR
  log_cmd You must create the repository from the base template $TMPL_NAME!
  exit
fi

source pCLONE_GLBL.sh
if [ $ERRORLEVEL -ne 0 ]; then
	exit /B $ERRORLEVEL
fi

source pCLONE_PROJ.sh
if [ $ERRORLEVEL -ne 0 ]; then
	exit /B $ERRORLEVEL
fi

source pCLONE_SYS.sh
if [ $ERRORLEVEL -ne 0 ]; then
	exit /B $ERRORLEVEL
fi

log_var INIT $INIT
if [ $INIT -eq 1 ]; then
  source pINIT.sh
	if [ $ERRORLEVEL -ne 0 ]; then
		exit /B $ERRORLEVEL
	fi
fi

log_cmd "Please run pUPDATE.sh to get the latest changes."

log_exit pCLONE
