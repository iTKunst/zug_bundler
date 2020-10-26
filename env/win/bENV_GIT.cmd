@echo off


call :log_enter bENV_GIT

CALL bENV_CAT
CALL bENV_NAME
CALL bENV_TKN


IF  [%GLBL_NAME%]==[] (
  call :log_invalid "GLBL_NAME"
  GOTO :EOF
)
call :log_var GLBL_NAME %GLBL_NAME%

IF  [%SYS%]==[] (
  call :log_invalid "SYS"
  call :log_cmd "You must set it in .\env.cmd!"
  GOTO :EOF
)
call :log_var SYS %SYS%

IF  [%SYS_GIT%]==[] (
  call :log_invalid "SYS_GIT"
  call :log_cmd "You must set it in .\env.cmd!"
  GOTO :EOF
)
call :log_var SYS_GIT %SYS_GIT%

if [%TMPL_NAME%]==[] (
  call :log_invalid "TMPL_NAME"
  call :log_cmd "You must set it in .\env.cmd!"
  GOTO :EOF
)
call :log_var TMPL_NAME %TMPL_NAME%

if [%TMPL_URI%]==[] (
  call :log_invalid "TMPL_URI"
  call :log_cmd "You must set it in .\env.cmd!"
  call :log_cmd "Default value is https://github.com/itkunst"
  GOTO :EOF
)
call :log_var TMPL_URI %TMPL_URI%

SET "GLBL_GIT=%TMPL_URI%%SLASH%%GLOBAL_NAME%%DOT%%GIT%"
call :log_var GLBL_GIT %GLBL_GIT%

SET "PROJ_GIT=%TMPL_URI%%SLASH%%TMPL_NAME%%DOT%%GIT%"
call :log_var PROJ_GIT %PROJ_GIT%

call :log_var SYS_GIT %SYS_GIT%

:EOF

call :log_exit bENV_GIT
