#!/bin/bash
# shellcheck disable=SC2086



pCLONE_TMPL () {

	log_enter pCLONE_TMPL


	if [ -z $DIR_TMPL ]; then
		log_invalid DIR_TMPL
		exit
	fi
	log_var DIR_TMPL $DIR_TMPL

	if [ -z $TMPL_GIT ]; then
		log_invalid TMPL_GIT
		exit
	fi
	log_var TMPL_GIT $TMPL_GIT

  export RES=0

	if [ ! -d $DIR_TMPL ]; then
		pCLONE_REPO $TMPL_GIT $DIR_TMPL
		INIT=1
	else
		log_dup $TMPL_GIT
	fi

	log_exit pCLONE_TMPL

	return
}
