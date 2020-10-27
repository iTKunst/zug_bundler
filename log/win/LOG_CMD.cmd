@echo off


IF %LOG_CMD_ON% NEQ 1 (
  GOTO :EOF
)

CALL .\Bundler\log\win\LOG_MSG %* [CMD]

:EOF
