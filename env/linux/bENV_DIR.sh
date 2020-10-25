#!/bin/bash
# shellcheck disable=SC2086
source LOG.sh

log_enter bENV_NAME

export GLBL_DIR=global
export PROJ_DIR=project
export SYS_DIR=system

log_exit bENV_NAME

return 0