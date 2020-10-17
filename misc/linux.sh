#!/bin/bash
# shellcheck disable=SC2086
source ./Bundler/log/linux/LOG.sh
export sMETHOD=/Bundler/misc/linux

log_enter $sMETHOD

cp ./Bundler/misc/linux/*.sh ./Exe

log_exit $sMETHOD
