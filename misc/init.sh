#!/bin/bash
# shellcheck disable=SC2086
source ./$BNDL_DIR/log/linux/LOG.sh
export sMETHOD=/$BNDL_DIR/misc/init

log_enter $sMETHOD

cp ./$BNDL_DIR/misc/linux/*.sh ./Exe

log_exit $sMETHOD
