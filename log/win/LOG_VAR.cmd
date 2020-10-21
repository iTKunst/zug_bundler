@echo off
CALL .\settings

:: echo %bSETTING_LOG_VAR%


if NOT DEFINED bSETTING_LOG_VAR (
::  echo not defined
  GOTO :EOF
)
::echo is defined

IF /I "%bSETTING_LOG_VAR%"=="FALSE" (
::  echo is false
  GOTO :EOF
)
:: echo is true

SET PARAMS=%*
echo PARAMS is %PARAMS%

SET VAR=%1
echo VAR is %VAR%

SET VAL=%PARAMS:"%VAR%" =%
echo VAL is %VAL%

CALL .\Bundler\log\win\LOG_MSG "%1 is (%VAL%) [VAR]"

:EOF
