#!/bin/bash
# shellcheck disable=SC2086
source ./settings.sh


log()
{
  if [ "$bSETTING_LOG" == "true" ]; then

    export MSG=""

    for i in $*; do
      MSG="$MSG $i"
    done

    echo $MSG
  fi
}

log_cmd()
{
  if [ "$bSETTING_LOG_CMD" == "true" ]; then
    log "$* [CMD] "
  fi
}

log_dbg()
{
  if [ "$bSETTING_LOG_DBG" == "true" ]; then
    log "$* [DBG] "
  fi
}

log_dir_err()
{
  if [ "$bSETTING_LOG_DIR_ERR" == "true" ]; then
    log "$1 [DIR_ERR] "
  fi
}

log_dup()
{
  if [ "$bSETTING_LOG_DUP" == "true" ]; then
    log "[$1] already exists [DUP] "
  fi
}

log_enter()
{
  if [ "$bSETTING_LOG_ENTER" == "true" ]; then
    log "$1 [ENTER] "
  fi
}

log_err()
{
  if [ "$bSETTING_LOG_ERR" == "true" ]; then
    log "$* [ERR] "
  fi
}

log_exit()
{
  if [ "$bSETTING_LOG_EXIT" == "true" ]; then
    log "$1 [EXIT] "
  fi
}

log_file_err()
{
  if [ "$bSETTING_LOG_FILE_ERR" == "true" ]; then
    log "$1 [FILE_ERR] "
  fi
}

log_info()
{
  if [ "$bSETTING_LOG_INFO" == "true" ]; then
    log "$* [INFO] "
  fi
}

log_invalid()
{
  if [ "$bSETTING_LOG_INVALID" == "true" ]; then
    log "!!!!!!! $1 is invalid !!!!!!  [INVALID]"
  fi
}

log_var()
{
  if [ "$bSETTING_LOG_VAR" == "true" ]; then
    log "$1 is [$2] [VAR]"
  fi
}

log_warn()
{
  if [ "$bSETTING_LOG_WARN" == "true" ]; then
    log "$* [WARN]"
  fi
}