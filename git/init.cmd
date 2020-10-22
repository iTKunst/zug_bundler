@echo off

CALL .\Bundler\log\win\LOG_ENTER \Bundler\git\init

xcopy /q /y .\Bundler\git\win\*.cmd .\Exe

CALL .\Bundler\log\win\LOG_EXIT \Bundler\git\init
