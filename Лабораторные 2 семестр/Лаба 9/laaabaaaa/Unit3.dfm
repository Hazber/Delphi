object Oders: TOders
  Left = 423
  Top = 193
  Width = 1045
  Height = 540
  Caption = 'Oders'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PriceLb: TLabel
    Left = 387
    Top = 176
    Width = 4
    Height = 17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 440
    Top = 48
    Width = 49
    Height = 23
    Caption = #1041#1083#1102#1076#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 400
    Top = 104
    Width = 168
    Height = 23
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086#1088#1094#1080#1081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
  end
  object Label23: TLabel
    Left = 8
    Top = 424
    Width = 131
    Height = 23
    Caption = #1053#1086#1084#1077#1088' '#1089#1090#1086#1083#1080#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
  end
  object Label24: TLabel
    Left = 8
    Top = 0
    Width = 334
    Height = 115
    Caption = 
      #1042#1099#1073#1077#1088#1080#1090#1077' '#1089#1090#1086#1083#1080#1082'( '#1089#1077#1088#1099#1084' '#1074#1099#1076#1077#1083#1077#1085#1099' '#1091#1078#1077' '#1079#1072#1073#1088#1086#1085#1080#1088#1086#1074#1072#1085#1085#1099#1077'). '#1045#1089#1083#1080' '#1074#1089#1077' '#1079 +
      #1072#1073#1088#1086#1085#1080#1088#1086#1074#1072#1085#1085#1099' '#1080#1083#1080' '#1074#1099#1093#1086#1090#1080#1090#1077#1090#1100' '#1074#1079#1103#1077#1090' '#1073#1083#1102#1076#1086' '#1089' '#1089#1086#1073#1086#1081' '#1087#1086#1089#1090#1072#1074#1100#1090#1077' 0 '#1074' '#1087 +
      #1086#1083#1077' '#1089#1085#1080#1079#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object FoodList: TComboBox
    Left = 504
    Top = 40
    Width = 145
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe Script'
    Font.Style = []
    ItemHeight = 17
    ParentFont = False
    TabOrder = 0
    OnChange = FoodListChange
    Items.Strings = (
      #1063#1080#1079#1073#1091#1088#1075#1077#1088
      #1043#1072#1084#1073#1091#1088#1075#1077#1088
      #1063#1080#1082#1077#1085#1073#1091#1088#1075#1077#1088
      #1050#1072#1088#1090#1086#1092#1077#1083#1100' '#1092#1088#1080
      #1057#1072#1083#1072#1090' '#1086#1074#1086#1097#1085#1086#1081
      #1052#1072#1082#1052#1072#1092#1092#1080#1085
      #1063#1080#1082#1077#1085' '#1060#1088#1077#1096
      #1052#1072#1082#1060#1083#1091#1088#1080
      #1041#1080#1075' '#1052#1072#1082
      #1060#1080#1096' '#1056#1086#1083#1083)
  end
  object ToMenuBtn: TButton
    Left = 704
    Top = 424
    Width = 97
    Height = 41
    Caption = #1050' '#1084#1077#1085#1102
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    WordWrap = True
    OnClick = ToMenuBtnClick
  end
  object ToMainBtn: TButton
    Left = 816
    Top = 424
    Width = 97
    Height = 41
    Cancel = True
    Caption = #1053#1072' '#1075#1083#1072#1074#1085#1091#1102
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    WordWrap = True
    OnClick = ToMainBtnClick
  end
  object PorsEd: TEdit
    Left = 576
    Top = 104
    Width = 73
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = PorsEdChange
  end
  object OkBtn: TButton
    Left = 496
    Top = 232
    Width = 97
    Height = 41
    Caption = #1054#1092#1086#1088#1084#1080#1090#1100' '#1079#1072#1082#1072#1079
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    WordWrap = True
    OnClick = OkBtnClick
  end
  object Panel1: TPanel
    Left = 8
    Top = 128
    Width = 345
    Height = 289
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object Label3: TLabel
      Tag = 1
      Left = 16
      Top = 16
      Width = 76
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe Script'
      Font.Style = []
      ParentFont = False
      OnClick = Label3Click
    end
    object Label4: TLabel
      Tag = 2
      Left = 16
      Top = 40
      Width = 76
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe Script'
      Font.Style = []
      ParentFont = False
      OnClick = Label3Click
    end
    object Label5: TLabel
      Tag = 3
      Left = 16
      Top = 64
      Width = 76
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe Script'
      Font.Style = []
      ParentFont = False
      OnClick = Label3Click
    end
    object Label6: TLabel
      Tag = 4
      Left = 16
      Top = 88
      Width = 76
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe Script'
      Font.Style = []
      ParentFont = False
      OnClick = Label3Click
    end
    object Label7: TLabel
      Tag = 5
      Left = 16
      Top = 112
      Width = 76
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe Script'
      Font.Style = []
      ParentFont = False
      OnClick = Label3Click
    end
    object Label8: TLabel
      Tag = 6
      Left = 16
      Top = 136
      Width = 76
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe Script'
      Font.Style = []
      ParentFont = False
      OnClick = Label3Click
    end
    object Label9: TLabel
      Tag = 7
      Left = 16
      Top = 160
      Width = 76
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe Script'
      Font.Style = []
      ParentFont = False
      OnClick = Label3Click
    end
    object Label10: TLabel
      Tag = 8
      Left = 16
      Top = 184
      Width = 76
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'8'
      OnClick = Label3Click
    end
    object Label11: TLabel
      Tag = 9
      Left = 16
      Top = 208
      Width = 76
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'9'
      OnClick = Label3Click
    end
    object Label12: TLabel
      Tag = 10
      Left = 16
      Top = 232
      Width = 84
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'10'
      OnClick = Label3Click
    end
    object Label13: TLabel
      Tag = 11
      Left = 176
      Top = 16
      Width = 84
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'11'
      OnClick = Label3Click
    end
    object Label14: TLabel
      Tag = 12
      Left = 176
      Top = 40
      Width = 84
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'12'
      OnClick = Label3Click
    end
    object Label15: TLabel
      Tag = 13
      Left = 176
      Top = 64
      Width = 84
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'13'
      OnClick = Label3Click
    end
    object Label16: TLabel
      Tag = 14
      Left = 176
      Top = 88
      Width = 84
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'14'
      OnClick = Label3Click
    end
    object Label17: TLabel
      Tag = 15
      Left = 176
      Top = 112
      Width = 84
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'15'
      OnClick = Label3Click
    end
    object Label18: TLabel
      Tag = 16
      Left = 176
      Top = 136
      Width = 84
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'16'
      OnClick = Label3Click
    end
    object Label19: TLabel
      Tag = 17
      Left = 176
      Top = 152
      Width = 84
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'17'
      OnClick = Label3Click
    end
    object Label20: TLabel
      Tag = 18
      Left = 176
      Top = 176
      Width = 84
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'18'
      OnClick = Label3Click
    end
    object Label21: TLabel
      Tag = 19
      Left = 176
      Top = 192
      Width = 84
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'19'
      OnClick = Label3Click
    end
    object Label22: TLabel
      Tag = 20
      Left = 176
      Top = 216
      Width = 84
      Height = 17
      Caption = #1057#1090#1086#1083#1080#1082' '#8470'20'
      OnClick = Label3Click
    end
  end
  object TbEd: TEdit
    Left = 152
    Top = 424
    Width = 65
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
end
