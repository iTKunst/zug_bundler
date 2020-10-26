@echo off


CALL .\$DIR_BNDL\log\win\LOG_ENTER \$DIR_BNDL\init

CALL .\$DIR_BNDL\env\init
CALL .\$DIR_BNDL\git\init
CALL .\$DIR_BNDL\log\init
CALL .\$DIR_BNDL\misc\init

CALL .\$DIR_BNDL\log\win\LOG_EXIT \$DIR_BNDL\init