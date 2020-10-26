@echo off


CALL .\$DIR_BNDL\log\win\LOG_ENTER \$DIR_BNDL\env\init

xcopy /q /y .\$DIR_BNDL\env\win\*.cmd .\Env

CALL .\$DIR_BNDL\log\win\LOG_EXIT \$DIR_BNDL\env\init