REM @echo off

CALL .\Bundler\log\win\LOG_ENTER mSET_PATH

REM CALL .\Bundler\log\win\LOG_VAR PATH %PATH%

SET "FIND=%CD%\Exe"
REM CALL .\Bundler\log\win\LOG_VAR FIND %FIND%

echo "%PATH%" | findstr /C:"%FIND%">nul && (
  ECHO.FALSE
  GOTO :EOF
)

SET "PATH=%CD%\Exe;%CD%\Env;%PATH%"
REM  SET "PATH_CMD=SET PATH^=%PATH_NEW%"
echo SET PATH=%CD%\Exe;%CD%\Env;%PATH% >path.cmd

REM CALL .\Bundler\log\win\LOG_VAR PATH %PATH%

:EOF

CALL .\Bundler\log\win\LOG_EXIT mSET_PATH