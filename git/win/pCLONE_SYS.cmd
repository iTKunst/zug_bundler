@echo off

call :log_enter pCLONE_SYS


CALL bENV

if [%SYS_DIR%]==[] (
  call :log_invalid SYS_DIR
  goto :EOF
)
call :log_var SYS_DIR %SYS_DIR%

if [%SYS_GIT%]==[] (
  call :log_invalid SYS_GIT
  goto :EOF
)
call :log_var SYS_GIT %SYS_GIT%

SET INIT=0

IF NOT EXIST %SYS_DIR% (
  CALL pCLONE_REPO %SYS_GIT% %SYS_DIR%
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