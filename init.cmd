@echo off

CALL .\Bundler\log\win\LOG_ENTER \Bundler\init

CALL .\Bundler\env\init
CALL .\Bundler\git\init
CALL .\Bundler\log\init
CALL .\Bundler\misc\init

CALL .\Bundler\log\win\LOG_EXIT \Bundler\init