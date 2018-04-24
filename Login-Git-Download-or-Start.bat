@echo off
cd\ && cd C:\Progra~1\
if exist git goto github
cd\ && cd C:\
if exist Login-Master goto Login
cd\ && cd %userprofile%\
if exist login.ps1 del /s /q login.ps1
if exist UnzipLogin.ps1 del /s /q UnzipLogin.ps1
if exist Login.zip del /s /q Login.zip
powershell Set-ExecutionPolicy -Scope CurrentUser Unrestricted
echo [Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls">>login.ps1
echo invoke-webrequest -Uri https://github.com/qcfr05/Login/archive/master.zip -OutFile Login-Master.zip>>login.ps1
goto StartLogin2
:github
cd\ && cd %userprofile%\
if exist Login\ goto StartLogin
git clone git://github.com/qcfr05/Login.git
git web--browse https://github.com/qcfr05/Login.git
goto StartLogin
:StartLogin2
cd\ && cd %userprofile%\
PowerShell.exe -File Login.ps1 -NoExit
cd\ && cd %userprofile%\
echo Expand-Archive -Path "Login-Master.zip" -DestinationPath "c:\">>""UnzipLogin.ps1
PowerShell.exe -File UnzipLogin.ps1 -NoExit
if exist login.ps1 del /s /q login.ps1
if exist UnzipLogin.ps1 del /s /q UnzipLogin.ps1
if exist Login.zip del /s /q Login.zip
:Login
cd\ && start c:\Login-Master\Login.html && exit
:StartLogin
cd\ && start %userprofile%\Login\Login.html && exit
