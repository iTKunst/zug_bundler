#!/bin/bash
# shellcheck disable=SC2086
source ./$DIR_BNDL/log/linux/LOG.sh

log_enter /$DIR_BNDL/log/init

cp ./$DIR_BNDL/log/linux/*.sh ./Exe

log_exit /$DIR_BNDL/log/init
