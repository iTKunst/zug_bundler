@echo off


IF %LOG_CLONE_ERR_ON% NEQ 1 (
  GOTO :EOF
)

CALL .\Bundler\log\win\LOG_MSG (%1) [CLONE_ERR]

:EOF
