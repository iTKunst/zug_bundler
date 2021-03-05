@echo off

SET	sss=(git config --list | grep remote.origin.url)
echo sss is $sss

ttt={sss%=*}
echo ttt is $ttt

rrr=(sed s/remote.origin.url=//g <<< $sss)
echo rrr is $rrr

BASE={rrr%/*}
echo BASE is $BASE

SET "URI_SYS_GIT_BASE=%{rrr%/*}%
echo URI_SYS_GIT_BASE is %URI_SYS_GIT_BASE%

}

sGET_SYS_BASE_URI