@echo off	

CALL LOG_ENTER pCLONE_REPO

SET GIT=%1
SET DIR=%2

CALL LOG_VAR GIT %GIT%
CALL LOG_VAR DIR %DIR%

git clone %GIT% %DIR%
git commit -m "adding submodule %DIR%"
git push

CALL LOG_EXIT pCLONE_REPO
