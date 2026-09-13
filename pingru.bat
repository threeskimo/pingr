@echo off
set TARGET=8.8.8.8
if not "%~1"=="" set TARGET=%~1
:a
ping -n 1 %TARGET% | findstr TTL || goto disconnected
rundll32 user32.dll,MessageBeep
@timeout /t 1 /nobreak > nul
goto a
:disconnected
echo Disconnected - Destination host unreachable or request timeout.
goto a