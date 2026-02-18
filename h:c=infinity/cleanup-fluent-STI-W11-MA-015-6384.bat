echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v242\fluent/ntbin/win64/winkill.exe"

start "tell.exe" /B "C:\PROGRA~1\ANSYSI~1\v242\fluent\ntbin\win64\tell.exe" STI-W11-MA-015 59025 CLEANUP_EXITING
timeout /t 1
"C:\PROGRA~1\ANSYSI~1\v242\fluent\ntbin\win64\kill.exe" tell.exe
if /i "%LOCALHOST%"=="STI-W11-MA-015" (%KILL_CMD% 2636) 
if /i "%LOCALHOST%"=="STI-W11-MA-015" (%KILL_CMD% 6384) 
if /i "%LOCALHOST%"=="STI-W11-MA-015" (%KILL_CMD% 12236)
del "Z:\Numerical FLOW\URSS_plane\h_c_infinity\cleanup-fluent-STI-W11-MA-015-6384.bat"
