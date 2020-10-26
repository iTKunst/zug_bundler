@echo off
CALL .\$DIR_BNDL\log\win\LOG


CALL :log_load \$DIR_BNDL\log\init

xcopy /q /y .\$DIR_BNDL\log\win\*.cmd .\Exe

CALL :log_unload \$DIR_BNDL\log\init
