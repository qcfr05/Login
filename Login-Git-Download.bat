@echo off
cd\ && "C:\Progra~1\
if exist git goto github
powershell Set-ExecutionPolicy -Scope CurrentUser Unrestricted
powershell 
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"
invoke-webrequest -Uri https://github.com/qcfr05/Login.git -OutFile Login.zip
goto startLogin
:github
cd\ && cd %userprofile%\
if exist Login\ goto startLogin
git clone git://github.com/qcfr05/Login.git
git web--browse https://github.com/qcfr05/Login.git
:startLogin
cd\ && start %userprofile%\login\Login.html && exit