@echo off
:: Locate Edge executable (covers both 32-bit and 64-bit install paths)
set "EDGE=C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
if not exist "%EDGE%" set "EDGE=C:\Program Files\Microsoft\Edge\Application\msedge.exe"

:: Launch in fullscreen kiosk mode (URL is a positional arg, not --app=)
start "" "%EDGE%" --kiosk "file:///%~dp0index.html" --edge-kiosk-type=fullscreen --no-first-run --disable-features=msEdgeEnterpriseModePolicies