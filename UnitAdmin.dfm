object FormAdmin_SAA: TFormAdmin_SAA
  Left = 0
  Top = 0
  Caption = #1047#1072#1082#1072#1079#1099
  ClientHeight = 442
  ClientWidth = 1081
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 88
    Top = 32
    Width = 961
    Height = 329
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 440
    Top = 377
    Width = 241
    Height = 57
    Caption = #1090#1099#1082
    TabOrder = 1
    OnClick = Button1Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\MSI NoteBo' +
      'ok\Downloads\Telegram Desktop\Author24_1712840190\expert1\bd.mdb' +
      ';Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 32
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 64
    Top = 8
  end
end
