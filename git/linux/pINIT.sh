#!/bin/bash
# shellcheck disable=SC2086
source ./$BNDL_DIR/log/linux/LOG.sh

log_enter init

if [ ! -d Exe ]; then
  mkdir Exe
fi

if [ ! -d Env ]; then
  mkdir Exe
fi
mkdir Env

source ./$BNDL_DIR/init.sh
source ./Exe/mSET_PATH.sh

CLONE=0

if [ -d Global ]; then
  source ./Global/init.sh
else
  CLONE=1
fi

if [ -d System ]; then
   source ./System/init.sh
else
  CLONE=1
fi

if [ -d Project ]; then
   source ./Project/init.sh
else
  CLONE=1
fi

chmod +x ./Exe/*.sh

if [ $CLONE -eq 1  ]; then
  source pCLONE.sh
fi

log_exit init
