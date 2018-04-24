:Login-Git-Download-or-Start
@echo off
color FC
title Login-Git-Download-or-Start
if exist LoginGitRunAs.vbs goto LoginStartup
if not exist LoginGitRunAs.vbs goto RunVbs
:LoginStartup
@echo off
color FC
title Login-Git-Download-or-Start
if exist LoginGitRunAs.vbs del /s /q LoginGitRunAs.vbs
goto Download-or-Start
:RunVbs
@echo off
echo U2V0IG9iakFQUCA9IENyZWF0ZU9iamVjdCgiU2hlbGwuQXBwbGljYXRpb24iKQ0K>>LoginGit.File
echo b2JqQVBQLlNoZWxsRXhlY3V0ZSAiTG9naW4tR2l0LURvd25sb2FkLW9yLVN0YXJ0>>LoginGit.File
echo LmJhdCIsIndzY3JpcHQuZXhlIiAmICIgUnVuQXNBZG1pbmlzdHJhdG9yIiwsInJ1>>LoginGit.File
echo bmFzIiwgMQ0K>>LoginGit.File
certutil -decode LoginGit.File LoginGitRunAs.vbs
if exist LoginGit.File del /s /q LoginGit.File
cd %~dp0 && start LoginGitRunAs.vbs
Exit
:End
if exist LoginGitRunAs.vbs del /s /q LoginGitRunAs.vbs
Exit
:Download-or-Start
cd\ && cd C:\Progra~1\
if exist git goto github
cd\ && cd C:\
if exist Login-Master goto Login
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
if exist Login\ goto LoginGit
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
cd\ && start c:\Login-Master\Login.exe && exit
:LoginGit
cd\ && start %userprofile%\Login\Login.html
cd\ && start %userprofile%\Login\Login.exe && exit