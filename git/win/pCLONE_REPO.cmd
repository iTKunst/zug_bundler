@echo off	

CALL LOG_ENTER pCLONE_REPO

SET GIT=%1
SET DIR=%2

CALL LOG_VAR GIT %GIT%
CALL LOG_VAR DIR %DIR%

git clone %GIT% %DIR%

REM echo "git clone %GIT% %DIR%"
REM SET SRC=..\..\tmpl\tmpl_%DIR%
REM CALL LOG_VAR SRC %SRC%
REM xcopy /q /y %SRC% .\%DIR%

CALL LOG_EXIT pCLONE_REPO
