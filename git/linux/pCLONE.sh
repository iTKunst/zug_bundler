#!/bin/bash
# shellcheck disable=SC2086
source LOG.sh

log_enter pCLONE

##############################################################################################
## Methods

add()
{
  log_enter "add"

  GIT="$1"
  DIR="$2"

  log_var GIT "$GIT"
  log_var DIR "$DIR"

  log_info "Adding $DIR"

  git submodule add -f "$GIT" "$DIR"
  git commit -am "Added the $DIR to the project."
  git push origin master

  log_exit "add"
}

clone()
{
  log_enter "clone"

  GIT="$1"
  DIR="$2"

  log_var GIT "$GIT"
  log_var DIR "$DIR"

  log_info "Cloning $DIR"

  git clone "$GIT" "$DIR"

  log_exit "clone"
}

## Methods End
##############################################################################################

##############################################################################################
## Program

if [ ! -f env.sh ]; then
  log_file_err env.sh
  exit
fi

source bENV.sh
source pSET_TRACE.sh

if [ ! -d $BNDL_DIR ]; then
  log_dir_err $BNDL_DIR
  log_cmd "You must create the repository from the base template 'https://github.com/iTKunst/zug_tmpl'!"
  exit
fi

source pCLONE_GLBL.sh
source pCLONE_PROJ.sh
source pCLONE_SYS.sh

log_var ERRORLEVEL $ERRORLEVEL
if [ $ERRORLEVEL -neq 0 ]; then
	log_clone_err Templates
	exit /B $ERRORLEVEL
fi

log_var INIT $INIT
if [ $INIT -eq 1 ]; then
  source ./init.sh
fi

log_cmd "Please run pUPDATE.sh to get the latest changes."

##### Program End
##############################################################################################

log_exit pCLONE
