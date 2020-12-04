@echo off


CALL .\%DIR_BNDL%\log\win\LOG_LOAD \%DIR_BNDL%\misc\init

xcopy /q /y .\%DIR_BNDL%\misc\win\*.cmd .\bin > NUL

CALL .\%DIR_BNDL%\log\win\LOG_UNLOAD \%DIR_BNDL%\misc\init
