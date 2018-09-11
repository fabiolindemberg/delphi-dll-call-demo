object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Executable application that call a dll'
  ClientHeight = 190
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    633
    190)
  PixelsPerInch = 120
  TextHeight = 16
  object Button1: TButton
    Left = 32
    Top = 32
    Width = 569
    Height = 129
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Call a single form inside a dll'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
end
