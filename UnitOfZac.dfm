object FormOfZac_SAA: TFormOfZac_SAA
  Left = 0
  Top = 0
  Caption = #1054#1092#1086#1088#1084#1083#1077#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
  ClientHeight = 442
  ClientWidth = 628
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LabelFIO_SAA: TLabel
    Left = 216
    Top = 35
    Width = 56
    Height = 31
    Caption = #1060#1048#1054':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object LabelNomer_SAA: TLabel
    Left = 216
    Top = 114
    Width = 201
    Height = 31
    Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1081' '#1085#1086#1084#1077#1088':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object EditFIO_SAA: TEdit
    Left = 216
    Top = 72
    Width = 177
    Height = 36
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object EditNomer_SAA: TEdit
    Left = 216
    Top = 151
    Width = 177
    Height = 36
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object ButtonOf_SAA: TButton
    Left = 224
    Top = 224
    Width = 153
    Height = 57
    Caption = #1086#1092#1086#1088#1084#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = ButtonOf_SAAClick
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\MSI NoteBo' +
      'ok\Downloads\Telegram Desktop\Author24_1712840190\expert1\bd.mdb' +
      ';Persist Security Info=False'
    LoginPrompt = False
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
