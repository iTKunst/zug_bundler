@echo off


CALL LOG log_enter pCLONE_SYS


CALL bENV

if [%DIR_SYS%]==[] (
  CALL LOG log_invalid DIR_SYS
  goto :EOF
)
CALL LOG log_var DIR_SYS %DIR_SYS%

if [%SYS_GIT%]==[] (
  CALL LOG log_invalid SYS_GIT
  goto :EOF
)
CALL LOG log_var SYS_GIT %SYS_GIT%

SET INIT=0

IF NOT EXIST %DIR_SYS% (
  CALL pCLONE_REPO %SYS_GIT% %DIR_SYS%
  SET INIT=1
) else (
  CALL LOG log_dup %SYS_GIT%
)
CALL LOG log_var ERRORLEVEL %ERRORLEVEL%

IF %ERRORLEVEL% NEQU 0 (
  CALL LOG log_clone_err %SYS_GIT%
  CALL LOG log_cmd "Does it exist in the repo?"
  goto :EOF
)

:EOF

CALL LOG log_exit pCLONE_SYS

EXIT /B %ERRORLEVEL%