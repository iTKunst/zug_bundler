@echo off	


call LOG_ENTER pADD_REPO

SET GIT=%1
SET DIR=%2

call LOG_VAR GIT %GIT%
call LOG_VAR DIR %DIR%

git submodule add -f %GIT% %DIR%
git commit -m "adding submodule %DIR%"
git push

call LOG_EXIT pADD_REPO
