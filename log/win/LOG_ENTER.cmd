@echo off

IF %LOG_ENTER_ON% NEQ 1 (
  GOTO :EOF
)

CALL .\Bundler\log\win\LOG_MSG (%1) [ENTER]

:EOF


