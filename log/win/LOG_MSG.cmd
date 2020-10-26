@echo off
CALL .\settings

IF %LOG_ON% NEQ 1 (
  GOTO :EOF
)

ECHO %*

:EOF


