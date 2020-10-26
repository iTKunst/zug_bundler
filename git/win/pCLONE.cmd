@echo off


echo pCLONE.cmd [LOADED]

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
call :log_var INIT %INIT%

IF %INIT% EQU 1 (
  CALL pINIT
)

call :log_cmd "Please run pUPDATE.sh to get the latest changes."

:EOF

call :log_exit pCLONE

