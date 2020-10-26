@echo off

call :log_enter pCLONE_SYS


CALL bENV

if [%DIR_SYS%]==[] (
  call :log_invalid DIR_SYS
  goto :EOF
)
call :log_var DIR_SYS %DIR_SYS%

if [%SYS_GIT%]==[] (
  call :log_invalid SYS_GIT
  goto :EOF
)
call :log_var SYS_GIT %SYS_GIT%

SET INIT=0

IF NOT EXIST %DIR_SYS% (
  CALL pCLONE_REPO %SYS_GIT% %DIR_SYS%
  SET INIT=1
) else (
  call :log_dup %SYS_GIT%
)
call :log_var ERRORLEVEL %ERRORLEVEL%

IF %ERRORLEVEL% NEQU 0 (
  call :log_clone_err %SYS_GIT%
  call :log_cmd "Does it exist in the repo?"
  goto :EOF
)

:EOF

call :log_exit pCLONE_SYS

EXIT /B %ERRORLEVEL%