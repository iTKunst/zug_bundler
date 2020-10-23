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

if [%GLBL_GIT%]==[] (
  CALL LOG_INVALID "GLBL_GIT"
  goto :EOF
)
CALL LOG_VAR GLBL_GIT %GLBL_GIT%

if [%PROJ_GIT%]==[] (
  CALL LOG_INVALID "PROJ_GIT"
  goto :EOF
)
CALL LOG_VAR PROJ_GIT %PROJ_GIT%

if [%SYS%]==[] (
  CALL LOG_INVALID "SYS"
  CALL LOG_CMD "Is SYS set in .\env.cmd?"
  goto :EOF
)
CALL LOG_VAR SYS_GIT %SYS_GIT%

if [%SYS_GIT%]==[] (
  CALL LOG_INVALID "SYS_GIT"
  CALL LOG_CMD "Is SYS set in .\env.cmd?"
  goto :EOF
)
CALL LOG_VAR SYS_GIT %SYS_GIT%

IF NOT EXIST Global (
  CALL pCLONE_REPO %GLBL_GIT% Global
) else (
  CALL LOG_DUP %GLBL_GIT%
)

IF NOT EXIST Global (
  CALL LOG_CLONE_ERR %GLBL_GIT%
  CALL LOG_CMD "Does it exist in the repo?"
  goto :EOF
)

IF NOT EXIST Project (
  CALL pCLONE_REPO %PROJ_GIT% Project
) else (
  CALL LOG_DUP %PROJ_GIT%
)

IF NOT EXIST Project (
  CALL LOG_CLONE_ERR %PROJ_GIT%
  CALL LOG_CMD "Does it exist in the repo?"
  goto :EOF
)

IF NOT EXIST System (
  CALL pADD_REPO %SYS_GIT% System
) else (
  CALL LOG_DUP %SYS_GIT%
)

IF NOT EXIST System (
  CALL LOG_CLONE_ERR %SYS_GIT%
  CALL LOG_CMD "Does it exist in the repo?"
  goto :EOF
)

CALL pCLONE_INIT

CALL init

CALL LOG_CMD "Please run pUPDATE.sh to get the latest changes."

:EOF

CALL LOG_EXIT pCLONE

