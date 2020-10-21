REM @echo off

CALL .\Bundler\log\win\LOG_ENTER mSET_PATH

Echo.Hello world | findstr /C:"world">nul && (
    Echo.TRUE
) || (
    Echo.FALSE
)

CALL .\Bundler\log\win\LOG_VAR PATH "%PATH%"

SET FIND=%CD%\Exe
CALL .\Bundler\log\win\LOG_VAR FIND %FIND%

echo "%PATH%" | findstr /C:"%FIND%">nul && (
  Echo.TRUE
) || (
  Echo.FALSE
  SETX /M PATH "%CD%\Env;%FIND%;%PATH%"
  echo SET PATH="%CD%\Env;%FIND%;"%PATH%
)

CALL .\Bundler\log\win\LOG_EXIT mSET_PATH