Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "C:\csi\Servers\eureka-server\eureka.bat" & Chr(34), 0
Set WshShell = Nothing