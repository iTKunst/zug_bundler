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
if [ $?  -ne 0 ]; then
	exit $?
fi

source pCLONE_PROJ.sh
if [ $?  -ne 0 ]; then
	exit $?
fi

source pCLONE_SYS.sh
if [ $?  -ne 0 ]; then
	exit $?
fi

log_var INIT $INIT
if [ $INIT -eq 1 ]; then
  source pINIT.sh
	if [ $?  -ne 0 ]; then
		exit $?
	fi
fi

log_cmd "Please run pUPDATE.sh to get the latest changes."

log_exit pCLONE
