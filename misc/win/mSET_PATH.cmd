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

CALL .\Bundler\log\win\LOG_VAR FOUND %FOUND%

CALL .\Bundler\log\win\LOG_EXIT mSET_PATH