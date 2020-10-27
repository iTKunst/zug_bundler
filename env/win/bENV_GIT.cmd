@echo off


call LOG_ENTER bENV_GIT

CALL bENV_CAT
CALL bENV_NAME
CALL bENV_TKN


IF  [%GLBL_NAME%]==[] (
  call LOG_INVALID "GLBL_NAME"
  GOTO :EOF
)
call LOG_VAR GLBL_NAME %GLBL_NAME%

IF  [%SYS%]==[] (
  call LOG_INVALID "SYS"
  call LOG_CMD "You must set it in .\env.cmd!"
  GOTO :EOF
)
call LOG_VAR SYS %SYS%

IF  [%SYS_GIT%]==[] (
  call LOG_INVALID "SYS_GIT"
  call LOG_CMD "You must set it in .\env.cmd!"
  GOTO :EOF
)
call LOG_VAR SYS_GIT %SYS_GIT%

if [%TMPL_NAME%]==[] (
  call LOG_INVALID "TMPL_NAME"
  call LOG_CMD "You must set it in .\env.cmd!"
  GOTO :EOF
)
call LOG_VAR TMPL_NAME %TMPL_NAME%

if [%TMPL_URI%]==[] (
  call LOG_INVALID "TMPL_URI"
  call LOG_CMD "You must set it in .\env.cmd!"
  call LOG_CMD "Default value is https://github.com/itkunst"
  GOTO :EOF
)
call LOG_VAR TMPL_URI %TMPL_URI%

SET "GLBL_GIT=%TMPL_URI%%SLASH%%GLOBAL_NAME%%DOT%%GIT%"
call LOG_VAR GLBL_GIT %GLBL_GIT%

SET "PROJ_GIT=%TMPL_URI%%SLASH%%TMPL_NAME%%DOT%%GIT%"
call LOG_VAR PROJ_GIT %PROJ_GIT%

call LOG_VAR SYS_GIT %SYS_GIT%

:EOF

call LOG_EXIT bENV_GIT
