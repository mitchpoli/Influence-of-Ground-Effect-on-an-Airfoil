echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v242\fluent/ntbin/win64/winkill.exe"

start "tell.exe" /B "C:\PROGRA~1\ANSYSI~1\v242\fluent\ntbin\win64\tell.exe" STI-W11-MA-019 50186 CLEANUP_EXITING
timeout /t 1
"C:\PROGRA~1\ANSYSI~1\v242\fluent\ntbin\win64\kill.exe" tell.exe
if /i "%LOCALHOST%"=="STI-W11-MA-019" (%KILL_CMD% 6636) 
if /i "%LOCALHOST%"=="STI-W11-MA-019" (%KILL_CMD% 13564) 
if /i "%LOCALHOST%"=="STI-W11-MA-019" (%KILL_CMD% 13960)
del "Z:\Numerical FLOW\URSS_plane\h_c_0_5\cleanup-fluent-STI-W11-MA-019-13564.bat"
