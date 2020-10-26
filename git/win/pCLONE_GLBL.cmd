@echo off

call :log_enter pCLONE_GLBL


CALL bENV

if [%GLBL_DIR%]==[] (
  call :log_invalid GLBL_DIR
  goto :EOF
)
call :log_var GLBL_DIR %GLBL_DIR%

if [%GLBL_GIT%]==[] (
  call :log_invalid GLBL_GIT
  goto :EOF
)
call :log_var GLBL_GIT %GLBL_GIT%

SET INIT=0

IF NOT EXIST %GLBL_DIR% (
  CALL pCLONE_REPO %GLBL_GIT% %GLBL_DIR%
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