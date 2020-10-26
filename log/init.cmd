@echo off


CALL .\$DIR_BNDL\log\win\LOG_ENTER \$DIR_BNDL\log\init

xcopy /q /y .\$DIR_BNDL\log\win\*.cmd .\Exe

CALL .\$DIR_BNDL\log\win\LOG_EXIT \$DIR_BNDL\log\init
