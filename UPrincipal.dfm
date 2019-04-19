object FrPrincipal: TFrPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Prova Maring'#225
  ClientHeight = 391
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 696
    Height = 185
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 686
    object Label1: TLabel
      Left = 31
      Top = 6
      Width = 42
      Height = 13
      Caption = 'Colunas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 255
      Top = 6
      Width = 41
      Height = 13
      Caption = 'Tabelas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 479
      Top = 6
      Width = 49
      Height = 13
      Caption = 'Condi'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Panel3: TPanel
      Left = 1
      Top = 143
      Width = 694
      Height = 41
      Align = alBottom
      TabOrder = 0
      ExplicitLeft = 280
      ExplicitTop = 88
      ExplicitWidth = 185
      object Button1: TButton
        Left = 304
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Gerar SQL'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object MemoColuna: TMemo
      Left = 31
      Top = 25
      Width = 185
      Height = 113
      TabOrder = 1
    end
    object MemoTabela: TMemo
      Left = 255
      Top = 25
      Width = 185
      Height = 113
      TabOrder = 2
    end
    object MemoCondicao: TMemo
      Left = 479
      Top = 25
      Width = 185
      Height = 113
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 185
    Width = 696
    Height = 206
    Align = alClient
    TabOrder = 1
    ExplicitTop = 8
    ExplicitWidth = 686
    ExplicitHeight = 145
    object MemoGeracao: TMemo
      Left = 1
      Top = 1
      Width = 694
      Height = 204
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 16
      ExplicitTop = 24
      ExplicitWidth = 185
      ExplicitHeight = 113
    end
  end
end
