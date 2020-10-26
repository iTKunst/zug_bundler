@echo off

call :log_enter pCLONE_GLBL


CALL bENV

if [%DIR_GLBL%]==[] (
  call :log_invalid DIR_GLBL
  goto :EOF
)
call :log_var DIR_GLBL %DIR_GLBL%

if [%GLBL_GIT%]==[] (
  call :log_invalid GLBL_GIT
  goto :EOF
)
call :log_var GLBL_GIT %GLBL_GIT%

SET INIT=0

IF NOT EXIST %DIR_GLBL% (
  CALL pCLONE_REPO %GLBL_GIT% %DIR_GLBL%
  SET INIT=1
) else (
  call :log_dup %GLBL_GIT%
)
call :log_var ERRORLEVEL %ERRORLEVEL%

IF %ERRORLEVEL% NEQU 0 (
  call :log_clone_err %GLBL_GIT%
  call :log_cmd "Does it exist in the repo?"
  goto :EOF
)

:EOF

call :log_exit pCLONE_GLBL

EXIT /B %ERRORLEVEL%