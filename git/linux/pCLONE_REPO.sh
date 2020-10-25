#!/bin/bash
# shellcheck disable=SC2086



pCLONE_REPO () {

	log_enter pCLONE_REPO


	GIT=$1
	DIR=$2

	log_var GIT $GIT
	log_var DIR $DIR

	log_info Cloning $DIR

	git clone $GIT $DIR
	if [ $? -ne 0 ]; then
		log_clone_err $GIT
		log_err Does it exist in the repo?
	fi

	log_exit pCLONE_REPO

	return $?
}
