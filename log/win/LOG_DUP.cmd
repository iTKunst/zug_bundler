@echo off
CALL .\settings

:: echo %bSETTING_LOG_DUP%


if NOT DEFINED bSETTING_LOG_DUP (
::  echo not defined
  GOTO :EOF
)
::echo is defined

IF /I "%bSETTING_LOG_DUP%"=="FALSE" (
::  echo is false
  GOTO :EOF
)
:: echo is true

SET TMP=%0
SET TMP=%TMP:LOG_DUP=%
:: echo TMP is %TMP%

CALL ./Bundler/log/win/LOG_MSG "[%1] - DUP "

:EOF
