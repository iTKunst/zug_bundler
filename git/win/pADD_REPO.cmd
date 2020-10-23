@echo off	

CALL LOG_ENTER pADD_REPO

SET GIT=%1
SET DIR=%2

CALL LOG_VAR GIT %GIT%
CALL LOG_VAR DIR %DIR%

git submodule add -f %GIT% %DIR%
git commit -m "adding submodule %DIR%"
git push

CALL LOG_EXIT pADD_REPO
