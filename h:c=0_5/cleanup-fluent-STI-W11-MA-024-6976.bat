echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v242\fluent/ntbin/win64/winkill.exe"

start "tell.exe" /B "C:\PROGRA~1\ANSYSI~1\v242\fluent\ntbin\win64\tell.exe" STI-W11-MA-024 62629 CLEANUP_EXITING
timeout /t 1
"C:\PROGRA~1\ANSYSI~1\v242\fluent\ntbin\win64\kill.exe" tell.exe
if /i "%LOCALHOST%"=="STI-W11-MA-024" (%KILL_CMD% 7436) 
if /i "%LOCALHOST%"=="STI-W11-MA-024" (%KILL_CMD% 6976) 
if /i "%LOCALHOST%"=="STI-W11-MA-024" (%KILL_CMD% 8164)
del "Z:\Numerical FLOW\URSS_plane\h_c_0_5\cleanup-fluent-STI-W11-MA-024-6976.bat"
