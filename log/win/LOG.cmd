@ECHO OFF
CALL settings

echo LOG.cmd [LOADED]

echo %*
call :%*
exit /b %errorlevel%


:log
  echo log %*
	IF %LOG_CMD_ON% EQ 1 (
	  ECHO %*
	)
goto :eof


:log_clone_err
  echo log_clone_err %*
	IF %LOG_CLONE_ERR_ON% EQ 1 (
	  CALL :log (%1) [CLONE_ERR]
	)
goto :eof

:log_cmd
  echo log_cmd %*
	IF %LOG_CMD_ON% EQ 1 (
	  CALL :log (%*) [CMD]
	)
goto :eof

:log_dir_err
  echo log_cmd %*
	IF %LOG_DIR_ERR_ON% EQ 1 (
	  CALL :log (%1) [DIR ERR]
	)
goto :eof

:log_dup
  echo log_dup %*
	IF %LOG_DUP_ON% EQ 1 (
	  CALL :log (%1) [DUP]
	)
goto :eof

:log_enter
  echo log_enter %*
	IF %LOG_ENTER_ON% EQ 1 (
	  CALL :log (%1) [ENTER]
  )
goto :eof

:log_err
  echo log_err %*
	IF %LOG_ERR_ON% EQ 1 (
	  CALL :log (%1) [ERR]
	)
goto :eof

:log_exit
  echo log_exit %*
	IF %LOG_EXIT_ON% EQ 1 (
	  CALL :log (%1) [EXIT]
	)
goto :eof

:log_file_err
  echo log_file_err %*
	IF %LOG_FILE_ERR_ON% EQ 1 (
	  CALL :log (%1) [FILE ERR]
	)
goto :eof

:log_info
  echo log_info %*
	IF %LOG_INFO_ON% EQ 1 (
	  CALL :log (%*) [INFO]
	)
goto :eof

:log_invalid
  echo log_invalid %*
	IF %LOG_INVALID_ON% EQ 1 (
	  CALL :log (%1) [INVALID]
	)
goto :eof

:log_load
  echo log_load %*
	IF %LOG_LOAD_ON% EQ 1 (
	  CALL :log %1.cmd [LOADED]
	)
goto :eof

:log_unload
  echo log_unload %*
	IF %LOG_UNLOAD_ON% EQ 1 (
	  CALL :log %1.cmd [UNLOADED]
	)
goto :eof

:log_var
  echo log_var %*
	IF %LOG_VAR_ON% EQ 1 (
		SET "PARAMS=%*"
		::echo PARAMS is %PARAMS%

		SET "VAR=%1"
		::echo VAR is %VAR%

		SET "VAL=%PARAMS:* =%"
		::echo VAL is "%VAL%"

		CALL .\%DIR_BNDL%\log\win\LOG_MSG %VAR% is (%VAL%) [VAR]
	)
goto :eof

:eof


echo LOG.cmd [UNLOADED]