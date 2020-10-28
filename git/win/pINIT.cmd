@echo off


echo pINIT.cmd [LOADED]


SET "CLONE=0"

CALL LOG_VAR DIR_GLBL %DIR_GLBL%

if exist %DIR_GLBL% (
  CALL .\%DIR_GLBL%\init
) else (
  SET "CLONE=1"
  GOTO :CLONE
)

CALL LOG_VAR DIR_SYS %DIR_SYS%

if exist %DIR_SYS% (
  CALL .\%DIR_SYS%\init
	if %ERRORLEVEL% NEQ 0 (
    SET "CLONE=1"
    GOTO :CLONE
) else (
  SET "CLONE=1"
  GOTO :CLONE
)

CALL LOG_VAR DIR_PROJ %DIR_PROJ%

if exist %DIR_PROJ% (
  CALL .\%DIR_PROJ%\init
) else (
  SET "CLONE=1"
  GOTO :CLONE
)

:CLONE
call LOG_VAR CLONE %CLONE%

if %CLONE% EQU 1 (
  CALL pCLONE
)

call LOG_EXIT pINIT

EXIT /B %ERRORLEVEL%