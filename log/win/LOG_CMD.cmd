@echo off
CALL .\settings

:: echo %bSETTING_LOG_CLONE_ERR%

if NOT DEFINED bSETTING_LOG_CMD (
::  echo not defined
  GOTO :EOF
)
::echo is defined

IF /I "%bSETTING_LOG_CMD%"=="FALSE" (
::  echo is false
  GOTO :EOF
)
:: echo is true

CALL ./Bundler/log/win/LOG_MSG "[%i] [CMD]"

:EOF
