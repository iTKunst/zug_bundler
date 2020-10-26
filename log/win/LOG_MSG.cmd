@echo off
CALL .\settings

IF %LOG_CMD_ON% NEQ 1 (
  GOTO :EOF
)

ECHO %*

:EOF


