object FormOfZakaz_SAA: TFormOfZakaz_SAA
  Left = 0
  Top = 0
  ClientHeight = 442
  ClientWidth = 628
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 192
    Top = 62
    Width = 270
    Height = 28
    Caption = #1050#1072#1082#1086#1081' '#1073#1091#1082#1077#1090' '#1076#1083#1103' '#1074#1072#1089' '#1089#1086#1073#1088#1072#1090#1100'?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 224
    Top = 166
    Width = 190
    Height = 28
    Caption = #1042' '#1082#1072#1082#1086#1084' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1077'?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 232
    Top = 96
    Width = 169
    Height = 36
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 232
    Top = 200
    Width = 169
    Height = 36
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 256
    Top = 264
    Width = 134
    Height = 49
    Caption = #1075#1086#1090#1086#1074#1086'!'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 512
    Top = 409
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 3
    OnClick = Button2Click
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
    Left = 8
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 40
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 72
    Top = 8
  end
end
