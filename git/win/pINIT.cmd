@echo off


:: echo pINIT.cmd [LOADED]


SET "CLONE=0"

CALL LOG_VAR DIR_BNDL %DIR_BNDL%

if NOT exist %DIR_BNDL% (
  EXIT /B 1
)
CALL %DIR_BNDL%\init

CALL LOG_VAR DIR_GLBL %DIR_GLBL%

if exist %DIR_GLBL% (
  CALL %DIR_GLBL%\init
) else (
  SET "CLONE=1"
)

if exist %DIR_SYS% (
  CALL pINIT_SYS
) else (
  SET "CLONE=1"
)

CALL LOG_VAR DIR_TMPL %DIR_TMPL%

if exist %DIR_TMPL% (
  CALL %DIR_TMPL%\init
) else (
  SET "CLONE=1"
)

CALL LOG_VAR DIR_PROJ %DIR_PROJ%

if exist %DIR_PROJ% (
  CALL %DIR_PROJ%\init
) else (
  SET "CLONE=1"
)

:CLONE
call LOG_VAR CLONE %CLONE%

if %CLONE% EQU 1 (
  CALL pCLONE
)

call LOG_EXIT pINIT

EXIT /B %ERRORLEVEL%