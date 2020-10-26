#!/bin/bash
# shellcheck disable=SC2086


pSET_TRACE () {

	log_enter pSET_TRACE

	log_var LOG_GIT_ON $LOG_GIT_ON

	if [ $LOG_GIT_ON -equ 1 ]; then
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
