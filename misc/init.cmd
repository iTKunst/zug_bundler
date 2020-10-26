@echo off
CALL .\$DIR_BNDL\log\win\LOG


CALL :log_load \$DIR_BNDL\misc\init

xcopy /q /y .\$DIR_BNDL\misc\win\*.cmd .\Exe

CALL :log_unload \$DIR_BNDL\misc\init
