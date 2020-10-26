@echo off	

call :log_enter pCLONE_REPO

SET GIT=%1
SET DIR=%2

call :log_var GIT %GIT%
call :log_var DIR %DIR%

git clone %GIT% %DIR%

IF %ERRORLEVEL% NEQ 0 (
  call :log_errOR_CLONE $DIR%
)

call :log_exit pCLONE_REPO

EXIT /B %ERRORLEVEL%