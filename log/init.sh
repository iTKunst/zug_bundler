#!/bin/bash
# shellcheck disable=SC2086
source ./Bundler/log/linux/LOG.sh

log_enter /Bundler/log/init

cp ./Bundler/log/linux/*.sh ./Exe

log_exit /Bundler/log/init
