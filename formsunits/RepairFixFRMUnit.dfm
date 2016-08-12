object RepairFixForm: TRepairFixForm
  Left = 412
  Top = 276
  BorderStyle = bsDialog
  Caption = 'Ex'#233'cution r'#233'paration'
  ClientHeight = 251
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 204
    Top = 4
    Width = 44
    Height = 13
    Caption = 'Client  N'#176
  end
  object Label3: TLabel
    Left = 354
    Top = 4
    Width = 56
    Height = 13
    Caption = 'Date entr'#233'e'
  end
  object Label1: TLabel
    Left = 64
    Top = 4
    Width = 12
    Height = 13
    Caption = 'Id '
  end
  object Label4: TLabel
    Left = 62
    Top = 52
    Width = 17
    Height = 13
    Alignment = taRightJustify
    Caption = 'Prix'
  end
  object Label5: TLabel
    Left = 201
    Top = 100
    Width = 52
    Height = 13
    Alignment = taRightJustify
    Caption = 'N'#176' de s'#233'rie'
  end
  object Label6: TLabel
    Left = 170
    Top = 148
    Width = 114
    Height = 13
    Alignment = taRightJustify
    Caption = 'Description du probl'#232'me'
  end
  object Label7: TLabel
    Left = 291
    Top = 52
    Width = 22
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nom'
  end
  object BitBtnOK: TBitBtn
    Left = 130
    Top = 209
    Width = 69
    Height = 33
    Caption = 'OK'
    Default = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 254
    Top = 209
    Width = 69
    Height = 33
    Cancel = True
    Caption = 'Cancel'
    Default = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    ModalResult = 2
    NumGlyphs = 2
    TabOrder = 1
  end
  object DBEditRepairId: TcxDBTextEdit
    Left = 10
    Top = 20
    DataBinding.DataField = 'repair_id'
    DataBinding.DataSource = RemoteDB.RepairSRC
    Properties.ReadOnly = True
    Properties.UseLeftAlignmentOnEditing = False
    TabOrder = 2
    Width = 121
  end
  object DBEditRepairCustNbr: TcxDBTextEdit
    Left = 166
    Top = 20
    DataBinding.DataField = 'repair_customer_nbr'
    DataBinding.DataSource = RemoteDB.RepairSRC
    Properties.Alignment.Horz = taCenter
    Properties.ReadOnly = True
    Properties.UseLeftAlignmentOnEditing = False
    TabOrder = 3
    Width = 121
  end
  object DBEditRepairDateIn: TcxDBTextEdit
    Left = 322
    Top = 20
    DataBinding.DataField = 'repair_date_in_display'
    DataBinding.DataSource = RemoteDB.RepairSRC
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    Properties.UseLeftAlignmentOnEditing = False
    TabOrder = 4
    Width = 121
  end
  object DBEditRepaiRPrice: TcxDBTextEdit
    Left = 10
    Top = 68
    DataBinding.DataField = 'repair_price'
    DataBinding.DataSource = RemoteDB.RepairSRC
    Properties.Alignment.Horz = taCenter
    Properties.ReadOnly = False
    Properties.UseLeftAlignmentOnEditing = False
    TabOrder = 5
    Width = 123
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 166
    Top = 68
    DataBinding.DataField = 'repair_products_name'
    DataBinding.DataSource = RemoteDB.RepairSRC
    Properties.Alignment.Horz = taCenter
    Properties.ReadOnly = True
    Properties.UseLeftAlignmentOnEditing = False
    TabOrder = 6
    Width = 277
  end
  object DBEditRepairSerial: TcxDBTextEdit
    Left = 10
    Top = 116
    DataBinding.DataField = 'repair_products_serial'
    DataBinding.DataSource = RemoteDB.RepairSRC
    Properties.Alignment.Horz = taCenter
    Properties.ReadOnly = False
    Properties.UseLeftAlignmentOnEditing = False
    TabOrder = 7
    Width = 433
  end
  object DBEditRepairProblem: TcxDBTextEdit
    Left = 10
    Top = 164
    DataBinding.DataField = 'repair_products_problem'
    DataBinding.DataSource = RemoteDB.RepairSRC
    Properties.Alignment.Horz = taCenter
    Properties.ReadOnly = False
    Properties.UseLeftAlignmentOnEditing = False
    TabOrder = 8
    Width = 433
  end
end
