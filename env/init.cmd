@echo off

CALL .\Bundler\log\win\LOG_ENTER \Bundler\env\init

xcopy /q /y .\Bundler\env\win\*.cmd .\Env

CALL .\Bundler\log\win\LOG_EXIT \Bundler\env\init