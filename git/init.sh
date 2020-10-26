#!/bin/bash
# shellcheck disable=SC2086
source ./$DIR_BNDL/log/linux/LOG.sh

log_enter /$DIR_BNDL/git/init

cp ./$DIR_BNDL/git/linux/*.sh ./Exe

log_exit /$DIR_BNDL/git/init


