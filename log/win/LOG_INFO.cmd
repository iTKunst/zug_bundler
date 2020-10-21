@echo off
CALL .\settings

:: echo %bSETTING_LOG_INFO%


if NOT DEFINED bSETTING_LOG_INFO (
::  echo not defined
  GOTO :EOF
)
::echo is defined

IF /I "%bSETTING_LOG_INFO%"=="FALSE" (
::  echo is false
  GOTO :EOF
)
:: echo is true

CALL ./Bundler/log/win/LOG_MSG "(%i) [INFO]"

:EOF
