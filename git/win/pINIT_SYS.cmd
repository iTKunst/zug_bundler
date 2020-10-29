@echo off


CALL LOG_LOAD pINIT_SYS


	CALL LOG_VAR DIR_SYS %DIR_SYS%

	if NOT exist %DIR_SYS% (
	  SET "CLONE=1"
	  GOTO :EOF
	)

  cd %DIR_SYS%
  echo in system folder

  git submodule init %DIR_SYS%
	if %ERRORLEVEL% NEQ 0 (
		CALL LOG_ERR Unable to initialize submodule
		return ERRORLEVEL
	)

  git submodule update %DIR_SYS%
	if %ERRORLEVEL% NEQ 0 (
		CALL LOG_ERR Unable to update submodule
		return ERRORLEVEL
	)

  cd ..
  echo exit system folder

  CALL .\%DIR_SYS%\init


  :EOF

call LOG_UNLOAD pINIT_SYS

EXIT /B %ERRORLEVEL%