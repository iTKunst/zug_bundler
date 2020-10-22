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
  git commit -m "Added the $DIR to the project."
  git push

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

source pSET_TRACE.sh

if [ ! -d Bundler ]; then
  log_dir_err "Bundler"
  log_cmd "You must create the repository from the template 'https://github.com/iTKunst/zug_tmpl'!"
  exit
fi

source bENV.sh

if [ -z "$GLBL_GIT" ]; then
  log_invalid "$GLBL_GIT"
  exit
fi

if [ -z "$PROJ_GIT" ]; then
  log_invalid "PROJ_GIT"
  exit
fi

if [ -z "$SYS_GIT" ]; then
  log_invalid "SYS_GIT"
  exit
fi

if [ ! -d Global ]; then
  clone "$GLBL_GIT" Global
else
  log_dup $GLBL_GIT
fi

if [ ! -d Global ]; then
  log_clone_err $GLBL_GIT
  log_err "Does it exist in the repo?"
  exit
fi

if [ ! -d Project ]; then
  clone "$PROJ_GIT" Project
else
  log_dup $PROJ_GIT
fi

if [ ! -d Project ]; then
  log_clone_err $PROJ_GIT
  log_err "Does it exist in the repo?"
  exit
fi

if [ ! -d System ]; then
   add "$SYS_GIT" System
else
   log_dup $SYS_GIT
fi

if [ ! -d System ]; then
  log_clone_err $SYS_GIT
  log_err "Does it exist in the repo?"
  exit
fi

source ./init.sh

log_cmd "Please run pUPDATE.sh to get the latest changes."

##### Program End
##############################################################################################

log_exit pCLONE
