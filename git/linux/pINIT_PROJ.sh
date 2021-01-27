#!/bin/bash
# shellcheck disable=SC2086


pINIT_PROJ() {

	log_enter pINIT_PROJ

	if [ ! -d "project" ]; then
		mkdir -p project
	  cp $DIR_TMPL/env/linux/pENV_MOD.sample.sh \
	     project/pENV_MOD.sh
	else
  	copy project/*.sh bin
	fi

	RES=$?
	if [ $RES -ne 0 ]; then
		log_error Error initializing $DIR_PROJ
	  exit
	fi

	log_exit pINIT_PROJ

	return 0
}
