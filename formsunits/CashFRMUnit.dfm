object FormCashClose: TFormCashClose
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cloture Caisse'
  ClientHeight = 416
  ClientWidth = 671
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object LabelNew: TLabel
    Left = 24
    Top = 50
    Width = 58
    Height = 13
    Caption = 'Ventes neuf'
  end
  object LabelBought: TLabel
    Left = 24
    Top = 77
    Width = 72
    Height = 13
    Caption = 'Ventes rachats'
  end
  object LabelDeposit: TLabel
    Left = 24
    Top = 104
    Width = 64
    Height = 13
    Caption = 'Ventes d'#233'p'#244't'
  end
  object LabelCancel: TLabel
    Left = 24
    Top = 131
    Width = 56
    Height = 13
    Caption = 'Annulations'
  end
  object LabelTotalIn: TLabel
    Left = 24
    Top = 158
    Width = 68
    Height = 13
    Caption = 'Total rentr'#233'es'
  end
  object LabelBCT: TLabel
    Left = 264
    Top = 50
    Width = 54
    Height = 13
    Caption = 'Bancontact'
  end
  object LabelVisa: TLabel
    Left = 264
    Top = 77
    Width = 19
    Height = 13
    Caption = 'Visa'
  end
  object LabelBank: TLabel
    Left = 264
    Top = 104
    Width = 36
    Height = 13
    Caption = 'Banque'
  end
  object LabelVouchers: TLabel
    Left = 264
    Top = 131
    Width = 23
    Height = 13
    Caption = 'Bons'
  end
  object LabelRefunds: TLabel
    Left = 264
    Top = 158
    Width = 77
    Height = 13
    Caption = 'Paiement clients'
  end
  object LabelExpenses: TLabel
    Left = 264
    Top = 212
    Width = 47
    Height = 13
    Caption = 'D'#233'penses'
  end
  object LabelTotalOut: TLabel
    Left = 264
    Top = 239
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object LabelTotalCash: TLabel
    Left = 24
    Top = 212
    Width = 58
    Height = 13
    Caption = 'Total Caisse'
  end
  object LabelToTake: TLabel
    Left = 24
    Top = 260
    Width = 36
    Height = 13
    Caption = 'A Sortir'
  end
  object Label1: TLabel
    Left = 528
    Top = 23
    Width = 27
    Height = 13
    Caption = '500 '#8364
  end
  object Label2: TLabel
    Left = 528
    Top = 50
    Width = 27
    Height = 13
    Caption = '200 '#8364
  end
  object Label3: TLabel
    Left = 528
    Top = 77
    Width = 27
    Height = 13
    Caption = '100 '#8364
  end
  object Label4: TLabel
    Left = 528
    Top = 104
    Width = 21
    Height = 13
    Caption = '50 '#8364
  end
  object Label5: TLabel
    Left = 528
    Top = 131
    Width = 21
    Height = 13
    Caption = '20 '#8364
  end
  object Label6: TLabel
    Left = 528
    Top = 158
    Width = 21
    Height = 13
    Caption = '10 '#8364
  end
  object Label7: TLabel
    Left = 528
    Top = 185
    Width = 15
    Height = 13
    Caption = '5 '#8364
  end
  object Label8: TLabel
    Left = 528
    Top = 212
    Width = 15
    Height = 13
    Caption = '2 '#8364
  end
  object Label9: TLabel
    Left = 528
    Top = 239
    Width = 15
    Height = 13
    Caption = '1 '#8364
  end
  object Label10: TLabel
    Left = 528
    Top = 266
    Width = 43
    Height = 13
    Caption = '50 Cents'
  end
  object Label11: TLabel
    Left = 528
    Top = 293
    Width = 43
    Height = 13
    Caption = '20 Cents'
  end
  object Label12: TLabel
    Left = 528
    Top = 320
    Width = 43
    Height = 13
    Caption = '10 Cents'
  end
  object Label13: TLabel
    Left = 528
    Top = 347
    Width = 37
    Height = 13
    Caption = '5 Cents'
  end
  object Label14: TLabel
    Left = 24
    Top = 287
    Width = 76
    Height = 13
    Caption = 'Fonds de caisse'
  end
  object Label15: TLabel
    Left = 24
    Top = 320
    Width = 97
    Height = 13
    Caption = 'Responsable cloture'
  end
  object Label16: TLabel
    Left = 24
    Top = 23
    Width = 29
    Height = 13
    Caption = 'D'#233'but'
  end
  object Label17: TLabel
    Left = 264
    Top = 23
    Width = 14
    Height = 13
    Caption = 'Fin'
  end
  object LabelStatDate: TLabel
    Left = 120
    Top = 23
    Width = 47
    Height = 13
    Caption = 'StartDate'
  end
  object LabelEndDate: TLabel
    Left = 360
    Top = 23
    Width = 41
    Height = 13
    Caption = 'EndDate'
  end
  object Label18: TLabel
    Left = 264
    Top = 185
    Width = 39
    Height = 13
    Caption = 'Rachats'
  end
  object Label19: TLabel
    Left = 24
    Top = 347
    Width = 88
    Height = 13
    Caption = 'T'#226'ches accomplies'
  end
  object cxCurrencyEditNew: TcxCurrencyEdit
    Left = 120
    Top = 47
    Properties.ReadOnly = True
    TabOrder = 0
    Width = 121
  end
  object cxCurrencyEditVoucher: TcxCurrencyEdit
    Left = 360
    Top = 128
    Properties.ReadOnly = True
    TabOrder = 1
    Width = 121
  end
  object cxCurrencyEditVisa: TcxCurrencyEdit
    Left = 360
    Top = 74
    Properties.ReadOnly = True
    TabOrder = 2
    Width = 121
  end
  object cxCurrencyEditBought: TcxCurrencyEdit
    Left = 120
    Top = 74
    Properties.ReadOnly = True
    TabOrder = 3
    Width = 121
  end
  object cxCurrencyEditDeposit: TcxCurrencyEdit
    Left = 120
    Top = 101
    Properties.ReadOnly = True
    TabOrder = 4
    Width = 121
  end
  object cxCurrencyEditReturn: TcxCurrencyEdit
    Left = 120
    Top = 128
    Properties.ReadOnly = True
    TabOrder = 5
    Width = 121
  end
  object cxCurrencyEditTotalIn: TcxCurrencyEdit
    Left = 120
    Top = 155
    Properties.ReadOnly = True
    TabOrder = 6
    Width = 121
  end
  object cxCurrencyEditBCT: TcxCurrencyEdit
    Left = 360
    Top = 47
    Properties.ReadOnly = True
    TabOrder = 7
    Width = 121
  end
  object cxCurrencyEditBank: TcxCurrencyEdit
    Left = 360
    Top = 101
    Properties.ReadOnly = True
    TabOrder = 8
    Width = 121
  end
  object cxCurrencyEditRefunds: TcxCurrencyEdit
    Left = 360
    Top = 155
    Properties.ReadOnly = True
    TabOrder = 9
    Width = 121
  end
  object cxCurrencyEditExpenses: TcxCurrencyEdit
    Left = 360
    Top = 209
    Properties.ReadOnly = True
    TabOrder = 10
    Width = 121
  end
  object cxCurrencyEditTotalOut: TcxCurrencyEdit
    Left = 360
    Top = 236
    Properties.ReadOnly = True
    TabOrder = 11
    Width = 121
  end
  object cxCurrencyEditTotalCash: TcxCurrencyEdit
    Left = 120
    Top = 209
    Properties.ReadOnly = True
    TabOrder = 12
    Width = 121
  end
  object cxSpinEdit50000: TcxSpinEdit
    Left = 576
    Top = 20
    TabOrder = 13
    OnKeyUp = cxSpinEdit50000KeyUp
    OnMouseUp = cxSpinEdit50000MouseUp
    Width = 65
  end
  object cxSpinEdit20000: TcxSpinEdit
    Left = 576
    Top = 47
    TabOrder = 14
    OnKeyUp = cxSpinEdit50000KeyUp
    OnMouseUp = cxSpinEdit50000MouseUp
    Width = 65
  end
  object cxSpinEdit10000: TcxSpinEdit
    Left = 576
    Top = 74
    TabOrder = 15
    OnKeyUp = cxSpinEdit50000KeyUp
    OnMouseUp = cxSpinEdit50000MouseUp
    Width = 65
  end
  object cxSpinEdit5000: TcxSpinEdit
    Left = 576
    Top = 101
    TabOrder = 16
    OnKeyUp = cxSpinEdit50000KeyUp
    OnMouseUp = cxSpinEdit50000MouseUp
    Width = 65
  end
  object cxSpinEdit2000: TcxSpinEdit
    Left = 576
    Top = 128
    TabOrder = 17
    OnKeyUp = cxSpinEdit50000KeyUp
    OnMouseUp = cxSpinEdit50000MouseUp
    Width = 65
  end
  object cxSpinEdit1000: TcxSpinEdit
    Left = 576
    Top = 155
    TabOrder = 18
    OnKeyUp = cxSpinEdit50000KeyUp
    OnMouseUp = cxSpinEdit50000MouseUp
    Width = 65
  end
  object cxSpinEdit500: TcxSpinEdit
    Left = 576
    Top = 182
    TabOrder = 19
    OnKeyUp = cxSpinEdit50000KeyUp
    OnMouseUp = cxSpinEdit50000MouseUp
    Width = 65
  end
  object cxSpinEdit200: TcxSpinEdit
    Left = 576
    Top = 209
    TabOrder = 20
    OnKeyUp = cxSpinEdit50000KeyUp
    OnMouseUp = cxSpinEdit50000MouseUp
    Width = 65
  end
  object cxSpinEdit100: TcxSpinEdit
    Left = 576
    Top = 236
    TabOrder = 21
    OnKeyUp = cxSpinEdit50000KeyUp
    OnMouseUp = cxSpinEdit50000MouseUp
    Width = 65
  end
  object cxSpinEdit50: TcxSpinEdit
    Left = 576
    Top = 263
    TabOrder = 22
    OnKeyUp = cxSpinEdit50000KeyUp
    OnMouseUp = cxSpinEdit50000MouseUp
    Width = 65
  end
  object cxSpinEdit20: TcxSpinEdit
    Left = 576
    Top = 290
    TabOrder = 23
    OnKeyUp = cxSpinEdit50000KeyUp
    OnMouseUp = cxSpinEdit50000MouseUp
    Width = 65
  end
  object cxSpinEdit10: TcxSpinEdit
    Left = 576
    Top = 317
    TabOrder = 24
    OnKeyUp = cxSpinEdit50000KeyUp
    OnMouseUp = cxSpinEdit50000MouseUp
    Width = 65
  end
  object cxSpinEdit5: TcxSpinEdit
    Left = 576
    Top = 344
    TabOrder = 25
    OnKeyUp = cxSpinEdit50000KeyUp
    OnMouseUp = cxSpinEdit50000MouseUp
    Width = 65
  end
  object cxCurrencyEditCompteur: TcxCurrencyEdit
    Left = 528
    Top = 371
    TabOrder = 26
    Width = 113
  end
  object cxDBTextEditInCharge: TcxDBTextEdit
    Left = 127
    Top = 317
    DataBinding.DataField = 'cashclose_operator'
    DataBinding.DataSource = RemoteDB.CashCloseSRC
    TabOrder = 27
    Width = 354
  end
  object cxCurrencyEditCashLeft: TcxDBCurrencyEdit
    Left = 120
    Top = 284
    DataBinding.DataField = 'cashclose_amountleft'
    DataBinding.DataSource = RemoteDB.CashCloseSRC
    Properties.ReadOnly = True
    TabOrder = 33
    Width = 121
  end
  object BitBtnOk: TBitBtn
    Left = 24
    Top = 383
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 29
    OnClick = BitBtnOkClick
  end
  object BitBtnCancel: TBitBtn
    Left = 406
    Top = 383
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 30
    OnClick = BitBtnCancelClick
  end
  object cxCurrencyEditToTake: TcxDBSpinEdit
    Left = 120
    Top = 257
    DataBinding.DataField = 'cashclose_amountout'
    DataBinding.DataSource = RemoteDB.CashCloseSRC
    Properties.Increment = 5.000000000000000000
    Properties.OnChange = cxCurrencyEditToTakePropertiesChange
    TabOrder = 31
    Width = 121
  end
  object cxCurrencyEditPurchased: TcxCurrencyEdit
    Left = 360
    Top = 182
    Properties.ReadOnly = True
    TabOrder = 32
    Width = 121
  end
  object cxDBTextEditTasks: TcxDBTextEdit
    Left = 127
    Top = 344
    DataBinding.DataField = 'cashclose_daytasks'
    DataBinding.DataSource = RemoteDB.CashCloseSRC
    TabOrder = 28
    Width = 354
  end
end
