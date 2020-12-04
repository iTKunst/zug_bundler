@echo off

rd /s /q  bin
rd /s /q  bundler
rd /s /q  global
rd /s /q  project
rd /s /q  system
rd /s /q  .git/modules
del .gitmodules
del nul
del path.txt