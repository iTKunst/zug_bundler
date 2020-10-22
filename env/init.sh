#!/bin/bash
# shellcheck disable=SC2086
source ./Bundler/log/linux/LOG.sh

log_enter /Bundler/env/init

cp ./Bundler/env/linux/*.sh ./Env

log_exit /Bundler/env/init
