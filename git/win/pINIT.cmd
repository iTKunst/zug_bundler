@echo off


CALL LOG_ENTER pINIT


SET RUN_CLONE=0

if exist Exe (
  RD /S /Q Exe
)
mkdir Exe

if exist Env (
  RD /S /Q Env
)
mkdir Env

CALL .\Bundler\init

CALL .\Exe\mSET_PATH

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

CALL LOG_EXIT pINIT

