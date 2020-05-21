object Main: TMain
  Left = 402
  Top = 185
  Width = 1046
  Height = 540
  Caption = 'Main'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MenuBtn: TButton
    Left = 440
    Top = 240
    Width = 105
    Height = 49
    Caption = #1052#1077#1085#1102
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = MenuBtnClick
  end
  object OrderBtn: TButton
    Left = 640
    Top = 320
    Width = 105
    Height = 49
    Caption = #1054#1092#1086#1088#1084#1080#1090#1100' '#1079#1072#1082#1072#1079
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    WordWrap = True
    OnClick = OrderBtnClick
  end
  object Exit: TButton
    Left = 200
    Top = 320
    Width = 105
    Height = 49
    Cancel = True
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe Script'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = ExitClick
  end
end
