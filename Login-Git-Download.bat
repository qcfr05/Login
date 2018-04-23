@echo off
cd\ && cd %userprofile%\
if exist Login\ goto startLogin
git clone git://github.com/qcfr05/Login.git
git web--browse https://github.com/qcfr05/Login.git
:startLogin
cd\ && start %userprofile%\login\Login.html && exit
