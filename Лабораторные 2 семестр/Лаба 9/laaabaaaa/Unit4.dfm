object MenuFm: TMenuFm
  Left = 513
  Top = 103
  Width = 1137
  Height = 612
  Caption = 'Menu'
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
  object Label1: TLabel
    Left = 640
    Top = 280
    Width = 89
    Height = 20
    Caption = #1053#1086#1084#1077#1088' '#1073#1083#1102#1076#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
  end
  object Stat: TStringGrid
    Left = 0
    Top = 0
    Width = 593
    Height = 553
    ColCount = 4
    DefaultColWidth = 100
    DefaultRowHeight = 50
    FixedColor = 13817734
    RowCount = 11
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ColWidths = (
      100
      244
      70
      38)
  end
  object BackBtn: TButton
    Left = 624
    Top = 512
    Width = 97
    Height = 41
    Cancel = True
    Caption = #1053#1072#1079#1072#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BackBtnClick
  end
  object SortBtn: TButton
    Left = 704
    Top = 184
    Width = 97
    Height = 41
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = SortBtnClick
  end
  object Crit: TRadioGroup
    Left = 688
    Top = 64
    Width = 305
    Height = 105
    Caption = #1050#1072#1082' '#1089#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe Script'
    Font.Style = []
    Items.Strings = (
      #1055#1086' '#1094#1077#1085#1077'('#1086#1090' '#1084#1077#1085#1100#1096#1077#1081' '#1082' '#1073#1086#1083#1100#1096#1077#1081')'
      #1055#1086' '#1087#1086#1087#1091#1083#1103#1088#1085#1086#1089#1090#1080)
    ParentFont = False
    TabOrder = 3
  end
  object OderingBtn: TButton
    Left = 792
    Top = 288
    Width = 97
    Height = 41
    Caption = #1050' '#1079#1072#1082#1072#1079#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = OderingBtnClick
  end
  object IndEdit: TEdit
    Left = 712
    Top = 304
    Width = 57
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
end
