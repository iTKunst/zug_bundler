@echo off


CALL .\%DIR_BNDL%\log\win\LOG_LOAD mSET_PATH

CALL .\%DIR_BNDL%\log\win\LOG_VAR PATH %PATH%

SET "FIND=%CD%\bin"
CALL .\%DIR_BNDL%\log\win\LOG_VAR FIND %FIND%

ECHO "%PATH%" | findstr /C:"%FIND%">nul && (
  CALL LOG_DUP PATH
  GOTO :EOF
)

SET "PATH=%CD%\bin;%CD%\Env;%PATH%"
ECHO "SET PATH=%CD%\bin;%CD%\Env;%PATH%" >path.cmd


:EOF

CALL LOG_UNLOAD mSET_PATH

EXIT /B %ERRORLEVEL%

