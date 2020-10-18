#!/bin/bash
# shellcheck disable=SC2086
source LOG.sh

log_enter bENV_GIT

source bENV_CAT.sh
source bENV_TKN.sh

if [ -z "$TMPL_URI" ]; then
  log_invalid TMPL_URI
  log_cmd "You must set it in ./env.sh!"
  log_cmd "Default value is https//github.com/itkunst"
  exit
fi
log_var TMPL_URI $TMPL_URI

if [ -z "$TMPL_NAME" ]; then
  log_invalid TMPL_NAME
  log_cmd "You must set it in ./env.sh!"
  exit
fi
echo TMPL_NAME "$TMPL_NAME"

if [ -z "$SYS" ]; then
  log_invalid SYS
  log_cmd "You must set it in ./env.sh!"
  exit
fi
echo SYS "$SYS"

export GLBL_GIT=$TMPL_URI$SLASH"zug_global.git"
log_var GLBL_GIT $GLBL_GIT

export PROJ_GIT=$TMPL_URI$SLASH$TMPL_NAME$DOT$GIT
log_var PROJ_GIT $PROJ_GIT

export SYS_GIT="$UP""$SYS""$SPLIT""$SYSTEM""$DOT""$GIT"
log_var SYS_GIT $SYS_GIT

log_exit bENV_GIT
