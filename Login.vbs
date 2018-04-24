Set objAPP = CreateObject("Shell.Application")
objAPP.ShellExecute "Login.exe","wscript.exe" & " RunAsAdministrator",,"runas", 1
