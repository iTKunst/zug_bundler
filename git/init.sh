#!/bin/bash
# shellcheck disable=SC2086
source ./$BNDL_DIR/log/linux/LOG.sh

log_enter /$BNDL_DIR/git/init

cp ./$BNDL_DIR/git/linux/*.sh ./Exe

log_exit /$BNDL_DIR/git/init


