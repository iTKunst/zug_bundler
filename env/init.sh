#!/bin/bash
# shellcheck disable=SC2086
source ./$DIR_BNDL/log/linux/LOG.sh

log_enter /$DIR_BNDL/env/init

cp ./$DIR_BNDL/env/linux/*.sh ./Env

log_exit /$DIR_BNDL/env/init
