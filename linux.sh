#!/bin/bash
# shellcheck disable=SC2086
source ./Bundler/log/linux/LOG.sh

log_enter /Bundler/linux

source ./Bundler/env/linux.sh
source ./Bundler/git/linux.sh
source ./Bundler/log/linux.sh
source ./Bundler/misc/linux.sh

log_exit /Bundler/linux

