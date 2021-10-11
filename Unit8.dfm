object Form8: TForm8
  Left = 137
  Top = 101
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
  ClientHeight = 378
  ClientWidth = 546
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = Create_
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 232
    Top = 352
    Width = 65
    Height = 22
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 545
    Height = 345
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
end
