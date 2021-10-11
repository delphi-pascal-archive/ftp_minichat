object Form2: TForm2
  Left = 469
  Top = 350
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 375
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = Close_
  OnCreate = Create_
  PixelsPerInch = 120
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 10
    Top = 10
    Width = 306
    Height = 90
    Caption = ' '#1040#1074#1090#1086#1086#1073#1085#1086#1074#1083#1077#1085#1080#1077' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 20
      Width = 3
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object TrackBar1: TTrackBar
      Left = 10
      Top = 39
      Width = 287
      Height = 41
      Max = 250
      Min = 5
      Frequency = 10
      Position = 250
      TabOrder = 0
      OnChange = Change_
    end
  end
  object Button1: TButton
    Left = 207
    Top = 335
    Width = 109
    Height = 31
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 325
    Top = 335
    Width = 112
    Height = 31
    Caption = #1054#1090#1084#1077#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object GroupBox2: TGroupBox
    Left = 10
    Top = 108
    Width = 306
    Height = 61
    Caption = ' '#1057#1090#1088#1086#1082#1072' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object CheckBox1: TCheckBox
      Left = 20
      Top = 30
      Width = 208
      Height = 20
      Caption = #1054#1095#1080#1097#1072#1090#1100' '#1087#1086#1089#1083#1077' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 10
    Top = 177
    Width = 306
    Height = 90
    Caption = ' '#1054#1082#1085#1086' '#1095#1072#1090#1072' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label2: TLabel
      Left = 148
      Top = 20
      Width = 3
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 148
      Top = 39
      Width = 3
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 10
      Top = 20
      Width = 37
      Height = 16
      Caption = #1060#1086#1085':'
    end
    object Label7: TLabel
      Left = 98
      Top = 20
      Width = 111
      Height = 16
      Caption = #1062#1074#1077#1090' '#1096#1088#1080#1092#1090#1072':'
    end
    object Label5: TLabel
      Left = 200
      Top = 64
      Width = 86
      Height = 16
      Caption = ' ('#1073#1077#1083#1099#1081' '#1092#1086#1085')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RadioButton3: TRadioButton
      Left = 10
      Top = 39
      Width = 80
      Height = 21
      Caption = #1063#1105#1088#1085#1099#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object RadioButton4: TRadioButton
      Left = 10
      Top = 59
      Width = 80
      Height = 21
      Caption = #1041#1077#1083#1099#1081
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
    end
    object CheckBox2: TCheckBox
      Left = 98
      Top = 43
      Width = 199
      Height = 21
      Caption = #1058#1086#1083#1100#1082#1086' '#1095#1105#1088#1085#1099#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object GroupBox4: TGroupBox
    Left = 325
    Top = 10
    Width = 306
    Height = 257
    Caption = ' '#1056#1072#1073#1086#1090#1086#1089#1087#1086#1089#1086#1073#1085#1086#1089#1090#1100' '#1095#1072#1090#1072' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object RadioButton1: TRadioButton
      Left = 10
      Top = 20
      Width = 119
      Height = 21
      Caption = #1054#1089#1085#1086#1074#1085#1086#1081' '#1095#1072#1090
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 10
      Top = 39
      Width = 119
      Height = 21
      Caption = #1047#1072#1087#1072#1089#1085#1086#1081' '#1095#1072#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Memo1: TMemo
      Left = 10
      Top = 69
      Width = 287
      Height = 119
      Color = clMenuBar
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      Lines.Strings = (
        #1042#1085#1080#1084#1072#1085#1080#1077'!!! '#1054#1090#1084#1077#1090#1100#1090#1077' '#1079#1072#1087#1072#1089#1085#1086#1081' '#1095#1072#1090', '
        #1077#1089#1083#1080' '#1082' '#1086#1089#1085#1086#1074#1085#1086#1084#1091' '#1085#1077#1074#1086#1079#1084#1086#1078#1085#1086' '
        #1087#1086#1076#1082#1083#1102#1095#1080#1090#1089#1103'. '#1048' '#1085#1072#1078#1084#1080#1090#1077' Connect.'
        #1050#1085#1086#1087#1082#1091' '#1074#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1086#1089#1085#1086#1074#1085#1086#1081' '#1095#1072#1090' - '
        #1085#1072#1078#1080#1084#1072#1090#1100' '#1090#1086#1083#1100#1082#1086' '#1082#1086#1075#1076#1072' '#1095#1072#1090' '#1085#1077' '
        #1088#1072#1073#1086#1090#1086#1089#1087#1086#1089#1086#1073#1077#1085'.')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object Button3: TButton
      Left = 39
      Top = 197
      Width = 228
      Height = 31
      Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1086#1089#1085#1086#1074#1085#1086#1081' '#1095#1072#1090
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 10
    Top = 276
    Width = 306
    Height = 50
    Caption = ' '#1047#1074#1091#1082' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object CheckBox3: TCheckBox
      Left = 10
      Top = 20
      Width = 208
      Height = 21
      Caption = #1047#1074#1091#1082' '#1087#1088#1080' '#1085#1086#1074#1086#1084' '#1089#1086#1086#1073#1097#1077#1085#1080#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox6: TGroupBox
    Left = 325
    Top = 276
    Width = 306
    Height = 50
    Caption = ' '#1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1080#1074#1085#1086#1077' '
    TabOrder = 7
    object Label4: TLabel
      Left = 10
      Top = 20
      Width = 56
      Height = 16
      Caption = #1055#1072#1088#1086#1083#1100': '
    end
    object Edit1: TEdit
      Left = 69
      Top = 20
      Width = 70
      Height = 24
      TabOrder = 0
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    MinFontSize = 10
    MaxFontSize = 8
    Options = [fdAnsiOnly]
    Left = 224
    Top = 104
  end
end
