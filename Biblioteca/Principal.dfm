object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Controle Biblioteca'
  ClientHeight = 621
  ClientWidth = 1036
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1036
    Height = 89
    Align = alTop
    Color = 11958098
    ParentBackground = False
    TabOrder = 0
    object BTUsuario: TSpeedButton
      Left = 40
      Top = 8
      Width = 81
      Height = 73
      Caption = 'Usuarios'
    end
    object BTLivros: TSpeedButton
      Left = 152
      Top = 8
      Width = 81
      Height = 73
      Caption = 'Livros'
    end
    object BTSair: TSpeedButton
      Left = 376
      Top = 8
      Width = 81
      Height = 73
      Caption = 'Sair'
    end
    object BTLocacoes: TSpeedButton
      Left = 264
      Top = 8
      Width = 81
      Height = 73
      Caption = 'Loca'#231#245'es'
    end
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 120
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Usuario1: TMenuItem
        Caption = '&Usuario'
      end
      object Livro1: TMenuItem
        Caption = '&Livro'
      end
    end
    object Movimento1: TMenuItem
      Caption = 'Movimento'
      object Locaes1: TMenuItem
        Caption = '&Loca'#231#245'es'
      end
    end
    object SobreoSistema1: TMenuItem
      Caption = 'Sobre o Sistema'
      object Informaes1: TMenuItem
        Caption = 'Informa'#231#245'es'
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
    object Relatorios1: TMenuItem
      Caption = 'Relatorios'
    end
  end
end
