Attribute VB_Name = "Module1"
Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

Declare Function PlaySound Lib _
"winmm.dll" Alias "PlaySoundA" ( _
ByVal lpszName As String, _
ByVal hModule As Long, _
ByVal dwFlags As Long) As Long


Const SND_SYNC = &H0
Const SND_ASYNC = &H1
' Play asynchronously
Const SND_NODEFAULT& = &H2
' Silence if sound not found
Const SND_RESOURCE& = &H40004
' Name is resource name or atom

Dim hInst As Long
' Handle to Application Instance
Dim sSoundName As String
' String to hold sound resource name
Dim lFlags As Long
' PlaySound() flags
Dim lRet As Long
' Return value

Sub sendstat(ByVal woot)
MsgBox woot
End Sub
