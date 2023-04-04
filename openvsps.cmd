@echo off
rem Try to start Windows Terminal
wt -p "Developer PowerShell for VS 2022" -d %cd%
rem Otherwise open a normal PowerShell
if errorlevel 9009 start powershell.exe -NoExit -Command "&{Import-Module """C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\Microsoft.VisualStudio.DevShell.dll"""; Enter-VsDevShell 61e95ac9 -SkipAutomaticLocation -DevCmdArguments """-arch=x64 -host_arch=x64"""}"
