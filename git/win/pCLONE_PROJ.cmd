@echo off


CALL LOG log_enter pCLONE_PROJ


CALL bENV

if [%DIR_PROJ%]==[] (
  CALL LOG log_invalid DIR_PROJ
  goto :EOF
)
CALL LOG log_var DIR_PROJ %DIR_PROJ%

if [%PROJ_GIT%]==[] (
  CALL LOG log_invalid PROJ_GIT
  goto :EOF
)
CALL LOG log_var PROJ_GIT %PROJ_GIT%

SET INIT=0

IF NOT EXIST %DIR_PROJ% (
  CALL pCLONE_REPO %PROJ_GIT% %DIR_PROJ%
  SET INIT=1
) else (
  call :log_dup %PROJ_GIT%
)
call :log_var ERRORLEVEL %ERRORLEVEL%

IF %ERRORLEVEL% NEQU 0 (
  call :log_clone_err %PROJ_GIT%
  call :log_cmd "Does it exist in the repo?"
  goto :EOF
)

:EOF

call :log_exit pCLONE_PROJ

EXIT /B %ERRORLEVEL%