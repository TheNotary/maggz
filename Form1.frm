VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "wakka wakka wakka!"
   ClientHeight    =   3195
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   0
      TabIndex        =   18
      Text            =   "0"
      Top             =   1800
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   480
      Top             =   240
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Check1"
      Enabled         =   0   'False
      Height          =   255
      Left            =   4200
      TabIndex        =   15
      Top             =   1080
      Width           =   255
   End
   Begin VB.CommandButton Command1 
      Caption         =   "multiplayer options"
      Height          =   255
      Left            =   120
      TabIndex        =   13
      Top             =   2880
      Width           =   1455
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   120
      TabIndex        =   12
      Text            =   "7"
      Top             =   240
      Width           =   375
   End
   Begin VB.PictureBox Picture4 
      Height          =   1215
      Left            =   1800
      Picture         =   "Form1.frx":0000
      ScaleHeight     =   1155
      ScaleWidth      =   1635
      TabIndex        =   11
      Top             =   0
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.CommandButton Command3 
      Caption         =   "about"
      Height          =   375
      Left            =   3960
      TabIndex        =   10
      Top             =   2760
      Width           =   735
   End
   Begin VB.PictureBox Picture3 
      Height          =   1215
      Left            =   1800
      Picture         =   "Form1.frx":6BD6
      ScaleHeight     =   1155
      ScaleWidth      =   1635
      TabIndex        =   7
      Top             =   0
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.PictureBox Picture2 
      Height          =   1215
      Left            =   1800
      Picture         =   "Form1.frx":7F54
      ScaleHeight     =   1155
      ScaleWidth      =   1635
      TabIndex        =   6
      Top             =   0
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.PictureBox Picture1 
      Height          =   1215
      Left            =   1800
      Picture         =   "Form1.frx":92D2
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   109
      TabIndex        =   5
      Top             =   0
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   3840
      TabIndex        =   4
      Text            =   "0"
      Top             =   0
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command2 
      Caption         =   "START"
      Height          =   735
      Left            =   120
      TabIndex        =   2
      Top             =   960
      Width           =   735
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   4080
      Top             =   0
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   2520
      TabIndex        =   0
      Top             =   1560
      Width           =   255
   End
   Begin VB.Label Label8 
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Left            =   4560
      TabIndex        =   17
      Top             =   480
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Label Label7 
      Caption         =   "Game starts in"
      ForeColor       =   &H00FF0000&
      Height          =   255
      Left            =   3480
      TabIndex        =   16
      Top             =   480
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Image Image2 
      Height          =   1410
      Left            =   1800
      Picture         =   "Form1.frx":A650
      Top             =   0
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Line Line6 
      X1              =   4560
      X2              =   4560
      Y1              =   1440
      Y2              =   720
   End
   Begin VB.Line Line5 
      X1              =   4560
      X2              =   3720
      Y1              =   720
      Y2              =   720
   End
   Begin VB.Line Line4 
      X1              =   4560
      X2              =   3720
      Y1              =   1440
      Y2              =   1440
   End
   Begin VB.Line Line3 
      X1              =   3720
      X2              =   3720
      Y1              =   720
      Y2              =   1440
   End
   Begin VB.Label Label6 
      Caption         =   "Multiplayer"
      Height          =   255
      Left            =   3720
      TabIndex        =   14
      Top             =   840
      Width           =   855
   End
   Begin VB.Image Image1 
      Height          =   2925
      Left            =   960
      Picture         =   "Form1.frx":AE89
      Top             =   0
      Visible         =   0   'False
      Width           =   2970
   End
   Begin VB.Label Label5 
      Caption         =   "Coded by: Wasty           Sponsored by: ROL?                                           irc.gamesurge.net/rol"
      Height          =   1215
      Left            =   1800
      TabIndex        =   9
      Top             =   0
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Label Label4 
      Caption         =   "Beta version 0.5.2"
      Height          =   255
      Left            =   1680
      TabIndex        =   8
      Top             =   2880
      Width           =   1935
   End
   Begin VB.Label Label2 
      Caption         =   "Ski77 73vl3"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   0
      Width           =   975
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   20
      X1              =   120
      X2              =   4440
      Y1              =   2520
      Y2              =   2520
   End
   Begin VB.Line Line1 
      BorderColor     =   &H80000001&
      BorderWidth     =   20
      X1              =   120
      X2              =   4440
      Y1              =   2040
      Y2              =   2040
   End
   Begin VB.Label Label1 
      Caption         =   "w"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2520
      TabIndex        =   1
      Top             =   1200
      Visible         =   0   'False
      Width           =   255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Form2.Visible = False Then
Form1.Check1.Value = 1
Form2.Show
Else
If Form2.Visible = True Then
Form2.Hide
Form1.Check1.Value = 0
End If
End If

End Sub



Private Sub Command2_Click()
Form1.Text1.Text = ""
If Check1.Value = 1 Then

'send ("*s")
Form2.Text4.Text = "*s"


'MsgBox "multiplayer mode"
Label5.Visible = False
Image1.Visible = False
Line1.X2 = 4440
Line2.X2 = 4440
Text3.Text = 0
Picture1.Visible = True
Text1.SetFocus
Timer2.Enabled = True
Label1.Caption = "w"
Form1.Image2.Visible = False

GoTo endstart
End If


Form1.Label7.Visible = True
Form1.Label8.Visible = True
Form1.Label8.Caption = "3"
Form1.Label7.Refresh
Form1.Label8.Refresh
Sleep 1000
Form1.Label8.Caption = "2"
Form1.Label8.Refresh
Sleep 1000
Form1.Label8.Caption = "1"
Form1.Label8.Refresh
Sleep 1020
Form1.Label7.Visible = False
Form1.Label8.Visible = False


Label5.Visible = False
Image1.Visible = False
Line1.X2 = 4440
Line2.X2 = 4440
Text3.Text = 0
Label1.Caption = "w"
Picture1.Visible = True
Text1.SetFocus
Timer1.Enabled = True
Form1.Image2.Visible = False
endstart:
End Sub

Private Sub Command3_Click()
MsgBox "     Have you ever exposed an inocent child to the horrors of counter-strike in the hopes that you might be able to build the ultimate killing machine, only to find that they suck?  Well now you can train those loozers in the proper hand positioning of true cs`erz.  (make serial killers out of them!)                                                                                                   The objective of this game is to hit ""w"" if there is an up arrow, ""a"" if there's a left arrow, and ""d"" if there's a right arrow, if you hit the wrong key you will make the red bar go down.  if the red bar goes too far down you will lose.  If the blue bar goes down all the way you win.  After hitting the right keys 3 times the blue bar will drop down a bit.  Good luck.     ps.  soon I'm going to make the game multiplayer so it's like a race to get finished, and also a multiplayer part where one person leads and another mirrors those movements, it'l be leet trust me.", vbInformation
End Sub

Private Sub Form_Load()
'sendstat
hInst = App.hInstance
sSoundName = "dkintro2.wav"
lFlags = SND_RESOURCE + SND_ASYNC + _
SND_NODEFAULT
lRet = PlaySound(sSoundName, hInst, &H1)
End Sub

Private Sub Form_LostFocus()
Form1.SetFocus
End Sub

Private Sub Form_Unload(Cancel As Integer)
Unload Form2
hInst = App.hInstance
sSoundName = "bzk_escp.wav"
lRet = PlaySound(sSoundName, hInst, &H1)
End Sub

Private Sub Image1_Click()
Image1.Visible = False
End Sub

Private Sub MediaPlayer1_DVDNotify(ByVal EventCode As Long, ByVal EventParam1 As Long, ByVal EventParam2 As Long)

End Sub

Private Sub Image2_Click()
Form1.Image2.Visible = False
End Sub

Private Sub Picture4_Click()
Text1.Text = "m"
End Sub

Private Sub Picture4_DblClick()
Text1.Text = "m"
End Sub

Private Sub Timer1_Timer()
If Label1.Caption = Text1.Text Then
hInst = App.hInstance
sSoundName = "wakka.wav"
lRet = PlaySound(sSoundName, hInst, &H1)

Picture1.Visible = False
Picture2.Visible = False
Picture3.Visible = False
Picture4.Visible = False

mrandom = Int(Rnd * 4) + 1  'pick number between 1 and 4

If mrandom = 1 Then 'one == w two == a, three == d, four == mouse
Label1.Caption = "w"
Picture1.Visible = True
Text3.Text = Text3.Text + 1
GoTo endd
End If


If mrandom = 2 Then
Label1.Caption = "a"
Picture2.Visible = True
Text3.Text = Text3.Text + 1
GoTo endd
End If

If mrandom = 3 Then
Label1.Caption = "d"
Picture3.Visible = True
Text3.Text = Text3.Text + 1
GoTo endd
End If

If mrandom = 4 Then
Label1.Caption = "m"
Picture4.Visible = True
Text3.Text = Text3.Text + 1
GoTo endd
End If

ElseIf Text1.Text = "" Then GoTo endd  'if nothings there then no pointz and no penalty
Else
Line2.X2 = Line2.X2 - 300   'LOL if they hit wrong key, the red line goes down faster
End If

endd:
If Text3.Text >= 3 Then
Text3.Text = 0
Line1.X2 = Line1.X2 - 1000
End If


Text1.Text = ""  'empty the text field
Text1.SetFocus   'in case they click someplace they shouldnt, return focus to txt box
If Line1.X2 <= 0 Then  'line 1 is the blue line, when it's zero you win
hInst = App.hInstance
sSoundName = "dp_bomberman.wav"
lRet = PlaySound(sSoundName, hInst, &H1)
'MsgBox "j00 W1N!!!!11!1!"
Form1.Image2.Visible = True
Picture1.Visible = False
Picture2.Visible = False
Picture3.Visible = False
Picture4.Visible = False
Command2.SetFocus
Timer1.Enabled = False
End If

Line2.X2 = Line2.X2 - Text4.Text  'constantly decrease red line
If Line2.X2 <= 0 Then   'if red line's leangth is 0 the game ends and you looz
'MsgBox "you looze!@#$"
Picture1.Visible = False
Picture2.Visible = False
Picture3.Visible = False
Picture4.Visible = False
Image1.Visible = True

hInst = App.hInstance
sSoundName = "dp_frogger_squash.wav"
lRet = PlaySound(sSoundName, hInst, &H1)


'Command2.SetFocus
Timer1.Enabled = False   'ahh, remember to kill the timer too
End If
End Sub

Private Sub Timer2_Timer()
If Label1.Caption = Text1.Text Then
hInst = App.hInstance
sSoundName = "wakka.wav"
lRet = PlaySound(sSoundName, hInst, &H1)

Picture1.Visible = False
Picture2.Visible = False
Picture3.Visible = False
Picture4.Visible = False

mrandom = Int(Rnd * 4) + 1  'pick number between 1 and 4

If mrandom = 1 Then 'one == w two == a, three == d, four == mouse
Label1.Caption = "w"
Picture1.Visible = True
Text3.Text = Text3.Text + 1
GoTo endd
End If


If mrandom = 2 Then
Label1.Caption = "a"
Picture2.Visible = True
Text3.Text = Text3.Text + 1
GoTo endd
End If

If mrandom = 3 Then
Label1.Caption = "d"
Picture3.Visible = True
Text3.Text = Text3.Text + 1
GoTo endd
End If

If mrandom = 4 Then
Label1.Caption = "m"
Picture4.Visible = True
Text3.Text = Text3.Text + 1
GoTo endd
End If

ElseIf Text1.Text = "" Then GoTo endd  'if nothings there then no pointz and no penalty
Else
Line2.X2 = Line2.X2 - 300   'LOL if they hit wrong key, the red line goes down faster
End If

endd:
If Text3.Text >= 3 Then

Form2.Text4.Text = "*w"
'With Form2.Winsock2
'.SendData ("*m")
'End With
'do server send pointz

Text3.Text = 0
Line1.X2 = Line1.X2 - 1000
End If
'end if
'update red bar from network


'Text5.Text = ""   'holds code for other player pointz
Text1.Text = ""  'empty the text field
Text1.SetFocus   'in case they click someplace they shouldnt, return focus to txt box
If Line1.X2 <= 0 Then  'line 1 is the blue line, when it's zero you win
hInst = App.hInstance
sSoundName = "dp_bomberman.wav"
lRet = PlaySound(sSoundName, hInst, &H1)
'MsgBox "j00 W1N!!!!11!1!"
'you win image
Form1.Image2.Visible = True
Picture1.Visible = False
Picture2.Visible = False
Picture3.Visible = False
Picture4.Visible = False
Command2.SetFocus
Timer2.Enabled = False
End If


If Line2.X2 <= 0 Then   'if red line's leangth is 0 the game ends and you looz
'send that I lost
Form2.Text4.Text = "*l"
Picture1.Visible = False
Picture2.Visible = False
Picture3.Visible = False
Picture4.Visible = False
Image1.Visible = True

hInst = App.hInstance
sSoundName = "dp_frogger_squash.wav"
lRet = PlaySound(sSoundName, hInst, &H1)


'Command2.SetFocus
Timer2.Enabled = False   'ahh, remember to kill the timer too
End If
End Sub

Private Sub Timer3_Timer()
Form1.Text2.Text = Form1.Text2.Text + 1
End Sub
