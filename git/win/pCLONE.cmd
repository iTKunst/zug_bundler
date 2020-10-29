@echo off


CALL LOG_LOAD pCLONE


IF NOT EXIST Exe (
  mkdir Exe
)
IF NOT EXIST Env (
  mkdir Env
)

SET "INIT=0"

CALL pCLONE_GLBL
IF %ERRORLEVEL% NEQ 0 (
  goto :EOF
)

CALL pCLONE_PROJ
IF %ERRORLEVEL% NEQ 0 (
  goto :EOF
)

CALL pCLONE_SYS
IF %ERRORLEVEL% NEQ 0 (
  goto :EOF
)

call LOG_VAR INIT %INIT%

IF %INIT% EQU 1 (
  CALL pINIT
)

call LOG_CMD Please run pUPDATE to get the latest changes.

:EOF

call LOG_UNLOAD pCLONE

EXIT /B %ERRORLEVEL%