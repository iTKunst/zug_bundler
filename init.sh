#!/bin/bash
# shellcheck disable=SC2086
source ./$BNDL_DIR/log/linux/LOG.sh

log_enter /$BNDL_DIR/init

source ./$BNDL_DIR/env/init.sh
source ./$BNDL_DIR/git/init.sh
source ./$BNDL_DIR/log/init.sh
source ./$BNDL_DIR/misc/init.sh

log_exit /$BNDL_DIR/init

