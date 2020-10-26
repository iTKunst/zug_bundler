#!/bin/bash
# shellcheck disable=SC2086

pADD_SUB() {


	log_enter pADD_SUB

	GIT=$1
	DIR=$2

	log_var GIT $GIT
	log_var DIR $DIR

	log_info Adding $DIR

	git submodule add -f $GIT $DIR
	log_var RES $?
	if [ $? -ne 0 ]; then
		log_err Error adding sub module $GIT
		log_err Does it exist in the repo?
		return $?
	fi

	git commit -am "Added the $DIR to the project."
	log_var RES $?
	if [ $? -ne 0 ]; then
		log_err Error committing sub module $GIT
		return $?
	fi

	git push origin master
	log_var RES $?
	if [ $? -ne 0 ]; then
		log_err Error pushing the sub module $GIT
	fi

	log_exit pADD_SUB

	return $?
}