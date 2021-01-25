#!/bin/bash
# shellcheck disable=SC2086


pINIT_TMPL() {

	log_enter pINIT_TMPL


	if [ -z $DIR_TMPL ]; then
		log_invalid DIR_TMPL
		return 1
	fi
	log_var DIR_TMPL $DIR_TMPL

	if [ ! -d "$DIR_TMPL" ]; then
		CLONE=1
	else
  	source $DIR_TMPL/init.sh
	fi

	RES=$?
	if [ $RES -ne 0 ]; then
		log_error Error initializing $DIR_TMPL
	  exit
	fi

	log_exit pINIT_TMPL

	return 0
}
