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

echo %PATH% | findstr /C:%FIND%>nul && (
  Echo.TRUE
) || (
  Echo.FALSE
::  SET "PATH_NEW=%FIND%;%CD%\Env;%PATH%"
::  SET "PATH=%PATH_NEW%"

::  SET "PATH_CMD=SET PATH=%PATH_NEW%"
::  echo %PATH_CMD% >path.cmd
)

CALL .\Bundler\log\win\LOG_EXIT mSET_PATH