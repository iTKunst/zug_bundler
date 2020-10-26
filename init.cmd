@echo off
CALL .\$DIR_BNDL\log\win\LOG

CALL :log_enter \$DIR_BNDL\init

CALL .\$DIR_BNDL\env\init
CALL .\$DIR_BNDL\git\init
CALL .\$DIR_BNDL\log\init
CALL .\$DIR_BNDL\misc\init

CALL :log_exit \$DIR_BNDL\init