REM @echo off

CALL .\Bundler\log\win\LOG_ENTER mSET_PATH

CALL .\Bundler\log\win\LOG_VAR PATH %PATH%

SET FIND="%CD%\Exe"
CALL .\Bundler\log\win\LOG_VAR FIND %FIND%

Echo.Hello world | findstr /C:"world">nul && (
    Echo.TRUE
) || (
    Echo.FALSE
)

echo "%PATH%" | find /I "%FIND%">nul && (
  Echo.TRUE
) || (
  Echo.FALSE
  SET PATH=%FIND%;%PATH%
)

CALL .\Bundler\log\win\LOG_VAR PATH %PATH%

CALL .\Bundler\log\win\LOG_EXIT mSET_PATH