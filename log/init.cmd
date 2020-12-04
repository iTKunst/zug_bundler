@echo off


CALL .\%DIR_BNDL%\log\win\LOG_LOAD \%DIR_BNDL%\log\init

xcopy /q /y .\%DIR_BNDL%\log\win\*.cmd .\bin >NUL

CALL .\%DIR_BNDL%\log\win\LOG_UNLOAD \%DIR_BNDL%\log\init
