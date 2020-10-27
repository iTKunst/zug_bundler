@echo off

IF %LOG_CMD_ON% NEQ 1 (
  GOTO :EOF
)

SET "PARAMS=%*"
:: echo PARAMS is %PARAMS%

SET "VAR=%1"
:: echo VAR is %VAR%

SET "VAL=%PARAMS:* =%"
:: echo VAL is "%VAL%"

CALL .\Bundler\log\win\LOG_MSG %VAR% is (%VAL%) [VAR]

:EOF
