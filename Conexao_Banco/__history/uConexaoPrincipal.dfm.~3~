object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 433
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TxtNome: TEdit
    Left = 80
    Top = 72
    Width = 233
    Height = 21
    TabOrder = 0
  end
  object TxtIdade: TEdit
    Left = 80
    Top = 115
    Width = 233
    Height = 21
    TabOrder = 1
  end
  object TxtPermissao: TEdit
    Left = 80
    Top = 160
    Width = 233
    Height = 21
    TabOrder = 2
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=postgres'
      'Password=postgres'
      'Database=ConexaoTeste'
      'DriverID=PG')
    Connected = True
    Left = 528
    Top = 288
  end
  object BindSourceUsuario: TBindSourceDB
    DataSet = FDTableUsuario
    ScopeMappings = <>
    Left = 528
    Top = 232
  end
  object FDTableUsuario: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = '"Usuario"'
    TableName = '"Usuario"'
    Left = 528
    Top = 168
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceUsuario
      FieldName = 'idade'
      Control = TxtIdade
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceUsuario
      FieldName = 'nome'
      Control = TxtNome
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceUsuario
      FieldName = 'permissao'
      Control = TxtPermissao
      Track = True
    end
  end
end
