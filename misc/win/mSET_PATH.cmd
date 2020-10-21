REM @echo off

CALL .\Bundler\log\win\LOG_ENTER mSET_PATH

CALL .\Bundler\log\win\LOG_VAR PATH %PATH%

SET FIND="%CD%\Exe"
CALL .\Bundler\log\win\LOG_VAR FIND %FIND%

echo %PATH% | find /I "%FIND%">Nul && (
  CALL .\Bundler\log\win\LOG_DUP PATH
) || (
  SET PATH=%FIND%;%PATH%
)

CALL .\Bundler\log\win\LOG_VAR PATH %PATH%

CALL .\Bundler\log\win\LOG_EXIT mSET_PATH