#!/bin/bash
# shellcheck disable=SC2086

log()
{
  if [ $LOG_ON -eq 1 ]; then

    export MSG=""

    for i in $*; do
      MSG="$MSG $i"
    done

    echo $MSG
  fi
}

log_clone_err()
{
  if [ $LOG_CLONE_ERR_ON -eq 1 ]; then
    log "Error cloning repo ($1) [CMD] "
  fi
}

log_cmd()
{
  if [ $LOG_CMD_ON -eq 1 ]; then
    log "$* [CMD] "
  fi
}

log_dbg()
{
  if [ $LOG_DBG_ON -eq 1 ]; then
    log "$* [DBG] "
  fi
}

log_dir_err()
{
  if [ $LOG_DIR_ERR_ON -eq 1 ]; then
    log "($1) [DIR_ERR] "
  fi
}

log_dup()
{
  if [ $LOG_DUP_ON -eq 1 ]; then
    log "($1) already exists [DUP] "
  fi
}

log_enter()
{
  if [ $LOG_ENTER_ON -eq 1 ]; then
    log "$1 [ENTER] "
  fi
}

log_err()
{
  if [ $LOG_ERR_ON -eq 1 ]; then
    log "$* [ERR] "
  fi
}

log_exit()
{
  if [ $LOG_EXIT_ON -eq 1 ]; then
    log "$1 [EXIT] "
  fi
}

log_file_err()
{
  if [ $LOG_FILE_ERR_ON -eq 1 ]; then
    log "($1) [FILE_ERR] "
  fi
}

log_info()
{
  if [ $LOG_INFO_ON -eq 1 ]; then
    log "$* [INFO] "
  fi
}

log_invalid()
{
  if [ $LOG_INVALID_ON -eq 1 ]; then
    log "!!!!!!! ($1) is invalid !!!!!!  [INVALID]"
  fi
}

log_var()
{
  if [ $LOG_VAR_ON -eq 1 ]; then
    log "$1 is ($2) [VAR]"
  fi
}

log_warn()
{
  if [ $LOG_WARN_ON -eq 1 ]; then
    log "$* [WARN]"
  fi
}