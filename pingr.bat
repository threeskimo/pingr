@echo off
set TARGET=8.8.8.8
if not "%~1"=="" set TARGET=%~1
ping %TARGET% -t