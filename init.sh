#!/bin/bash
# shellcheck disable=SC2086


log_enter /$DIR_BNDL/init

source ./$DIR_BNDL/env/init.sh
source ./$DIR_BNDL/git/init.sh
source ./$DIR_BNDL/log/init.sh
source ./$DIR_BNDL/misc/init.sh

log_exit /$DIR_BNDL/init

