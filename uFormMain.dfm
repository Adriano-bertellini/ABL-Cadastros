object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'FormMain'
  ClientHeight = 381
  ClientWidth = 612
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Conexao: TFDConnection
    Params.Strings = (
      'Server=192.168.0.19'
      'Port=3050'
      'Database=C:\db\ABL.fdb'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Left = 24
    Top = 8
  end
end
