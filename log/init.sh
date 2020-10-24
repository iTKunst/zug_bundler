#!/bin/bash
# shellcheck disable=SC2086
source ./$BNDL_DIR/log/linux/LOG.sh

log_enter /$BNDL_DIR/log/init

cp ./$BNDL_DIR/log/linux/*.sh ./Exe

log_exit /$BNDL_DIR/log/init
