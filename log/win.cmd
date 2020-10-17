@echo off

CALL .\Bundler\log\win\LOG_ENTER \Bundler\log\win

xcopy /q /y .\Bundler\log\win\*.cmd .\Exe

CALL .\Bundler\log\win\LOG_EXIT \Bundler\log\win
