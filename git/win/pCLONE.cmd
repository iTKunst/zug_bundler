@echo off

CALL LOG_ENTER pCLONE

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Program

if NOT EXIST env.cmd (
  CALL LOG_FILE_ERR "env.cmd"
  goto :EOF
)
CALL LOG_INFO "env.cmd exists"

if NOT EXIST Bundler (
  CALL LOG_DIR_ERR "Bundler"
  CALL LOG_CMD "You must create the repository from the  ['https://github.com/iTKunst/zug_tmpl'] template!"
  goto :EOF
)
CALL LOG_INFO "Bundler exists"

CALL bENV

CALL pCLONE_GLBL
CALL pCLONE_PROJ
CALL pCLONE_SYS
CALL LOG_VAR RUN_INIT %RUN_INIT%

IF %RUN_INIT% EQU 1 (
  CALL pINIT
)

CALL LOG_CMD "Please run pUPDATE.sh to get the latest changes."

:EOF

CALL LOG_EXIT pCLONE

