@echo off


:: echo pINIT_PROJ.cmd [LOADED]


CALL LOG_VAR DIR_BNDL %DIR_BNDL%

if exist %DIR_TMPL% (

    if NOT exist project (
      mkdir project
    )

    xcopy %DIR_TMPL%\env\linux\pENV_MOD.sample.cmd ^
          project\pENV_MOD.sample.cmd

    if NOT exist project\pENV_MOD.cmd (
      xcopy project\pENV_MOD.sample.cmd ^
            project\pENV_MOD.cmd
    )

    xcopy project\pENV_MOD.cmd bin

)

EXIT /B