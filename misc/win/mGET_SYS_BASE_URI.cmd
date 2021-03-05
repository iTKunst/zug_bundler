@echo off

SET	"sss=(git config --list | findstr /C remote.origin.url)"
echo sss is %sss%

SET "ttt={sss%=*}"
echo ttt is %ttt%

SET "rrr=(sed s/remote.origin.url=//g <<< $sss)"
echo rrr is %rrr%

SET "BASE={rrr%/*}"
echo BASE is %BASE%

SET "URI_SYS_GIT_BASE=%{rrr%/*}%
echo URI_SYS_GIT_BASE is %URI_SYS_GIT_BASE%

}

sGET_SYS_BASE_URI