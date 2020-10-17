#!/bin/bash
# shellcheck disable=SC2086
source LOG.sh

log_enter pSET_TRACE


if [ ! -f settings.sh ]; then
  log_file_err settings.sh
  exit
fi
source settings.sh

log_var bSETTING_LOG_GIT $bSETTING_LOG_GIT

if [ "$bSETTING_LOG_GIT" == "true" ]; then
  log_info "Turning Git tracing on"
  export GIT_TRACE=1
  export GIT_CURL_VERBOSE=1
else
  log_info "Turning Git tracing off"
  export GIT_TRACE=0
  export GIT_CURL_VERBOSE=0
fi

log_exit pSET_TRACE
