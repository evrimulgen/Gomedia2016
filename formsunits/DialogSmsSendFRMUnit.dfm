object DlgSmsSend: TDlgSmsSend
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Envoi de Sms'
  ClientHeight = 179
  ClientWidth = 384
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 281
    Height = 161
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 16
    Top = 111
    Width = 43
    Height = 13
    Caption = 'Q Entr'#233'e'
  end
  object Label2: TLabel
    Left = 144
    Top = 111
    Width = 51
    Height = 13
    Caption = 'Q Envoyer'
  end
  object LabelSmsAvailable: TLabel
    Left = 72
    Top = 111
    Width = 57
    Height = 50
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelSmsToSend: TLabel
    Left = 202
    Top = 111
    Width = 57
    Height = 50
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object OKBtn: TButton
    Left = 300
    Top = 8
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 300
    Top = 38
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object MemoSmsText: TMemo
    Left = 16
    Top = 16
    Width = 265
    Height = 89
    Lines.Strings = (
      'MemoSmsText')
    TabOrder = 2
  end
  object UpDownSmsToSend: TUpDown
    Left = 265
    Top = 111
    Width = 17
    Height = 50
    Min = -9999
    Max = 9999
    TabOrder = 3
    Thousands = False
    OnClick = UpDownSmsToSendClick
  end
end