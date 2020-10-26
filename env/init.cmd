@echo off
CALL .\$DIR_BNDL\log\win\LOG


CALL :log_load \$DIR_BNDL\env\init

xcopy /q /y .\$DIR_BNDL\env\win\*.cmd .\Env

CALL :log_unload \$DIR_BNDL\env\init