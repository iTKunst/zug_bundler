@echo off


CALL .\%DIR_BNDL%\log\win\LOG_LOAD \%DIR_BNDL%\bin\init

xcopy /q /y .\%DIR_BNDL%\bin\win\*.cmd .\bin >NUL

CALL .\%DIR_BNDL%\log\win\LOG_UNLOAD \%DIR_BNDL%\bin\init
