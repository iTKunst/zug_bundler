#!/bin/bash
# shellcheck disable=SC2086


pINIT_PROJ() {

	log_enter pINIT_PROJ

	if [ -z $DIR_TMPL ]; then
		log_invalid DIR_TMPL
		return 1
	fi
	log_var DIR_TMPL $DIR_TMPL

	if [ -d "$DIR_TMPL" ]; then

	    if [ ! -d "project" ]; then
	      mkdir project
	    fi

	    if [ ! -f "project/pENV_MOD.sh" ]; then
	      cp $DIR_TMPL/env/linux/pENV_MOD.sample.sh \
	         project/pENV_MOD.sh
	    fi

  fi

	log_exit pINIT_PROJ

	return 0
}
