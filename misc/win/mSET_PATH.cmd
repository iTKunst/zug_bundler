REM @echo off

CALL .\Bundler\log\win\LOG_ENTER mSET_PATH

Echo.Hello world | findstr /C:"world">nul && (
    Echo.TRUE
) || (
    Echo.FALSE
)

CALL .\Bundler\log\win\LOG_VAR PATH %PATH%

SET FIND=%CD%\Exe
CALL .\Bundler\log\win\LOG_VAR FIND %FIND%

echo "%PATH%" | findstr /C:"%FIND%">nul && (
  Echo.TRUE
) || (
  Echo.FALSE
)
SETx PATH=%FIND%;%PATH%
SETx PATH=%CD%\Env;%PATH%

CALL .\Bundler\log\win\LOG_VAR PATH %PATH%

CALL .\Bundler\log\win\LOG_EXIT mSET_PATH