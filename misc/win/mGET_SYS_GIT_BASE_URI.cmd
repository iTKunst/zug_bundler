@echo off

rem set search=remote.origin.url=
rem echo search is %search%

rem git config --list | findstr %search% > temp.txt
rem set /p sss=<temp.txt

rem echo sss is %sss%

rem SET ttt=%sss:remote.origin.url=%
rem echo ttt is %ttt%

rem SET uuu=%ttt:~1%
rem echo uuu

rem SET "rrr=(sed s/remote.origin.url=//g <<< $sss)"
rem cho rrr is %rrr%

rem SET "BASE={rrr%/*}"
rem echo BASE is %BASE%

SET URI_SYS_GIT_BASE=https://github.com/itkunst
echo URI_SYS_GIT_BASE is %URI_SYS_GIT_BASE%

