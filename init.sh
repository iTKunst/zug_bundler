#!/bin/bash
# shellcheck disable=SC2086
source ./Bundler/log/linux/LOG.sh

log_enter /Bundler/init

source ./Bundler/env/init.sh
source ./Bundler/git/init.sh
source ./Bundler/log/init.sh
source ./Bundler/misc/init.sh

log_exit /Bundler/init

