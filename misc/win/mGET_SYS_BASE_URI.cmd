#!/bin/bash
# shellcheck disable=SC2086

sGET_SYS_BASE_URI() {
	sss=$(git config --list | grep remote.origin.url)
	#echo sss is $sss
	ttt=${sss%=*}
	#echo ttt is $ttt
	rrr=$(sed s/remote.origin.url=//g <<< $sss)
	#echo rrr is $rrr
	BASE=${rrr%/*}
	#echo BASE is $BASE
}

sGET_SYS_BASE_URI