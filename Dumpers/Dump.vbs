Set oShell = WScript.CreateObject("WScript.Shell")
oShell.run "cmd /c del %tmp%\info.dump"
oShell.run "cmd /c echo ----------------------------------------- >%tmp%\info.dump"
oShell.run "cmd /c echo --Dump Application Made By Whiteavocado-- >>%tmp%\info.dump"
oShell.run "cmd /c echo ----------------------------------------- >>%tmp%\info.dump"
oShell.run "cmd /c echo username=(%username%) >>%tmp%\info.dump"
Wscript.sleep 100
oShell.run "cmd /c ipconfig | findstr /C:Address >>%tmp%\info.dump"
Wscript.sleep 100
oShell.run "cmd /c netsh wlan show profile * key=clear >>%tmp%\info.dump"
Wscript.sleep 100
x=msgbox("Open Dump File With Notepad!", 64 , "Dump.sus")
dim result
result = msgbox("Open Dump File?", 4 , "Dump.sus")

If result=6 then
oShell.run "cmd /c start %tmp%\info.dump"
else
x=msgbox("Bye!", 64 , "Dump.sus")
end if