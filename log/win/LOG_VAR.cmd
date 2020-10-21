@echo off
setlocal enabledelayedexpansion
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

SET "PARAMS=%*"
echo PARAMS is %PARAMS%

SET "VAR=%1"
echo VAR is %VAR%

CALL :COUNT "%VAR%"
echo VAR is %length% characters long

SET "VAL=%PARAMS:* =%"
echo VAL is "%VAL%"

CALL .\Bundler\log\win\LOG_MSG "%VAR% is ("%VAL%") [VAR]"

:EOF


:COUNT
set temp=%1
set length=0
:loop
if defined temp (
    set temp=!temp:~1!
    set /a length+=1
    goto :loop
)