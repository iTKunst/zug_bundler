@echo off


echo pINIT.cmd [LOADED]


IF NOT EXIST Exe (
  mkdir Exe
)

if NOT EXIST Env (
  mkdir Env
)

CALL .\%DIR_BNDL%\init

CALL .\Exe\mSET_PATH

SET CLONE=0

if exist %DIR_GLBL% (
  CALL .\%DIR_GLBL%\init
) else (
  SET CLONE=1
)

if exist %DIR_SYS% (
  CALL .\%DIR_SYS%\init
) else (
  SET "CLONE=1"
)

if exist %DIR_PROJ% (
  CALL .\%DIR_PROJ%\init
) else (
  SET "CLONE=1"
)

call :log_var RUN_CLONE %RUN_CLONE%

if %CLONE% EQU 1 (
  CALL pCLONE
)

call :log_exit pINIT

