@echo off	

CALL LOG_ENTER pGET_URI

SET PROJ_URI=git config remote.$(git config branch.$(git symbolic-ref -q --short HEAD).remote).urlgit config remote.$(git config branch.$(git symbolic-ref -q --short HEAD).remote).url

CALL LOG_VAR PROJ_URI %PROJ_URI%
pause

CALL LOG_EXIT pCLONE_REPO
