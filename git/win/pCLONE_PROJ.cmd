@echo off

call :log_enter pCLONE_PROJ


CALL bENV

if [%PROJ_DIR%]==[] (
  CALL LOG_INVALID PROJ_DIR
  goto :EOF
)
call :log_var PROJ_DIR %PROJ_DIR%

if [%PROJ_GIT%]==[] (
  CALL LOG_INVALID PROJ_GIT
  goto :EOF
)
call :log_var PROJ_GIT %PROJ_GIT%

SET INIT=0

IF NOT EXIST %PROJ_DIR% (
  CALL pCLONE_REPO %PROJ_GIT% %PROJ_DIR%
  SET INIT=1
) else (
  call :log_dup %PROJ_GIT%
)
call :log_var ERRORLEVEL %ERRORLEVEL%

IF %ERRORLEVEL% NEQU 0 (
  CALL LOG_CLONE_ERR %PROJ_GIT%
  call :log_cmd "Does it exist in the repo?"
  goto :EOF
)

:EOF

call :log_exit pCLONE_PROJ

EXIT /B %ERRORLEVEL%