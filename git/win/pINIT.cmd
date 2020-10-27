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

SET CLONE=0

if exist %DIR_GLBL% (
  CALL .\%DIR_GLBL%\init
) else (
  CLONE=1
)

if exist %DIR_SYS% (
  CALL .\%DIR_SYS%\init
) else (
  CLONE=1
)

if exist %DIR_PROJ% (
  CALL .\%DIR_PROJ%\init
) else (
  CLONE=1
)

call LOG_VAR CLONE %CLONE%

if %CLONE% EQU 1 (
  CALL pCLONE
)

call LOG_EXIT pINIT

EXIT /B %ERRORLEVEL%