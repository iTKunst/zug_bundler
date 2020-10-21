REM @echo off

CALL .\Bundler\log\win\LOG_ENTER mSET_PATH

CALL .\Bundler\log\win\LOG_VAR PATH %PATH%

SET "FIND=%CD%\Exe"
CALL .\Bundler\log\win\LOG_VAR FIND %FIND%

SET "FOUND="
echo "%PATH%" | findstr /C:"%FIND%">nul && (
  SET "FOUND=1"
) || (
  SET "FOUND=0"
)

IF %FOUND% EQU 0 (
  SET PATH=%CD%\Exe;%CD\Env;%PATH%
  SET PATH 
REM  SET "PATH_CMD=SET PATH^=%PATH_NEW%"
REM   echo %PATH_CMD% >path.cmd
)

CALL .\Bundler\log\win\LOG_VAR FOUND %FOUND%

CALL .\Bundler\log\win\LOG_EXIT mSET_PATH