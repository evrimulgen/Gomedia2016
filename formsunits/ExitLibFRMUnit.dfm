object FormExitLibrary: TFormExitLibrary
  Left = 913
  Top = 473
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Sortie de la librairie'
  ClientHeight = 354
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MessageLabel: TJvHTLabel
    Left = 8
    Top = 66
    Width = 466
    Height = 14
    AutoSize = False
    Caption = '<center>MessageLabel</center>'
    Transparent = False
  end
  object Image1: TImage
    Left = 8
    Top = 96
    Width = 320
    Height = 253
    AutoSize = True
    IncrementalDisplay = True
    Stretch = True
    Transparent = True
  end
  object LedSlot: TJvSegmentedLEDDisplay
    Left = 366
    Top = 104
    Width = 100
    Height = 40
    DigitClassName = 'TJv7SegmentedLEDDigit'
    DigitHeight = 40
    Digits = <
      item
        UseDP = False
        UseColon = scuNone
      end
      item
        UseDP = False
        UseColon = scuNone
      end
      item
        UseDP = False
        UseColon = scuNone
      end>
    DigitSpacing = 5
    DigitWidth = 30
    SegmentLitColor = clGreen
    SegmentSpacing = 4
    SegmentThickness = 4
    SegmentUnlitColor = clMenuBar
    Text = '123'
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 464
    Height = 54
    Caption = 'Sortie librairie'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LedMachine: TJvSegmentedLEDDisplay
    Left = 311
    Top = 68
    Width = 155
    Height = 20
    DigitClassName = 'TJv7SegmentedLEDDigit'
    DigitHeight = 20
    Digits = <
      item
        UseDP = False
        UseColon = scuNone
      end
      item
        UseDP = False
        UseColon = scuNone
      end
      item
        UseDP = False
        UseColon = scuNone
      end
      item
        UseDP = False
        UseColon = scuNone
      end
      item
        UseDP = False
        UseColon = scuNone
      end
      item
        UseDP = False
        UseColon = scuNone
      end
      item
        UseDP = False
        UseColon = scuNone
      end
      item
        UseDP = False
        UseColon = scuNone
      end>
    DigitSpacing = 5
    DigitWidth = 15
    SegmentLitColor = clNavy
    SegmentUnlitColor = clMenuBar
    Text = '00000000'
  end
  object BtMain: TBitBtn
    Left = 365
    Top = 160
    Width = 101
    Height = 53
    Caption = 'OK'
    Enabled = False
    ModalResult = 1
    TabOrder = 0
    OnClick = BtMainClick
  end
  object BitBtnCancel: TBitBtn
    Left = 365
    Top = 296
    Width = 101
    Height = 53
    Caption = 'Annuler'
    ModalResult = 2
    TabOrder = 1
    OnClick = BitBtnCancelClick
  end
end
