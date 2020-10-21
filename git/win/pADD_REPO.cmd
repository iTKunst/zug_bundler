@echo off	

CALL LOG_ENTER pCLONE_REPO

SET GIT=%1
SET DIR=%2

CALL pGET_URI

SET "URI=%PROJ_URI%%SLASH%%GIT%"

CALL LOG_VAR URI %URI%
CALL LOG_VAR DIR %DIR%

git clone %URI% %DIR%
git commit -m "adding submodule %DIR%"
git push
git submodule update --init --recursive

CALL LOG_EXIT pCLONE_REPO
