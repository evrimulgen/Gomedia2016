object CancelSalesForm: TCancelSalesForm
  Left = 764
  Top = 535
  Caption = 'Annuler vente'
  ClientHeight = 176
  ClientWidth = 256
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
  object Label1: TLabel
    Left = 21
    Top = 64
    Width = 40
    Height = 13
    Caption = 'Quantit'#233
  end
  object Label2: TLabel
    Left = 111
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Produit'
  end
  object Label3: TLabel
    Left = 172
    Top = 64
    Width = 17
    Height = 13
    Caption = 'Prix'
  end
  object BitBtnOk: TBitBtn
    Left = 9
    Top = 136
    Width = 93
    Height = 37
    Caption = 'OK'
    Default = True
    TabOrder = 0
    OnClick = BitBtnOkClick
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
    NumGlyphs = 2
  end
  object BitBtnCancel: TBitBtn
    Left = 153
    Top = 136
    Width = 93
    Height = 37
    Cancel = True
    Caption = 'Cancel'
    Default = True
    TabOrder = 1
    OnClick = BitBtnCancelClick
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
    NumGlyphs = 2
  end
  object UpDown1: TUpDown
    Left = 80
    Top = 80
    Width = 16
    Height = 32
    TabOrder = 2
    OnClick = UpDown1Click
  end
  object EditQmax: TcxMaskEdit
    Left = 8
    Top = 80
    AutoSize = False
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Properties.EditMask = '#'
    Properties.MaxLength = 0
    Properties.UseLeftAlignmentOnEditing = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 3
    Text = '0'
    Height = 33
    Width = 69
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 8
    Top = 24
    AutoSize = False
    DataBinding.DataField = 'items_sold_name'
    DataBinding.DataSource = RemoteDB.Items_SoldSRC
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 4
    Height = 29
    Width = 241
  end
  object cxDBMaskEdit1: TcxDBMaskEdit
    Left = 112
    Top = 80
    AutoSize = False
    DataBinding.DataField = 'items_sold_price_stock'
    DataBinding.DataSource = RemoteDB.Items_SoldSRC
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Properties.UseLeftAlignmentOnEditing = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 5
    Height = 33
    Width = 137
  end
end
