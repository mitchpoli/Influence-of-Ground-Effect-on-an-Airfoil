echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v242\fluent/ntbin/win64/winkill.exe"

start "tell.exe" /B "C:\PROGRA~1\ANSYSI~1\v242\fluent\ntbin\win64\tell.exe" STI-W11-MA-019 49977 CLEANUP_EXITING
timeout /t 1
"C:\PROGRA~1\ANSYSI~1\v242\fluent\ntbin\win64\kill.exe" tell.exe
if /i "%LOCALHOST%"=="STI-W11-MA-019" (%KILL_CMD% 14168) 
if /i "%LOCALHOST%"=="STI-W11-MA-019" (%KILL_CMD% 13012) 
if /i "%LOCALHOST%"=="STI-W11-MA-019" (%KILL_CMD% 4256)
del "Z:\Numerical FLOW\URSS_plane\h_c_0_25\cleanup-fluent-STI-W11-MA-019-13012.bat"
