@echo off


IF %LOG_DIR_ERR_ON% NEQ 1 (
  GOTO :EOF
)

CALL .\Bundler\log\win\LOG_MSG (%1) [DIR_ERR]

:EOF
