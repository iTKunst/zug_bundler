@echo off
source LOG.sh

CALL LOG_ENTER pSET_TRACE

if not exist settings.cmd (
  CALL .\Bundler\log\win\LOG_FILE_ERR "settings.cmd"
  goto :EOF
)

CALL settings.cmd

CALL LOG_VAR bSETTING_LOG_GIT %bSETTING_LOG_GIT%

IF  "%bSETTING_LOG_GIT%"=="true" (
  CALL LOG_INFO "Turning Git tracing on"
  SET GIT_TRACE=1
  SET GIT_CURL_VERBOSE=1
) else (
  CALL LOG_INFO "Turning Git tracing off"
  SET GIT_TRACE=0
  SET GIT_CURL_VERBOSE=0
)

CALL LOG_EXIT pSET_TRACE