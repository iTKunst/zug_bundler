@echo off
CALL .\settings

:: echo %bSETTING_LOG%

if NOT DEFINED bSETTING_LOG (
::  echo not defined
  GOTO :EOF
)
::echo is defined

IF /I "%bSETTING_LOG%"=="FALSE" (
::  echo is false
  GOTO :EOF
)
:: echo is true

ECHO %*

:EOF


