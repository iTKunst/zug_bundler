#!/bin/bash
# shellcheck disable=SC2086
source ./$DIR_BNDL/log/linux/LOG.sh
export sMETHOD=/$DIR_BNDL/misc/init

log_enter $sMETHOD

cp ./$DIR_BNDL/misc/linux/*.sh ./Exe

log_exit $sMETHOD
