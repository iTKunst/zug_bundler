#!/bin/bash
# shellcheck disable=SC2086
source ./settings.sh


log()
{
  if [ "$LOG_ON"== "true" ]; then

    export MSG=""

    for i in $*; do
      MSG="$MSG $i"
    done

    echo $MSG
  fi
}

log_clone_err()
{
  if [ "$LOG_CLONE_ERR_ON"== "true" ]; then
    log "Error cloning repo ($1) [CMD] "
  fi
}

log_cmd()
{
  if [ "$LOG_CMD_ON"== "true" ]; then
    log "$* [CMD] "
  fi
}

log_dbg()
{
  if [ "$LOG_DBG_ON"== "true" ]; then
    log "$* [DBG] "
  fi
}

log_dir_err()
{
  if [ "$LOG_DIR_ERR_ON"== "true" ]; then
    log "($1) [DIR_ERR] "
  fi
}

log_dup()
{
  if [ "$LOG_DUP_ON"== "true" ]; then
    log "($1) already exists [DUP] "
  fi
}

log_enter()
{
  if [ "$LOG_ENTER_ON"== "true" ]; then
    log "$1 [ENTER] "
  fi
}

log_err()
{
  if [ "$LOG_ERR_ON"== "true" ]; then
    log "$* [ERR] "
  fi
}

log_exit()
{
  if [ "$LOG_EXIT_ON"== "true" ]; then
    log "$1 [EXIT] "
  fi
}

log_file_err()
{
  if [ "$LOG_FILE_ERR_ON"== "true" ]; then
    log "($1) [FILE_ERR] "
  fi
}

log_info()
{
  if [ "$LOG_INFO_ON"== "true" ]; then
    log "$* [INFO] "
  fi
}

log_invalid()
{
  if [ "$LOG_INVALID_ON"== "true" ]; then
    log "!!!!!!! ($1) is invalid !!!!!!  [INVALID]"
  fi
}

log_var()
{
  if [ "$LOG_VAR_ON"== "true" ]; then
    log "$1 is ($2) [VAR]"
  fi
}

log_warn()
{
  if [ "$LOG_WARN_ON"== "true" ]; then
    log "$* [WARN]"
  fi
}