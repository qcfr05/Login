:Login-Git-Download-or-Start
@echo off
color fc
title Login-Git-Download-or-Start
cd\ && cd C:\Progra~1\
if exist git goto github
cd\ && cd C:\
if exist Login-Master\Login.html goto Login
cd\ && cd %userprofile%\
if exist login.ps1 del /s /q login.ps1
if exist UnzipLogin.ps1 del /s /q UnzipLogin.ps1
if exist Login-Master.zip del /s /q Login-Master.zip
powershell Set-ExecutionPolicy -Scope CurrentUser Unrestricted
echo [Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls">>login.ps1
echo invoke-webrequest -Uri https://github.com/qcfr05/Login/archive/master.zip -OutFile Login-Master.zip>>login.ps1
goto Login2
:github
cd\ && cd %userprofile%\
if exist Login\Login.html goto LoginGit
git clone git://github.com/qcfr05/Login.git
git web--browse https://github.com/qcfr05/Login.git
goto LoginGit
:Login2
cd\ && cd %userprofile%\
PowerShell.exe -File Login.ps1 -NoExit
cd\ && cd %userprofile%\
echo Expand-Archive -Path "Login-Master.zip" -DestinationPath "c:\">>""UnzipLogin.ps1
PowerShell.exe -File UnzipLogin.ps1 -NoExit
if exist login.ps1 del /s /q login.ps1
if exist UnzipLogin.ps1 del /s /q UnzipLogin.ps1
if exist Login-Master.zip del /s /q Login-Master.zip
:Login
cd\ && start c:\Login-Master\Login.html
cd\ && start c:\Login-Master\Login.vbs && exit
:LoginGit
cd\ && start %userprofile%\Login\Login.html
cd\ && start %userprofile%\Login\Login.vbs && exit