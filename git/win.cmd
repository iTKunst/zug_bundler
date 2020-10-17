@echo off

CALL .\Bundler\log\win\LOG_ENTER \Bundler\git\win

xcopy /q /y .\Bundler\git\win\*.cmd .\Exe

CALL .\Bundler\log\win\LOG_EXIT \Bundler\git\win
