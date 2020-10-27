@echo off


call LOG_ENTER pSET_TRACE


call LOG_VAR bSETTING_LOG_GIT %bSETTING_LOG_GIT%

IF  "%bSETTING_LOG_GIT%"=="true" (
  call LOG_INFO "Turning Git tracing on"
  SET GIT_CURL_VERBOSE=1
  SET GIT_TRACE=1
  SET GIT_TRACE_PACKET=1
) else (
  call LOG_INFO "Turning Git tracing off"
  SET GIT_CURL_VERBOSE=
  SET GIT_TRACE=
  SET GIT_TRACE_PACKET=
)

call LOG_EXIT pSET_TRACE
