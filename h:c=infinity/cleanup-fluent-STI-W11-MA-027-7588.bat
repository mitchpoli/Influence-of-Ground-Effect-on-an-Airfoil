echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v242\fluent/ntbin/win64/winkill.exe"

start "tell.exe" /B "C:\PROGRA~1\ANSYSI~1\v242\fluent\ntbin\win64\tell.exe" STI-W11-MA-027 56588 CLEANUP_EXITING
timeout /t 1
"C:\PROGRA~1\ANSYSI~1\v242\fluent\ntbin\win64\kill.exe" tell.exe
if /i "%LOCALHOST%"=="STI-W11-MA-027" (%KILL_CMD% 4756) 
if /i "%LOCALHOST%"=="STI-W11-MA-027" (%KILL_CMD% 7588) 
if /i "%LOCALHOST%"=="STI-W11-MA-027" (%KILL_CMD% 9732)
del "Z:\Numerical FLOW\URSS_plane\h_c_infinity\cleanup-fluent-STI-W11-MA-027-7588.bat"
