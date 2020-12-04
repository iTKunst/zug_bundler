@echo off


CALL .\%DIR_BNDL%\log\win\LOG_LOAD \%DIR_BNDL%\init

CALL .\%DIR_BNDL%\env\init
CALL .\%DIR_BNDL%\git\init
CALL .\%DIR_BNDL%\log\init
CALL .\%DIR_BNDL%\misc\init

CALL .\%DIR_BNDL%\log\win\LOG_UNLOAD \%DIR_BNDL%\init