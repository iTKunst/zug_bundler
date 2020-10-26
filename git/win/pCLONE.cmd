@echo off

call :log_enter pCLONE

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Program

if NOT EXIST env.cmd (
  CALL LOG_FILE_ERR "env.cmd"
  goto :EOF
)
call :log_info "env.cmd exists"

if NOT EXIST Bundler (
  CALL LOG_DIR_ERR "Bundler"
  call :log_cmd "You must create the repository from the  ['https://github.com/iTKunst/zug_tmpl'] template!"
  goto :EOF
)
call :log_info "Bundler exists"

CALL bENV

CALL pCLONE_GLBL
CALL pCLONE_PROJ
CALL pCLONE_SYS
call :log_var RUN_INIT %RUN_INIT%

IF %RUN_INIT% EQU 1 (
  CALL pINIT
)

call :log_cmd "Please run pUPDATE.sh to get the latest changes."

:EOF

call :log_exit pCLONE

