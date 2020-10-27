@echo off


CALL LOG_ENTER pCLONE_SYS


CALL bENV

call LOG_VAR INIT %INIT%

if [%DIR_SYS%]==[] (
  CALL LOG_INVALID DIR_SYS
  goto :EOF
)
CALL LOG_VAR DIR_SYS %DIR_SYS%

if [%URI_SYS_GIT%]==[] (
  CALL LOG_INVALID URI_SYS_GIT
  goto :EOF
)
CALL LOG_VAR URI_SYS_GIT %URI_SYS_GIT%

IF NOT EXIST %DIR_SYS% (
  CALL pADD_REPO %URI_SYS_GIT% %DIR_SYS%
  SET "INIT=1"
) else (
  CALL LOG_DUP %SYS_GIT%
)
CALL LOG_VAR ERRORLEVEL %ERRORLEVEL%

IF %ERRORLEVEL% NEQ 0 (
  CALL LOG_CLONE_ERR %SYS_GIT%
  CALL LOG log_cmd "Does it exist in the repo?"
  goto :EOF
)

:EOF

CALL LOG_EXIT pCLONE_SYS

EXIT /B %ERRORLEVEL%