REM @echo off


CALL .\%DIR_BNDL%\log\win\LOG_LOAD mSET_PATH

CALL .\%DIR_BNDL%\log\win\LOG_VAR PATH %PATH%

SET "FIND=%CD%\Exe"
CALL .\%DIR_BNDL%\log\win\LOG_VAR FIND %FIND%

echo "%PATH%" | findstr /C:"%FIND%">nul && (
  CALL LOG_DUP PATH
  GOTO :EOF
)

SET "PATH=%CD%\Exe;%CD%\Env;%PATH%"
echo "SET PATH=%CD%\Exe;%CD%\Env;%PATH%" >path.cmd


:EOF

CALL LOG_UNLOAD mSET_PATH