@echo off
CALL .\settings

IF %LOG_UNLOAD_ON% NEQ 1 (
  GOTO :EOF
)

CALL .\Bundler\log\win\LOG_MSG %1.cmd [UNLOADED]

:EOF
