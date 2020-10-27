@echo off


CALL .\%DIR_BNDL%\log\win\LOG_LOAD \%DIR_BNDL%\git\init

xcopy /q /y .\%DIR_BNDL%\git\win\*.cmd .\Exe

CALL .\%DIR_BNDL%\log\win\LOG_UNLOAD \%DIR_BNDL%\git\init

