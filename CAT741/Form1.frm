VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "CAT741 (Bilgisayar Destekli 741 Test Programý)"
   ClientHeight    =   5130
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7755
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5130
   ScaleWidth      =   7755
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   6900
      Top             =   5760
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   250
      Left            =   7440
      Top             =   5760
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4995
      Left            =   60
      TabIndex        =   0
      Top             =   60
      Width           =   7635
      _ExtentX        =   13467
      _ExtentY        =   8811
      _Version        =   393216
      Style           =   1
      Tabs            =   4
      Tab             =   1
      TabsPerRow      =   4
      TabHeight       =   520
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Test"
      TabPicture(0)   =   "Form1.frx":030A
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "Frame1"
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "Hakkýnda"
      TabPicture(1)   =   "Form1.frx":0326
      Tab(1).ControlEnabled=   -1  'True
      Tab(1).Control(0)=   "Frame8"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "Açýklama"
      TabPicture(2)   =   "Form1.frx":0342
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame5"
      Tab(2).ControlCount=   1
      TabCaption(3)   =   "Devre Þemasý"
      TabPicture(3)   =   "Form1.frx":035E
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "Frame7"
      Tab(3).ControlCount=   1
      Begin VB.Frame Frame7 
         Height          =   4515
         Left            =   -74880
         TabIndex        =   30
         Top             =   360
         Width           =   7395
         Begin VB.Frame Frame12 
            Height          =   795
            Left            =   6540
            TabIndex        =   31
            Top             =   120
            Width           =   735
            Begin VB.Image Image51 
               Height          =   480
               Left            =   120
               Picture         =   "Form1.frx":037A
               Top             =   180
               Width           =   480
            End
         End
         Begin VB.Image Image48 
            Height          =   4140
            Left            =   600
            Picture         =   "Form1.frx":0684
            Top             =   240
            Width           =   5655
         End
      End
      Begin VB.Frame Frame5 
         Height          =   4515
         Left            =   -74880
         TabIndex        =   23
         Top             =   360
         Width           =   7395
         Begin VB.Frame Frame6 
            Caption         =   "Simgeler"
            Height          =   2355
            Left            =   120
            TabIndex        =   26
            Top             =   180
            Width           =   3975
            Begin VB.Label Label13 
               AutoSize        =   -1  'True
               Caption         =   "Entegrenin bozuk olduðunu belirtir."
               BeginProperty Font 
                  Name            =   "Times New Roman"
                  Size            =   9.75
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   -1  'True
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   240
               Left            =   780
               TabIndex        =   29
               Top             =   1860
               Width           =   2985
            End
            Begin VB.Label Label12 
               AutoSize        =   -1  'True
               Caption         =   "Entegrenin saðlam olduðunu belirtir."
               BeginProperty Font 
                  Name            =   "Times New Roman"
                  Size            =   9.75
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   -1  'True
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   240
               Left            =   780
               TabIndex        =   28
               Top             =   1260
               Width           =   3090
            End
            Begin VB.Label Label11 
               AutoSize        =   -1  'True
               Caption         =   "Entegrenin test edildiðini belirtir."
               BeginProperty Font 
                  Name            =   "Times New Roman"
                  Size            =   9.75
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   -1  'True
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   240
               Left            =   780
               TabIndex        =   27
               Top             =   660
               Width           =   2790
            End
            Begin VB.Image Image47 
               Height          =   480
               Left            =   120
               Picture         =   "Form1.frx":4CB36
               Top             =   1140
               Width           =   480
            End
            Begin VB.Image Image46 
               Height          =   480
               Left            =   120
               Picture         =   "Form1.frx":4CE40
               Top             =   1680
               Width           =   480
            End
            Begin VB.Image Image45 
               Height          =   480
               Left            =   120
               Picture         =   "Form1.frx":4D70A
               Top             =   480
               Width           =   480
            End
         End
         Begin VB.Frame Frame10 
            Height          =   795
            Left            =   6540
            TabIndex        =   25
            Top             =   120
            Width           =   735
            Begin VB.Image Image30 
               Height          =   480
               Left            =   120
               Picture         =   "Form1.frx":4DFD4
               Top             =   180
               Width           =   480
            End
         End
         Begin VB.Label Label2 
            Caption         =   $"Form1.frx":4E2DE
            Height          =   675
            Left            =   240
            TabIndex        =   24
            Top             =   3360
            Width           =   7095
         End
      End
      Begin VB.Frame Frame8 
         Height          =   4515
         Left            =   120
         TabIndex        =   12
         Top             =   360
         Width           =   7395
         Begin VB.Frame Frame9 
            Height          =   795
            Left            =   6540
            TabIndex        =   17
            Top             =   120
            Width           =   735
            Begin VB.Image Image29 
               Height          =   480
               Left            =   120
               Picture         =   "Form1.frx":4E3E0
               Top             =   180
               Width           =   480
            End
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Freeware - 2001"
            Height          =   195
            Left            =   3180
            TabIndex        =   41
            Top             =   3420
            Width           =   1155
         End
         Begin VB.Label Label15 
            AutoSize        =   -1  'True
            Caption         =   "net: http://www.geocities.com/interrupt21"
            Height          =   195
            Left            =   2280
            TabIndex        =   40
            Top             =   4140
            Width           =   2985
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "e-mail: interrupt21@yahoo.com"
            Height          =   195
            Left            =   2700
            TabIndex        =   39
            Top             =   3900
            Width           =   2190
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Süleyman GÜNEL"
            Height          =   195
            Left            =   3120
            TabIndex        =   16
            Top             =   3120
            Width           =   1290
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "(Computer Added Test for IC741)"
            Height          =   195
            Left            =   2640
            TabIndex        =   15
            Top             =   2820
            Width           =   2325
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Bilgisayar Destekli IC741 Test Programý"
            Height          =   195
            Left            =   2400
            TabIndex        =   14
            Top             =   2520
            Width           =   2760
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "CAT741"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   72
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   -1  'True
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1620
            Left            =   1260
            TabIndex        =   13
            Top             =   780
            Width           =   4965
         End
      End
      Begin VB.Frame Frame1 
         Height          =   4515
         Left            =   -74880
         TabIndex        =   1
         Top             =   360
         Width           =   7395
         Begin VB.Frame Frame4 
            Caption         =   "Rapor"
            Height          =   4155
            Left            =   5400
            TabIndex        =   4
            Top             =   240
            Width           =   1875
            Begin ComctlLib.ProgressBar ProgressBar1 
               Height          =   195
               Left            =   120
               TabIndex        =   19
               Top             =   3840
               Width           =   1635
               _ExtentX        =   2884
               _ExtentY        =   344
               _Version        =   327682
               Appearance      =   1
               Max             =   4
            End
            Begin VB.TextBox Text1 
               BackColor       =   &H00000000&
               ForeColor       =   &H0000FF00&
               Height          =   795
               Left            =   120
               MultiLine       =   -1  'True
               TabIndex        =   6
               Top             =   300
               Width           =   1635
            End
            Begin ComctlLib.Slider Slider4 
               Height          =   1815
               Left            =   540
               TabIndex        =   18
               ToolTipText     =   "Pin(6)'nýn çýkýþ polaritesi"
               Top             =   1860
               Width           =   525
               _ExtentX        =   926
               _ExtentY        =   3201
               _Version        =   327682
               Orientation     =   1
               Min             =   1
               Max             =   3
               SelStart        =   2
               TickStyle       =   2
               Value           =   2
            End
            Begin VB.Image Image43 
               Height          =   480
               Left            =   1260
               Top             =   1320
               Width           =   480
            End
            Begin VB.Image Image39 
               Height          =   480
               Left            =   1020
               Picture         =   "Form1.frx":4E6EA
               Top             =   1770
               Width           =   480
            End
            Begin VB.Image Image38 
               Height          =   480
               Left            =   1020
               Picture         =   "Form1.frx":4E9F4
               Top             =   3150
               Width           =   480
            End
            Begin VB.Image Image37 
               Height          =   480
               Left            =   180
               Picture         =   "Form1.frx":4ECFE
               Top             =   3150
               Width           =   480
            End
            Begin VB.Image Image28 
               Height          =   480
               Left            =   180
               Picture         =   "Form1.frx":4F008
               Top             =   1770
               Width           =   480
            End
            Begin VB.Image Image27 
               Height          =   480
               Left            =   180
               Picture         =   "Form1.frx":4F312
               Top             =   2520
               Width           =   480
            End
            Begin VB.Image Image26 
               Height          =   480
               Left            =   1020
               Picture         =   "Form1.frx":4F61C
               Top             =   2520
               Width           =   480
            End
            Begin VB.Line Line1 
               X1              =   120
               X2              =   1740
               Y1              =   1200
               Y2              =   1200
            End
            Begin VB.Label Label3 
               AutoSize        =   -1  'True
               Caption         =   "Pin-6"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Left            =   600
               TabIndex        =   7
               Top             =   1680
               Width           =   450
            End
         End
         Begin VB.Frame Frame3 
            Caption         =   "Menü"
            Height          =   4155
            Left            =   120
            TabIndex        =   3
            Top             =   240
            Width           =   2175
            Begin VB.CommandButton Command5 
               BackColor       =   &H000000FF&
               Height          =   315
               Left            =   1860
               TabIndex        =   38
               ToolTipText     =   "Orjinal Deðer"
               Top             =   3720
               Width           =   195
            End
            Begin VB.CommandButton Command4 
               BackColor       =   &H000000FF&
               Height          =   315
               Left            =   1860
               TabIndex        =   37
               ToolTipText     =   "Orjinal Deðer"
               Top             =   3360
               Width           =   195
            End
            Begin VB.Frame Frame11 
               Height          =   1875
               Left            =   180
               TabIndex        =   32
               Top             =   1260
               Width           =   1875
               Begin ComctlLib.Slider Slider1 
                  Height          =   1455
                  Left            =   120
                  TabIndex        =   35
                  ToolTipText     =   "Pin(2)'nin polarite ayarý"
                  Top             =   360
                  Width           =   450
                  _ExtentX        =   794
                  _ExtentY        =   2566
                  _Version        =   327682
                  Orientation     =   1
                  Min             =   1
                  Max             =   3
                  SelStart        =   2
                  Value           =   2
               End
               Begin ComctlLib.Slider Slider2 
                  Height          =   1455
                  Left            =   1020
                  TabIndex        =   36
                  ToolTipText     =   "Pin(3)'ün polarite ayarý"
                  Top             =   360
                  Width           =   450
                  _ExtentX        =   794
                  _ExtentY        =   2566
                  _Version        =   327682
                  Orientation     =   1
                  Min             =   1
                  Max             =   3
                  SelStart        =   2
                  Value           =   2
               End
               Begin VB.Image Image36 
                  Height          =   480
                  Left            =   1320
                  Picture         =   "Form1.frx":4F926
                  Top             =   1305
                  Width           =   480
               End
               Begin VB.Image Image33 
                  Height          =   480
                  Left            =   420
                  Picture         =   "Form1.frx":4FC30
                  Top             =   1300
                  Width           =   480
               End
               Begin VB.Image Image35 
                  Height          =   480
                  Left            =   1320
                  Picture         =   "Form1.frx":4FF3A
                  Top             =   840
                  Width           =   480
               End
               Begin VB.Image Image32 
                  Height          =   480
                  Left            =   420
                  Picture         =   "Form1.frx":50244
                  Top             =   840
                  Width           =   480
               End
               Begin VB.Image Image34 
                  Height          =   480
                  Left            =   1320
                  Picture         =   "Form1.frx":5054E
                  Top             =   285
                  Width           =   480
               End
               Begin VB.Image Image31 
                  Height          =   480
                  Left            =   420
                  Picture         =   "Form1.frx":50858
                  Top             =   285
                  Width           =   480
               End
               Begin VB.Label Label5 
                  AutoSize        =   -1  'True
                  Caption         =   "Pin-3"
                  BeginProperty Font 
                     Name            =   "MS Sans Serif"
                     Size            =   8.25
                     Charset         =   162
                     Weight          =   700
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  Height          =   195
                  Left            =   1020
                  TabIndex        =   34
                  Top             =   180
                  Width           =   450
               End
               Begin VB.Label Label4 
                  AutoSize        =   -1  'True
                  Caption         =   "Pin-2"
                  BeginProperty Font 
                     Name            =   "MS Sans Serif"
                     Size            =   8.25
                     Charset         =   162
                     Weight          =   700
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  Height          =   195
                  Left            =   120
                  TabIndex        =   33
                  Top             =   180
                  Width           =   450
               End
            End
            Begin VB.CommandButton Command3 
               BackColor       =   &H00FFFF00&
               Height          =   315
               Left            =   1620
               Style           =   1  'Graphical
               TabIndex        =   22
               ToolTipText     =   "Uygula"
               Top             =   3720
               Width           =   195
            End
            Begin VB.TextBox Text3 
               BackColor       =   &H00000000&
               ForeColor       =   &H00FFFFFF&
               Height          =   285
               Left            =   1020
               TabIndex        =   21
               Text            =   "Text3"
               Top             =   3720
               Width           =   555
            End
            Begin VB.CommandButton Command1 
               BackColor       =   &H00FFFF00&
               Height          =   315
               Left            =   1620
               Style           =   1  'Graphical
               TabIndex        =   11
               ToolTipText     =   "Uygula"
               Top             =   3360
               Width           =   195
            End
            Begin VB.TextBox Text2 
               BackColor       =   &H00000000&
               ForeColor       =   &H00FFFFFF&
               Height          =   285
               Left            =   1020
               MaxLength       =   5
               TabIndex        =   9
               Text            =   "Text2"
               Top             =   3360
               Width           =   555
            End
            Begin VB.CheckBox Check1 
               DownPicture     =   "Form1.frx":50B62
               Height          =   795
               Left            =   180
               Picture         =   "Form1.frx":50DC4
               Style           =   1  'Graphical
               TabIndex        =   8
               Top             =   300
               Width           =   855
            End
            Begin VB.CommandButton Command2 
               Height          =   795
               Left            =   1140
               Picture         =   "Form1.frx":51026
               Style           =   1  'Graphical
               TabIndex        =   5
               ToolTipText     =   "Test/Test iptal"
               Top             =   300
               Width           =   855
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "Sayaç (ms)"
               Height          =   195
               Left            =   180
               TabIndex        =   20
               Top             =   3720
               Width           =   780
            End
            Begin VB.Label Label6 
               AutoSize        =   -1  'True
               Caption         =   "Sayaç (ms)"
               Height          =   195
               Left            =   180
               TabIndex        =   10
               Top             =   3360
               Width           =   780
            End
         End
         Begin VB.Frame Frame2 
            Caption         =   "Durum"
            Height          =   4155
            Left            =   2400
            TabIndex        =   2
            Top             =   240
            Width           =   2895
            Begin VB.Image Image5 
               Height          =   300
               Left            =   2340
               Picture         =   "Form1.frx":51330
               Top             =   2040
               Width           =   300
            End
            Begin VB.Image Image4 
               Height          =   300
               Left            =   120
               Picture         =   "Form1.frx":514A2
               Top             =   2040
               Width           =   300
            End
            Begin VB.Image Image3 
               Height          =   300
               Left            =   120
               Picture         =   "Form1.frx":51614
               Top             =   1260
               Width           =   300
            End
            Begin VB.Image Image2 
               Height          =   450
               Left            =   1260
               Picture         =   "Form1.frx":51786
               Top             =   3410
               Width           =   450
            End
            Begin VB.Image Image1 
               Height          =   3300
               Left            =   420
               Picture         =   "Form1.frx":519E8
               Top             =   300
               Width           =   2250
            End
         End
      End
   End
   Begin VB.Image Image44 
      Height          =   495
      Left            =   6660
      Top             =   6480
      Width           =   495
   End
   Begin VB.Image Image41 
      Height          =   480
      Left            =   5520
      Picture         =   "Form1.frx":55BBA
      Top             =   6480
      Width           =   480
   End
   Begin VB.Image Image42 
      Height          =   480
      Left            =   6060
      Picture         =   "Form1.frx":55EC4
      Top             =   6480
      Width           =   480
   End
   Begin VB.Image Image40 
      Height          =   480
      Left            =   4980
      Picture         =   "Form1.frx":5678E
      Top             =   6480
      Width           =   480
   End
   Begin VB.Image Image25 
      Height          =   450
      Left            =   4380
      Picture         =   "Form1.frx":57058
      Top             =   6480
      Width           =   450
   End
   Begin VB.Image Image24 
      Height          =   450
      Left            =   3840
      Picture         =   "Form1.frx":572BA
      Top             =   6480
      Width           =   450
   End
   Begin VB.Image Image23 
      Height          =   480
      Left            =   3300
      Picture         =   "Form1.frx":5751C
      Top             =   6480
      Width           =   480
   End
   Begin VB.Image Image22 
      Height          =   480
      Left            =   2760
      Picture         =   "Form1.frx":57826
      Top             =   6420
      Width           =   480
   End
   Begin VB.Image Image21 
      Height          =   480
      Left            =   2220
      Picture         =   "Form1.frx":57B30
      Top             =   6420
      Width           =   480
   End
   Begin VB.Image Image20 
      Height          =   300
      Left            =   1800
      Picture         =   "Form1.frx":57E3A
      Top             =   6420
      Width           =   300
   End
   Begin VB.Image Image19 
      Height          =   300
      Left            =   1440
      Picture         =   "Form1.frx":57FAC
      Top             =   6420
      Width           =   300
   End
   Begin VB.Image Image18 
      Height          =   300
      Left            =   1080
      Picture         =   "Form1.frx":5811E
      Top             =   6420
      Width           =   300
   End
   Begin VB.Image Image17 
      Height          =   300
      Left            =   720
      Picture         =   "Form1.frx":58290
      Top             =   6420
      Width           =   300
   End
   Begin VB.Image Image16 
      Height          =   480
      Left            =   5040
      Picture         =   "Form1.frx":58402
      Top             =   5760
      Width           =   480
   End
   Begin VB.Image Image15 
      Height          =   480
      Left            =   4500
      Picture         =   "Form1.frx":5870C
      Top             =   5760
      Width           =   480
   End
   Begin VB.Image Image14 
      Height          =   480
      Left            =   3960
      Picture         =   "Form1.frx":58A16
      Top             =   5760
      Width           =   480
   End
   Begin VB.Image Image13 
      Height          =   480
      Left            =   3420
      Picture         =   "Form1.frx":58D20
      Top             =   5760
      Width           =   480
   End
   Begin VB.Image Image12 
      Height          =   480
      Left            =   2880
      Picture         =   "Form1.frx":5902A
      Top             =   5760
      Width           =   480
   End
   Begin VB.Image Image11 
      Height          =   480
      Left            =   2340
      Picture         =   "Form1.frx":59334
      Top             =   5760
      Width           =   480
   End
   Begin VB.Image Image10 
      Height          =   480
      Left            =   1800
      Picture         =   "Form1.frx":5963E
      Top             =   5760
      Width           =   480
   End
   Begin VB.Image Image9 
      Height          =   480
      Left            =   1260
      Picture         =   "Form1.frx":59948
      Top             =   5760
      Width           =   480
   End
   Begin VB.Image Image8 
      Height          =   480
      Left            =   720
      Picture         =   "Form1.frx":59C52
      Top             =   5760
      Width           =   480
   End
   Begin VB.Image Image7 
      Height          =   450
      Left            =   120
      Picture         =   "Form1.frx":59F5C
      Top             =   6300
      Width           =   450
   End
   Begin VB.Image Image6 
      Height          =   450
      Left            =   120
      Picture         =   "Form1.frx":5A1BE
      Top             =   5760
      Width           =   450
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Sayac As Integer
Private Sub Command1_Click()
 Image43.Picture = Image44.Picture
 Timer1.Interval = Val(Text2.Text)
End Sub

Private Sub Check1_Click()
Image43.Picture = Image44.Picture
If Check1.Value = Checked Then
 durum = Kart(1)
 Image2.Picture = Image6.Picture
 Check1.Picture = Image24.Picture
End If
If Check1.Value = Unchecked Then
 durum = Kart(0)
 Image2.Picture = Image7.Picture
 Check1.Picture = Image25.Picture
End If
End Sub

Private Sub Command2_Click()
 Image43.Picture = Image44.Picture
 Check1.Value = Checked: Check1_Click
 Image43.Picture = Image40.Picture
 Sayac = 0
 Timer2.Enabled = True
End Sub
Sub Hata(Proc As String, Kod As String, Op As Integer)
 secim = MsgBox("Ýþlem: " + Proc + Chr$(13) + "Kod: " + Kod + Chr$(13) + "Operasyon: " + Str(Op), , "Port Ýletiþim Hatasý")
 End
End Sub
Function Kart(param As Integer) As Integer
If param = 0 Then
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Kart", "Init", param)
 durum = SetPortVal(&H378, 0, 1): If durum = 0 Then Call Hata("Kart", "Set", param)
 durum = Pin2(0): durum = Pin3(0)
 Slider1.Enabled = False: Slider2.Enabled = False
 Text1.Text = "Kart kapatýldý."
End If
If param = 1 Then
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Kart", "Init", param)
 durum = SetPortVal(&H378, (128 + 16), 1): If durum = 0 Then Call Hata("Pin2", "Set", param)
 durum = Pin2(0): durum = Pin3(0)
 Slider1.Enabled = True: Slider2.Enabled = True
 Text1.Text = "Kart açýldý."
End If
End Function
Function Pin3(param As Integer) As Integer
If param = 0 Then
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Pin3", "Init", param)
 durum = GetPortVal(&H378, deger, 1): If durum = 0 Then Call Hata("Pin3", "Get", param)
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Pin3", "Init", param)
 durum = SetPortVal(&H378, (deger And 243), 1): If durum = 0 Then Call Hata("Pin3", "Set", param)
 Text1.Text = "Pin(3)'e '0' gerilim uygulanýyor."
 Slider2.Value = 2: Image4.Picture = Image20.Picture
End If
If param = 1 Then
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Pin3", "Init", param)
 durum = GetPortVal(&H378, deger, 1): If durum = 0 Then Call Hata("Pin3", "Get", param)
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Pin3", "Init", param)
 durum = SetPortVal(&H378, ((deger And 243) Or 4), 1): If durum = 0 Then Call Hata("Pin3", "Set", param)
 Text1.Text = "Pin(3)'e '+' gerilim uygulanýyor."
 Slider2.Value = 1: Image4.Picture = Image19.Picture
End If
If param = -1 Then
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Pin3", "Init", param)
 durum = GetPortVal(&H378, deger, 1): If durum = 0 Then Call Hata("Pin3", "Get", param)
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Pin3", "Init", param)
 durum = SetPortVal(&H378, ((deger And 243) Or 8), 1): If durum = 0 Then Call Hata("Pin3", "Set", param)
 Text1.Text = "Pin(3)'e '-' gerilim uygulanýyor."
 Slider2.Value = 3: Image4.Picture = Image17.Picture
End If
End Function
Function Pin2(param As Integer) As Integer
If param = 0 Then
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Pin2", "Init", param)
 durum = GetPortVal(&H378, deger, 1): If durum = 0 Then Call Hata("Pin2", "Get", param)
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Pin2", "Init", param)
 durum = SetPortVal(&H378, (deger And 252), 1): If durum = 0 Then Call Hata("Pin2", "Set", param)
 Text1.Text = "Pin(2)'ye '0' gerilim uygulanýyor."
 Slider1.Value = 2: Image3.Picture = Image20.Picture
End If
If param = 1 Then
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Pin2", "Init", param)
 durum = GetPortVal(&H378, deger, 1): If durum = 0 Then Call Hata("Pin2", "Get", param)
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Pin2", "Init", param)
 durum = SetPortVal(&H378, ((deger And 252) Or 1), 1): If durum = 0 Then Call Hata("Pin2", "Set", param)
 Text1.Text = "Pin(2)'ye '+' gerilim uygulanýyor."
 Slider1.Value = 1: Image3.Picture = Image19.Picture
End If
If param = -1 Then
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Pin2", "Init", param)
 durum = GetPortVal(&H378, deger, 1): If durum = 0 Then Call Hata("Pin2", "Get", param)
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Pin2", "Init", param)
 durum = SetPortVal(&H378, ((deger And 252) Or 2), 1): If durum = 0 Then Call Hata("Pin2", "Set", param)
 Text1.Text = "Pin(2)'ye '-' gerilim uygulanýyor."
 Slider1.Value = 3: Image3.Picture = Image17.Picture
End If
End Function
Function Pin6() As Integer
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Pin6", "Init", 2)
 durum = GetPortVal(&H378, deger, 1): If durum = 0 Then Call Hata("Pin6", "Get", 2)
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Pin6", "Init", 2)
 durum = SetPortVal(&H378, (deger Or 128), 1): If durum = 0 Then Call Hata("Pin6", "Set", 2)
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Pin6", "Init", 2)
 durum = GetPortVal(&H379, deger, 1): If durum = 0 Then Call Hata("Pin6", "Get(379h)", 2)
 Pin6 = deger And 96
 If Pin6 = 32 Then Pin6 = -1
 If Pin6 = 64 Then Pin6 = 1
 If Pin6 = 96 Then Pin6 = 0
End Function

Private Sub Command3_Click()
 Timer2.Interval = Val(Text3.Text)
End Sub

Private Sub Command4_Click()
 Text2.Text = 250
End Sub

Private Sub Command5_Click()
 Text3.Text = 500
End Sub

Private Sub Form_Load()
 baslik = Form1.Caption + " (Ver:" + Str(App.Major) + "." + Trim(Str(App.Minor)) + "." + Trim(Str(App.Revision)) + ")"
 Form1.Caption = baslik
 durum = Kart(0)
 Check1.Value = Unchecked
 Timer1.Enabled = True
 Timer2.Enabled = False
 Text2.Text = Timer1.Interval
 Text3.Text = Timer2.Interval
End Sub
Private Sub Form_Unload(Cancel As Integer)
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Kapanýþ", "Init", 0)
 durum = SetPortVal(&H378, 0, 1): If durum = 0 Then Call Hata("Kapanýþ", "Set", 0)
 durum = InitializeWinIo(): If durum = 0 Then Call Hata("Kapanýþ", "Init", 0)
 durum = ShutdownWinIo(): If durum = 0 Then Call Hata("Kapanýþ", "Shutdown", 0)
End Sub
Private Sub Option1_Click()
durum = Pin2(1)
Image3.Picture = Image19.Picture
End Sub
Private Sub Option2_Click()
durum = Pin2(0)
Image3.Picture = Image20.Picture
End Sub
Private Sub Option3_Click()
durum = Pin2(-1)
Image3.Picture = Image17.Picture
End Sub
Private Sub Option4_Click()
durum = Pin3(-1)
Image4.Picture = Image17.Picture
End Sub
Private Sub Option5_Click()
durum = Pin3(0)
Image4.Picture = Image20.Picture
End Sub
Private Sub Option6_Click()
durum = Pin3(1)
Image4.Picture = Image19.Picture
End Sub
Sub Devre()
 p6 = Pin6()
 If p6 = 0 Then Slider4.Value = 2: Image5.Picture = Image20.Picture
 If p6 = 1 Then Slider4.Value = 1: Image5.Picture = Image19.Picture
 If p6 = -1 Then Slider4.Value = 3: Image5.Picture = Image17.Picture
End Sub
Private Sub Slider1_Scroll()
 Image43.Picture = Image44.Picture
 If Slider1.Value = 1 Then durum = Pin2(1)
 If Slider1.Value = 2 Then durum = Pin2(0)
 If Slider1.Value = 3 Then durum = Pin2(-1)
End Sub
Private Sub Slider2_Scroll()
 Image43.Picture = Image44.Picture
 If Slider2.Value = 1 Then durum = Pin3(1)
 If Slider2.Value = 2 Then durum = Pin3(0)
 If Slider2.Value = 3 Then durum = Pin3(-1)
End Sub
Private Sub Slider4_Click()
 Image43.Picture = Image44.Picture
End Sub
Private Sub Text2_GotFocus()
 Image43.Picture = Image44.Picture
End Sub
Private Sub Text3_GotFocus()
 Image43.Picture = Image44.Picture
End Sub
Private Sub Timer1_Timer()
 Devre
End Sub
Sub Test()
ChipDurum = 1
'Test 1....................................................
 If Sayac = 1 Then
  ProgressBar1.Value = 1
  durum = Pin2(0)
  durum = Pin3(1)
 End If
 If Sayac = 2 Then
  durum = Pin6(): Devre
  If durum <> 1 Then ChipDurum = 0: ChipStat (0): Exit Sub
 End If

'Test 2....................................................
 If Sayac = 3 Then
  ProgressBar1.Value = 2
  durum = Pin2(0)
  durum = Pin3(-1)
 End If
 If Sayac = 4 Then
  durum = Pin6(): Devre
  If durum <> -1 Then ChipDurum = 0: ChipStat (0): Exit Sub
 End If

'Test 3....................................................
 If Sayac = 5 Then
  ProgressBar1.Value = 3
  durum = Pin3(0)
  durum = Pin2(1)
 End If
 If Sayac = 6 Then
  durum = Pin6(): Devre
  If durum <> -1 Then ChipDurum = 0: ChipStat (0): Exit Sub
 End If

'Test 2....................................................
 If Sayac = 7 Then
  ProgressBar1.Value = 4
  durum = Pin3(0)
  durum = Pin2(-1)
 End If
 If Sayac = 8 Then
  durum = Pin6(): Devre
  If durum <> 1 Then ChipDurum = 0: ChipStat (0): Exit Sub
 End If

If Sayac = 9 Then
 ChipStat (ChipDurum)
End If
End Sub
Sub ChipStat(param As Integer)
 Timer2.Enabled = False
 durum = Pin2(0): durum = Pin3(0)
 ProgressBar1.Value = 0
 If param = 0 Then
  Text1.Text = "BOZUK!!!"
  Image43.Picture = Image42.Picture
 End If
 If param = 1 Then
  Text1.Text = "SAÐLAM."
  Image43.Picture = Image41.Picture
 End If
End Sub
Private Sub Timer2_Timer()
 Text3.Text = Timer2.Interval
 Sayac = Sayac + 1
 Test
End Sub
