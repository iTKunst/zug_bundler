#!/bin/bash
# shellcheck disable=SC2086


pSET_TRACE () {

	log_enter pSET_TRACE

	if [ ! -f settings.sh ]; then
		log_file_err settings.sh
		return 1
	fi
	source settings.sh

	log_var bSETTING_LOG_GIT $bSETTING_LOG_GIT

	if [ "$bSETTING_LOG_GIT" == "true" ]; then
		log_info "Turning Git tracing on"
		export GIT_CURL_VERBOSE=1
		export GIT_TRACE=1
		export GIT_TRACE_PACKET=1
	else
		log_info "Turning Git tracing off"
		unset GIT_CURL_VERBOSE
		unset GIT_TRACE
		unset GIT_TRACE_PACKET
	fi

	log_exit pSET_TRACE

	return 0
}
