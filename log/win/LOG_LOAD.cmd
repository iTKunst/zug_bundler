@echo off
CALL .\settings

IF %LOG_LOAD_ON% NEQ 1 (
  GOTO :EOF
)

CALL .\%DIR_BNDL%\log\win\LOG_MSG %1 [LOADED]

:EOF
