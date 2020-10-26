@echo off

call :log_enter bENV

CALL settigns
CALL bENV_GIT

call :log_exit bENV

