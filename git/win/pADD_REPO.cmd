@echo off	

call :log_enter pADD_REPO

SET GIT=%1
SET DIR=%2

call :log_var GIT %GIT%
call :log_var DIR %DIR%

git submodule add -f %GIT% %DIR%
git commit -m "adding submodule %DIR%"
git push

call :log_exit pADD_REPO
