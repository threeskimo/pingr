@echo off
:a
ping -n 1 8.8.8.8 | findstr TTL || goto disconnected
rundll32 user32.dll,MessageBeep
@timeout /t 1 /nobreak > nul
goto a
:disconnected
echo Disconnected - Destination host unreachable or request timeout.
goto a