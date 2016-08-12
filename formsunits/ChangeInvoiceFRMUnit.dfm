object FormChangeInvoice: TFormChangeInvoice
  Left = 702
  Top = 494
  BorderStyle = bsDialog
  Caption = 'ChangeInvoice'
  ClientHeight = 133
  ClientWidth = 181
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object EditSalesCustomerId: TcxTextEdit
    Left = 16
    Top = 8
    Properties.Alignment.Horz = taCenter
    Properties.UseLeftAlignmentOnEditing = False
    TabOrder = 0
    Text = 'EditSalesCustomerId'
    OnKeyPress = EditSalesCustomerIdKeyPress
    OnKeyUp = EditSalesCustomerIdKeyUp
    Width = 149
  end
  object cxDBTextEdit3: TcxDBTextEdit
    Left = 16
    Top = 32
    DataBinding.DataField = 'customers_firstname'
    DataBinding.DataSource = RemoteDB.CustomersSRC
    Properties.Alignment.Horz = taCenter
    Style.LookAndFeel.Kind = lfFlat
    Style.LookAndFeel.NativeStyle = True
    Style.Shadow = False
    Style.TransparentBorder = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Width = 149
  end
  object cxDBTextEdit4: TcxDBTextEdit
    Left = 16
    Top = 56
    DataBinding.DataField = 'customers_lastname'
    DataBinding.DataSource = RemoteDB.CustomersSRC
    Properties.Alignment.Horz = taCenter
    TabOrder = 2
    Width = 149
  end
  object Button1: TButton
    Left = 48
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
  end
end
