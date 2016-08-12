object ChangeEANForm: TChangeEANForm
  Left = 426
  Top = 308
  BorderStyle = bsDialog
  Caption = 'Nouveau code barre'
  ClientHeight = 137
  ClientWidth = 187
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 98
    Height = 13
    Caption = 'Nouveau code barre'
  end
  object Label1: TLabel
    Left = 8
    Top = 10
    Width = 87
    Height = 13
    Caption = 'Ancien code barre'
  end
  object EditNewModel: TcxTextEdit
    Left = 8
    Top = 75
    TabOrder = 0
    Width = 170
  end
  object EditOldModel: TcxDBTextEdit
    Left = 8
    Top = 29
    DataBinding.DataField = 'products_model'
    DataBinding.DataSource = RemoteDB.ProductsSRC
    Properties.ReadOnly = True
    TabOrder = 1
    Width = 170
  end
  object BitBtnOk: TBitBtn
    Left = 103
    Top = 102
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtnOkClick
  end
  object BitBtnCancel: TBitBtn
    Left = 8
    Top = 102
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
  end
end
