#!/bin/bash
# shellcheck disable=SC2086
source ./$BNDL_DIR/log/linux/LOG.sh

log_enter /$BNDL_DIR/env/init

cp ./$BNDL_DIR/env/linux/*.sh ./Env

log_exit /$BNDL_DIR/env/init
