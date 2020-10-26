@echo off
CALL .\settings

IF %LOG_CMD_ON% NEQ 1 (
  GOTO :EOF
)

CALL .\Bundler\log\win\LOG_MSG (%1) [FILE_ERR]

:EOF
