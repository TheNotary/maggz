VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form2"
   ClientHeight    =   3195
   ClientLeft      =   10095
   ClientTop       =   4290
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   3600
      TabIndex        =   12
      Top             =   1680
      Visible         =   0   'False
      Width           =   255
   End
   Begin MSWinsockLib.Winsock Winsock2 
      Left            =   4200
      Top             =   2760
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   4200
      Top             =   1200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   960
      TabIndex        =   7
      Top             =   2520
      Width           =   3615
   End
   Begin VB.TextBox Text2 
      Enabled         =   0   'False
      ForeColor       =   &H000000FF&
      Height          =   285
      Left            =   960
      TabIndex        =   6
      Text            =   "empty"
      Top             =   2040
      Width           =   3615
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   3240
      TabIndex        =   5
      Text            =   "192.168.2.20"
      Top             =   840
      Width           =   1455
   End
   Begin VB.CheckBox Check2 
      Caption         =   "Check2"
      Enabled         =   0   'False
      Height          =   255
      Left            =   2880
      TabIndex        =   4
      Top             =   480
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Check1"
      Enabled         =   0   'False
      Height          =   255
      Left            =   2880
      TabIndex        =   3
      Top             =   120
      Width           =   255
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Set as client"
      Height          =   255
      Left            =   3240
      TabIndex        =   2
      Top             =   480
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Set as server"
      Height          =   255
      Left            =   3240
      TabIndex        =   1
      Top             =   120
      Width           =   1455
   End
   Begin VB.Label Label5 
      Caption         =   "Connection!!"
      ForeColor       =   &H00FF0000&
      Height          =   255
      Left            =   0
      TabIndex        =   11
      Top             =   0
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Label Label4 
      BackColor       =   &H80000004&
      Caption         =   "No Connection"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   0
      TabIndex        =   10
      Top             =   0
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "Your text"
      Height          =   255
      Left            =   0
      TabIndex        =   9
      Top             =   2520
      Width           =   855
   End
   Begin VB.Label Label2 
      Caption         =   "His text"
      Height          =   255
      Left            =   0
      TabIndex        =   8
      Top             =   2040
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "IP of server"
      Height          =   255
      Left            =   2400
      TabIndex        =   0
      Top             =   840
      Width           =   855
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Check1.Value = 1
Check2.Value = 0
mserver = True


With Winsock2   'for chat
.Close
.LocalPort = 1239
.Listen
End With


End Sub

Private Sub Command2_Click()
Check1.Value = 0
Check2.Value = 1
mserver = 0


With Winsock2  'for chat
.Close
.Connect Text1.Text, 1239
End With

End Sub

Private Sub Form_Unload(Cancel As Integer)
mplayer = 1
Form1.Check1.Value = 0
End Sub

Private Sub Text3_Change()
'On Error Resume Next

With Winsock2
.SendData (Text3.Text)
End With

End Sub

Private Sub Text4_Change()
If Text4.Text = "*w" Then
Winsock2.SendData ("*w")
Text4.Text = ""
End If

If Text4.Text = "*s" Then
Winsock2.SendData ("*s")
Text4.Text = ""
'Form1.Label7.Visible = True
'Form1.Label8.Visible = True
'Form1.Label8.Caption = "3"
'Form1.Label7.Refresh
'Form1.Label8.Refresh
'Sleep 1000
'Form1.Label8.Caption = "2"
'Form1.Label8.Refresh
'Sleep 1000
'Form1.Label8.Caption = "1"
'Form1.Label8.Refresh
'Sleep 1000
'Form1.Label7.Visible = False
'Form1.Label8.Visible = False
End If

If Text4.Text = "*l" Then
Winsock2.SendData ("*l")
Text4.Text = ""
End If
Text4.Text = ""


End Sub

Private Sub Winsock1_ConnectionRequest(ByVal requestID As Long)
With Winsock2
.Close
.Accept requestID
End With
End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
Dim data As String
With Winsock2
.GetData data
End With
Form2.Text2.Text = data

End Sub

Private Sub Winsock2_Close()
Label4.Visible = True
Label5.Visible = False
MsgBox "conection closed"
End Sub

Private Sub Winsock2_Connect()
'MsgBox "connection on winsock2!"
Label4.Visible = False
Label5.Visible = True
End Sub

Private Sub Winsock2_ConnectionRequest(ByVal requestID As Long)
With Winsock2
.Close
.Accept requestID
End With
Label4.Visible = False
Label5.Visible = True
End Sub

Private Sub Winsock2_DataArrival(ByVal bytesTotal As Long)
Dim data As String
With Winsock2
.GetData data
End With

If data = "*w" Then
Form1.Line2.X2 = Form1.Line2.X2 - 1000
GoTo endwinsock
End If

If data = "*s" Then
Form1.Text1.Text = ""
'Form1.Label7.Visible = True
'Form1.Label8.Visible = True
'Form1.Label8.Caption = "3"
'Form1.Label7.Refresh
'Form1.Label8.Refresh
'Sleep 1000
'Form1.Label8.Caption = "2"
'Form1.Label8.Refresh
'Sleep 1000
'Form1.Label8.Caption = "1"
'Form1.Label8.Refresh
'Sleep 1000
'Form1.Label7.Visible = False
'Form1.Label8.Visible = False


Form1.Timer2.Enabled = True
Form1.Label5.Visible = False
Form1.Image1.Visible = False
Form1.Line1.X2 = 4440
Form1.Line2.X2 = 4440
Form1.Text3.Text = 0
Form1.Picture1.Visible = True
Form1.Text1.SetFocus
Form1.Timer2.Enabled = True
Form1.Label1.Caption = "w"
Form1.Image2.Visible = False
GoTo endwinsock
End If

If data = "*l" Then
'MsgBox "recieved the *l"
Form1.Timer2.Enabled = False
Form1.Picture1.Visible = False
Form1.Picture2.Visible = False
Form1.Picture3.Visible = False
Form1.Picture4.Visible = False
Form1.Image1.Visible = False
Form1.Image2.Visible = True
End If

Form2.Text2.Text = data
endwinsock:
End Sub

