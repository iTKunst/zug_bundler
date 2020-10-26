@echo off

call :log_enter bENV

CALL env
CALL bENV_GIT

call :log_exit bENV

