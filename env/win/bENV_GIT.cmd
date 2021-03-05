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

IF  [%PROJ_MODE%]==[] (
  SET "PROJ_MODE=d"
)
call LOG_VAR PROJ_MODE %PROJ_MODE%

IF  [%PROJ_NAME%]==[] (
  call LOG_INVALID "PROJ_NAME"
  call LOG_CMD "You must set it in settings.cmd!"
  GOTO :EOF
)
call LOG_VAR PROJ_NAME %PROJ_NAME%

IF  [%SYS_NAME%]==[] (
  call LOG_INVALID "SYS_NAME"
  call LOG_CMD "You must set it in settings.cmd!"
  GOTO :EOF
)
call LOG_VAR SYS_NAME %SYS_NAME%

SET "URI_SYS_GIT_BASE="
CALL mGET_SYS_BASE_URI

IF  [%URI_SYS_GIT_BASE%]==[] (
  call LOG_INVALID "URI_SYS_GIT_BASE"
  call LOG_CMD "You must set it in settings_uri.cmd!"
  GOTO :EOF
)
call LOG_VAR URI_SYS_GIT_BASE %URI_SYS_GIT_BASE%

if [%TMPL_NAME%]==[] (
  call LOG_INVALID "TMPL_NAME"
  call LOG_CMD "You must set it in settings.cmd!"
  GOTO :EOF
)
call LOG_VAR TMPL_NAME %TMPL_NAME%

if [%URI_TMPL_GIT_BASE%]==[] (
  call LOG_INVALID "URI_TMPL_GIT_BASE"
  call LOG_CMD "You must set it in settings_uri.cmd!"
  call LOG_CMD "Default value is https://github.com/itkunst"
  GOTO :EOF
)
call LOG_VAR URI_TMPL_GIT_BASE %URI_TMPL_GIT_BASE%

SET "GLBL_GIT=%URI_TMPL_GIT_BASE%%SLASH%%GLBL_NAME%%DOT%%GIT%"
call LOG_VAR GLBL_GIT %GLBL_GIT%

SET "TMPL_GIT=%URI_TMPL_GIT_BASE%%SLASH%%TMPL_NAME%%DOT%%GIT%"
call LOG_VAR TMPL_GIT %TMPL_GIT%

SET "SYS_GIT=%URI_SYS_GIT_BASE%%SLASH%%SYS_NAME%"_system"%DOT%%GIT%"
call LOG_VAR SYS_GIT %SYS_GIT%

:EOF


call LOG_EXIT bENV_GIT
