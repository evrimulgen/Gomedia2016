object ChangePriceForm: TChangePriceForm
  Left = 545
  Top = 381
  Caption = 'Change Price'
  ClientHeight = 205
  ClientWidth = 167
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LabelCurrent: TLabel
    Left = 8
    Top = 40
    Width = 49
    Height = 13
    Caption = 'Prix actuel'
  end
  object Label1: TLabel
    Left = 8
    Top = 67
    Width = 64
    Height = 13
    Caption = 'Nouveau Prix'
  end
  object DBTextName: TDBText
    Left = 8
    Top = 8
    Width = 153
    Height = 17
    DataField = 'product_name'
    DataSource = RemoteDB.StockSRC
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 104
    Width = 153
    Height = 41
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 152
    Width = 153
    Height = 41
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
  end
  object EditNewPrice: TcxCurrencyEdit
    Left = 83
    Top = 64
    EditValue = 0c
    Properties.Alignment.Horz = taRightJustify
    TabOrder = 2
    Width = 76
  end
  object EditOldPrice: TcxCurrencyEdit
    Left = 83
    Top = 37
    EditValue = 0c
    Properties.Alignment.Horz = taRightJustify
    TabOrder = 3
    Width = 76
  end
end
