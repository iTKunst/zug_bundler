@echo off	

CALL LOG_ENTER pGET_URI

SET PROJ_URI=git remote get-url $(git for-each-ref --format='%(upstream:short)' $(git symbolic-ref -q HEAD)|cut -d/ -f1)

CALL LOG_VAR PROJ_URI %PROJ_URI%
pause

CALL LOG_EXIT pCLONE_REPO
