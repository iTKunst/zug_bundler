@echo off

CALL .\Bundler\log\win\LOG_ENTER \Bundler\win

CALL .\Bundler\env\win
CALL .\Bundler\git\win
CALL .\Bundler\log\win
CALL .\Bundler\misc\win

CALL .\Bundler\log\win\LOG_EXIT \Bundler\win