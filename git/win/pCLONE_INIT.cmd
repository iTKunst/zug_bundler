@echo off

CALL LOG_ENTER pCLONE_INIT

git submodule init
git submodule update

CALL LOG_EXIT pCLONE_INIT
