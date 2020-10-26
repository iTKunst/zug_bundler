@echo off


CALL .\Bundler\log\win\LOG_ENTER \Bundler\misc\init

xcopy /q /y .\Bundler\misc\win\*.cmd .\Exe

CALL .\Bundler\log\win\LOG_EXIT \Bundler\misc\init