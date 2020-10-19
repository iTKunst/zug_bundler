@echo off	

CALL LOG_ENTER pCLONE_REPO

SET GIT=%1
SET DIR=%2

CALL LOG_VAR GIT %GIT%
CALL LOG_VAR DIR %DIR%

REM git clone %GIT% %DIR%
echo "git clone %GIT% %DIR%"

xcopy /q /y ..\tmpl\%DIR% .\%DIR%

CALL LOG_EXIT pCLONE_REPO
