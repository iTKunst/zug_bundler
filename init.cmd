@echo off
CALL settings
CALL .\$DIR_BNDL\log\win\LOG


CALL :log_load \$DIR_BNDL\init

CALL .\$DIR_BNDL\env\init
CALL .\$DIR_BNDL\git\init
CALL .\$DIR_BNDL\log\init
CALL .\$DIR_BNDL\misc\init

CALL :log_unload \$DIR_BNDL\init