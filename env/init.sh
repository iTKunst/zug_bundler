#!/bin/bash
# shellcheck disable=SC2086
source ./Bundler/log/linux/LOG.sh

log_enter /Bundler/env/linux

cp ./Bundler/env/linux/*.sh ./Env

log_exit /Bundler/env/linux
