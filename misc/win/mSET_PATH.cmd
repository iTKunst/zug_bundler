REM @echo off


CALL .\Bundler\log\win\LOG_ENTER mSET_PATH

CALL .\Bundler\log\win\LOG_VAR PATH %PATH%

SET "FIND=%CD%\Exe"
CALL .\Bundler\log\win\LOG_VAR FIND %FIND%

echo "%PATH%" | findstr /C:"%FIND%">nul && (
  GOTO :EOF
)

SET "PATH=%CD%\Exe;%CD%\Env;%PATH%"
echo "SET PATH=%CD%\Exe;%CD%\Env;%PATH%" >path.cmd


:EOF

CALL .\Bundler\log\win\LOG_EXIT mSET_PATH