@echo off


CALL .\$DIR_BNDL\log\win\LOG_ENTER \$DIR_BNDL\misc\init

xcopy /q /y .\$DIR_BNDL\misc\win\*.cmd .\Exe

CALL .\$DIR_BNDL\log\win\LOG_EXIT \$DIR_BNDL\misc\init