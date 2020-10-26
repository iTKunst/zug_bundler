@echo off

call :log_enter bENV

CALL env
CALL bENV_GIT

CALL LOG_EXIT bENV

