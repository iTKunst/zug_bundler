REM @echo off

CALL .\Bundler\log\win\LOG_ENTER mSET_PATH

CALL .\Bundler\log\win\LOG_VAR PATH %PATH%

SET FIND=%CD%\Exe
CALL .\Bundler\log\win\LOG_VAR FIND %FIND%

echo %PATH% | findstr "%CD%\Exe" 1>nul
CALL .\Bundler\log\win\LOG_CMD "findstr called"

if errorlevel 1 (
  CALL .\Bundler\log\win\LOG_DUP PATH
) else (
  set PATH=%CD%\Exe;%CD%\Env;%PATH%
)

CALL .\Bundler\log\win\LOG_VAR PATH %PATH%

CALL .\Bundler\log\win\LOG_EXIT mSET_PATH