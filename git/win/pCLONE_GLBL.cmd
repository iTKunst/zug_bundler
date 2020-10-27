@echo off


call LOG_LOAD pCLONE_GLBL


:: CALL bENV

call LOG_VAR INIT %INIT%

if [%DIR_GLBL%]==[] (
  call LOG_INVALID DIR_GLBL
  goto :EOF
)
call LOG_VAR DIR_GLBL %DIR_GLBL%

if [%GLBL_GIT%]==[] (
  call LOG_INVALID GLBL_GIT
  goto :EOF
)
call LOG_VAR GLBL_GIT %GLBL_GIT%


IF NOT EXIST %DIR_GLBL% (
  CALL pCLONE_REPO %GLBL_GIT% %DIR_GLBL%
  SET INIT=1
) else (
  call :log_dup %GLBL_GIT%
)
call LOG_VAR ERRORLEVEL %ERRORLEVEL%

IF %ERRORLEVEL% NEQU 0 (
  call :log_clone_err %GLBL_GIT%
  call LOG_CMD "Does it exist in the repo?"
  goto :EOF
)

:EOF

call LOG_UNLOAD pCLONE_GLBL

EXIT /B %ERRORLEVEL%