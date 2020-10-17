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

CALL .\Bundler\log\win\LOG_MSG "%1 is [%2] - VAR"

:EOF
