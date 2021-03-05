@echo off

git config --list | findstr remote.origin.url > temp.txt
set /p sss-<temp.txt

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