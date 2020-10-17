@echo off

CALL .\Bundler\log\win\LOG_ENTER mSET_PATH

CALL .\Bundler\log\win\LOG_VAR PATH %PATH%

:: echo %PATH% | findstr "%CD%\Exe" 1>nul
if errorlevel 1 (
::  echo path already set
  CALL .\Bundler\log\win\LOG_DUP PATH
) else (
::  echo "path not set"
  set PATH=%CD%\Exe;%CD%\Env;%PATH%
)

CALL .\Bundler\log\win\LOG_VAR PATH %PATH%

CALL .\Bundler\log\win\LOG_EXIT mSET_PATH