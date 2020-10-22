@echo off
CALL .\settings

:: echo %bSETTING_LOG_FILE_ERR%


if NOT DEFINED bSETTING_LOG_FILE_ERR (
::  echo not defined
  GOTO :EOF
)
::echo is defined

IF /I "%bSETTING_LOG_FILE_ERR%"=="FALSE" (
::  echo is false
  GOTO :EOF
)
:: echo is true

CALL .\Bundler\log\win\LOG_MSG "(%1) [FILE_ERR]"

:EOF
