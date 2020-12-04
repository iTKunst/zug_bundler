@echo off


CALL .\%DIR_BNDL%\log\win\LOG_LOAD \%DIR_BNDL%\env\init

xcopy /q /y .\%DIR_BNDL%\env\win\*.cmd .\bin >NUL

CALL .\%DIR_BNDL%\log\win\LOG_UNLOAD \%DIR_BNDL%\env\init
