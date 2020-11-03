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
	RES=$?
	if [ $RES -ne 0 ]; then
		log_err Error adding sub module $GIT
		log_err Does it exist in the repo?
		exit
	fi

	git commit -am "Added the $DIR to the project."
	RES=$?
	if [ $RES -ne 0 ]; then
		log_err Error committing sub module $GIT. Do you have access?
		exit
	fi

	git push origin master
	RES=$?
	if [ $RES -ne 0 ]; then
		log_err Error pushing the sub module $GIT. Do you have Access?
		exit
	fi


	log_exit pADD_SUB

	return 0
}