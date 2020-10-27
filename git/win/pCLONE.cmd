@echo off


CALL LOG_LOAD pCLONE

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Program

IF NOT EXIST Exe (
  mkdir Exe
)
IF NOT EXIST Env (
  mkdir Env
)

CALL bENV

CALL pCLONE_GLBL
CALL pCLONE_PROJ
CALL pCLONE_SYS

call LOG_VAR INIT %INIT%

IF %INIT% EQU 1 (
  CALL pINIT
)

call LOG_CMD "Please run pUPDATE.sh to get the latest changes."

:EOF

call LOG_UNLOAD pCLONE

