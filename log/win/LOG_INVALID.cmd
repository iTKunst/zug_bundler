@echo off
CALL .\settings

:: echo %bSETTING_LOG_INVALID%


if NOT DEFINED bSETTING_LOG_INVALID (
::  echo not defined
  GOTO :EOF
)
::echo is defined

IF /I "%bSETTING_LOG_INVALID%"=="FALSE" (
::  echo is false
  GOTO :EOF
)
:: echo is true

CALL ./Bundler/log/win/LOG_MSG "(%1) [INVALID]"

:EOF
