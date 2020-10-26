@echo off
CALL .\$DIR_BNDL\log\win\LOG


CALL :log_load \$DIR_BNDL\git\init

xcopy /q /y .\$DIR_BNDL\git\win\*.cmd .\Exe

CALL :log_unload \$DIR_BNDL\git\init

