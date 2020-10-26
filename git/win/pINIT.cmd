@echo off


call :log_enter pINIT


IF NOT EXIST Exe (
  mkdir Exe
)

if NOT EXIST Env (
  mkdir Env
)

CALL .\Bundler\init

CALL .\Exe\mSET_PATH

SET RUN_CLONE=0

if exist Global (
  CALL .\Global\init
) else (
  SET RUN_CLONE=1
)

if exist SYSTEM (
  CALL .\System\init
) else (
  SET "RUN_CLONE=1"
)

if exist Project (
  CALL .\Project\init
) else (
  SET "RUN_CLONE=1"
)

call :log_var RUN_CLONE %RUN_CLONE%

if %RUN_CLONE% EQU 1 (
  CALL pCLONE
)

call :log_exit pINIT

