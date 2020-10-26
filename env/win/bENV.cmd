@echo off

call :log_enter bENV

CALL settings
CALL bENV_GIT

call :log_exit bENV

