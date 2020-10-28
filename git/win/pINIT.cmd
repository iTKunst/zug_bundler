@echo off


echo pINIT.cmd [LOADED]


IF NOT EXIST Exe (
  echo create Exe
  mkdir Exe
)

if NOT EXIST Env (
  echo create Env
  mkdir Env
)

CALL .\%DIR_BNDL%\init

CALL .\Exe\mSET_PATH
CALL bENV

SET "CLONE=0"

CALL LOG_VAR DIR_GLBL %DIR_GLBL%

if exist %DIR_GLBL% (
  CALL .\%DIR_GLBL%\init
) else (
  SET "CLONE=1"
  GOTO :CLONE
)

if exist %DIR_SYS% (
  if exist .\%DIR_SYS%\init.cmd (
     CALL .\%DIR_SYS%\init
  else (
    SET "CLONE=1"
) else (
  SET "CLONE=1"
  GOTO :CLONE
)

if exist %DIR_PROJ% (
  CALL .\%DIR_PROJ%\init
) else (
  SET "CLONE=1"
  GOTO :CLONE
)

:CLONE
call LOG_VAR CLONE %CLONE%

if %CLONE% EQU 1 (
  CALL pCLONE
)

call LOG_EXIT pINIT

EXIT /B %ERRORLEVEL%