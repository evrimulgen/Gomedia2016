object Debug: TDebug
  Left = 390
  Top = 306
  Caption = 'Debug'
  ClientHeight = 496
  ClientWidth = 905
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 905
    Height = 496
    ActivePage = TabSheetCoupons
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Sales'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel3: TPanel
        Left = 0
        Top = 421
        Width = 897
        Height = 47
        Align = alBottom
        Caption = 'Panel3'
        TabOrder = 0
        object IsStart: TEdit
          Left = 40
          Top = 8
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'ItemidStart'
        end
        object IsTarget: TEdit
          Left = 167
          Top = 6
          Width = 121
          Height = 21
          TabOrder = 1
          Text = 'ItemIdEnd'
        end
        object SOffset: TEdit
          Left = 294
          Top = 6
          Width = 121
          Height = 21
          TabOrder = 2
          Text = 'SalesIdOffset'
        end
        object Button5: TButton
          Left = 421
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Correct ItemId'
          TabOrder = 3
          OnClick = Button5Click
        end
      end
      object PanelItems: TPanel
        Left = 0
        Top = 178
        Width = 897
        Height = 243
        Align = alBottom
        Caption = 'PanelItems'
        TabOrder = 1
        object DBGridItems: TDBGrid
          Left = 1
          Top = 29
          Width = 895
          Height = 213
          Align = alBottom
          DataSource = RemoteDB.Items_SoldSRC
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object DBNavigatoritems: TDBNavigator
          Left = 1
          Top = 4
          Width = 895
          Height = 25
          DataSource = RemoteDB.Items_SoldSRC
          Align = alBottom
          TabOrder = 1
        end
      end
      object PanelSales: TPanel
        Left = 0
        Top = 112
        Width = 897
        Height = 66
        Align = alClient
        Caption = 'PanelSales'
        TabOrder = 2
        object DBGridSales: TDBGrid
          Left = 1
          Top = 26
          Width = 895
          Height = 39
          Align = alClient
          DataSource = RemoteDB.SalesSRC
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object DBNavigatorSales: TDBNavigator
          Left = 1
          Top = 1
          Width = 895
          Height = 25
          DataSource = RemoteDB.SalesSRC
          Align = alTop
          TabOrder = 1
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 897
        Height = 112
        Align = alTop
        TabOrder = 3
        object Label1: TLabel
          Left = 8
          Top = 39
          Width = 22
          Height = 13
          Caption = 'Start'
        end
        object ToolButton1: TToolButton
          Left = 123
          Top = 41
          Caption = 'Compute'
          ImageIndex = 0
          OnClick = ToolButton1Click
        end
        object Button1: TButton
          Left = 8
          Top = 6
          Width = 75
          Height = 21
          Caption = 'SetItemsTo'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 94
          Top = 6
          Width = 75
          Height = 21
          Caption = 'FreeItemsTo'
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button9: TButton
          Left = 135
          Top = 72
          Width = 75
          Height = 21
          Caption = 'Search'
          TabOrder = 2
          OnClick = Button9Click
        end
        object Edit3: TEdit
          Left = 8
          Top = 72
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object Start: TEdit
          Left = 64
          Top = 39
          Width = 121
          Height = 21
          TabOrder = 4
          Text = 'Start'
        end
        object Target: TEdit
          Left = 191
          Top = 39
          Width = 121
          Height = 21
          TabOrder = 5
          Text = 'Taget (next free)'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Products'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid3: TDBGrid
        Left = 0
        Top = 54
        Width = 897
        Height = 414
        Align = alClient
        DataSource = RemoteDB.ProductsSRC
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBNavigator3: TDBNavigator
        Left = 0
        Top = 0
        Width = 897
        Height = 25
        DataSource = RemoteDB.ProductsSRC
        Align = alTop
        TabOrder = 1
      end
      object JvToolBar3: TJvToolBar
        Left = 0
        Top = 25
        Width = 897
        Height = 29
        ButtonHeight = 21
        Caption = 'JvToolBar1'
        TabOrder = 2
        object Edit2: TEdit
          Left = 0
          Top = 0
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'EditIndex'
        end
        object SpeedButton3: TSpeedButton
          Left = 121
          Top = 0
          Width = 23
          Height = 21
          OnClick = SpeedButton3Click
        end
        object Button4: TButton
          Left = 144
          Top = 0
          Width = 75
          Height = 21
          Caption = 'Free'
          TabOrder = 1
          OnClick = Button3Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Repair'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBNavigator4: TDBNavigator
        Left = 0
        Top = 29
        Width = 897
        Height = 24
        DataSource = RemoteDB.RepairSRC
        Align = alTop
        TabOrder = 0
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 53
        Width = 897
        Height = 415
        Align = alClient
        DataSource = RemoteDB.RepairSRC
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object JvToolBar1: TJvToolBar
        Left = 0
        Top = 0
        Width = 897
        Height = 29
        ButtonHeight = 21
        Caption = 'JvToolBar1'
        TabOrder = 2
        object EditFilter: TEdit
          Left = 0
          Top = 0
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'EditFilter'
        end
        object SpeedButton1: TSpeedButton
          Left = 121
          Top = 0
          Width = 23
          Height = 21
          OnClick = SpeedButton1Click
        end
        object Button3: TButton
          Left = 144
          Top = 0
          Width = 75
          Height = 21
          Caption = 'Free'
          TabOrder = 1
          OnClick = Button3Click
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Refunds'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBNavigator8: TDBNavigator
        Left = 0
        Top = 29
        Width = 897
        Height = 24
        DataSource = RemoteDB.RefundsSRC
        Align = alTop
        TabOrder = 0
      end
      object JvToolBar2: TJvToolBar
        Left = 0
        Top = 0
        Width = 897
        Height = 29
        ButtonHeight = 21
        Caption = 'JvToolBar1'
        TabOrder = 1
        object JvToolBar4: TJvToolBar
          Left = 0
          Top = 0
          Width = 150
          Height = 21
          Caption = 'JvToolBar4'
          TabOrder = 0
        end
      end
      object DBGrid8: TDBGrid
        Left = 0
        Top = 53
        Width = 897
        Height = 415
        Align = alClient
        DataSource = RemoteDB.RefundsSRC
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Prod2CAt'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid5: TDBGrid
        Left = 0
        Top = 25
        Width = 897
        Height = 443
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBNavigator5: TDBNavigator
        Left = 0
        Top = 0
        Width = 897
        Height = 25
        Align = alTop
        TabOrder = 1
      end
    end
    object customers: TTabSheet
      Caption = 'customers'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBNavigator7: TDBNavigator
        Left = 0
        Top = 0
        Width = 897
        Height = 25
        DataSource = RemoteDB.CustomersSRC
        Align = alTop
        TabOrder = 0
      end
      object DBGrid7: TDBGrid
        Left = 0
        Top = 25
        Width = 897
        Height = 443
        Align = alClient
        DataSource = RemoteDB.CustomersSRC
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'customers_id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_gender'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_firstname'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_lastname'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_dob'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_email_address'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_default_address_id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_telephone'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_fax'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_password'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_points'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_nbr'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_newsletter'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_TVA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_identity'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_bank_account'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_isTVA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_issupplier'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_defltpost'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_paycode'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_language_id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_htprice'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_rent_enabled'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_memo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'customers_credit'
            Visible = True
          end>
      end
    end
    object Dacal: TTabSheet
      Caption = 'Dacal'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBNavigator9: TDBNavigator
        Left = 0
        Top = 41
        Width = 897
        Height = 25
        DataSource = RemoteDB.CarousselSRC
        Align = alTop
        TabOrder = 0
      end
      object DBGrid9: TDBGrid
        Left = 0
        Top = 66
        Width = 897
        Height = 402
        Align = alClient
        DataSource = RemoteDB.CarousselSRC
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 897
        Height = 41
        Align = alTop
        TabOrder = 2
        object EditDacalSearch: TEdit
          Left = 16
          Top = 8
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'EAN#'
        end
        object ButtonDacalSearch: TButton
          Left = 143
          Top = 8
          Width = 75
          Height = 21
          Caption = 'Seach'
          TabOrder = 1
          OnClick = ButtonDacalSearchClick
        end
      end
    end
    object RentTransaction: TTabSheet
      Caption = 'RentTransaction'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBNavigator10: TDBNavigator
        Left = 0
        Top = 0
        Width = 897
        Height = 25
        DataSource = RemoteDB.RentTransactionSrc
        Align = alTop
        TabOrder = 0
      end
      object DBGrid10: TDBGrid
        Left = 0
        Top = 25
        Width = 897
        Height = 443
        Align = alClient
        DataSource = RemoteDB.RentTransactionSrc
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object Invoices: TTabSheet
      Caption = 'Invoices'
      ImageIndex = 8
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBNavigator11: TDBNavigator
        Left = 0
        Top = 268
        Width = 897
        Height = 26
        DataSource = RemoteDB.invoices_items_src
        Align = alBottom
        TabOrder = 0
      end
      object DBGrid11: TDBGrid
        Left = 0
        Top = 56
        Width = 897
        Height = 212
        Align = alBottom
        DataSource = RemoteDB.InvoicesSrc
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBNavigator12: TDBNavigator
        Left = 0
        Top = 30
        Width = 897
        Height = 26
        DataSource = RemoteDB.InvoicesSrc
        Align = alBottom
        TabOrder = 2
      end
      object DBGrid12: TDBGrid
        Left = 0
        Top = 294
        Width = 897
        Height = 174
        Align = alBottom
        DataSource = RemoteDB.invoices_items_src
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Button8: TButton
        Left = 20
        Top = 20
        Width = 75
        Height = 25
        Caption = 'SetItemsToInvoices'
        TabOrder = 4
        OnClick = Button8Click
      end
    end
    object Taxes: TTabSheet
      Caption = 'Taxes'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object JvCaptionPanelCustomersPurchase: TJvCaptionPanel
        Left = 0
        Top = 290
        Width = 897
        Height = 178
        Align = alBottom
        AutoDrag = False
        Buttons = [capHelp]
        Caption = 'TaxRates'
        CaptionPosition = dpTop
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWhite
        CaptionFont.Height = -12
        CaptionFont.Name = 'Arial'
        CaptionFont.Style = []
        FlatButtons = True
        OutlookLook = False
        TabOrder = 0
        object DBGrid13: TDBGrid
          Left = 1
          Top = 25
          Width = 881
          Height = 138
          Align = alClient
          DataSource = RemoteDB.Tax_RatesSEC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
        end
      end
      object JvCaptionPanel1: TJvCaptionPanel
        Left = 0
        Top = -66
        Width = 897
        Height = 178
        Align = alBottom
        AutoDrag = False
        Buttons = [capHelp]
        Caption = 'TaxZones'
        CaptionPosition = dpTop
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWhite
        CaptionFont.Height = -12
        CaptionFont.Name = 'Arial'
        CaptionFont.Style = []
        FlatButtons = True
        OutlookLook = False
        TabOrder = 1
        object DBGrid14: TDBGrid
          Left = 1
          Top = 25
          Width = 881
          Height = 138
          Align = alClient
          DataSource = RemoteDB.Tax_ZonesSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
        end
      end
      object JvCaptionPanel2: TJvCaptionPanel
        Left = 0
        Top = 112
        Width = 897
        Height = 178
        Align = alBottom
        AutoDrag = False
        Buttons = [capHelp]
        Caption = 'TaxClass'
        CaptionPosition = dpTop
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWhite
        CaptionFont.Height = -12
        CaptionFont.Name = 'Arial'
        CaptionFont.Style = []
        FlatButtons = True
        OutlookLook = False
        TabOrder = 2
        object DBGrid15: TDBGrid
          Left = 1
          Top = 25
          Width = 881
          Height = 138
          Align = alClient
          DataSource = RemoteDB.Tax_ClassSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Stock'
      ImageIndex = 10
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBNavigator13: TDBNavigator
        Left = 0
        Top = 0
        Width = 897
        Height = 25
        DataSource = RemoteDB.StockSRC
        Align = alTop
        TabOrder = 0
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 66
        Width = 897
        Height = 402
        Align = alClient
        DataSource = RemoteDB.StockSRC
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel1: TPanel
        Left = 0
        Top = 25
        Width = 897
        Height = 41
        Align = alTop
        Caption = 'Panel1'
        TabOrder = 2
        object Button6: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Check'
          TabOrder = 0
          OnClick = Button6Click
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Expenses'
      ImageIndex = 11
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBNavigator14: TDBNavigator
        Left = 0
        Top = 0
        Width = 897
        Height = 25
        DataSource = RemoteDB.ExpensesSRC
        Align = alTop
        TabOrder = 0
      end
      object cxGridDebugRefunds: TcxGrid
        Left = 0
        Top = 25
        Width = 897
        Height = 443
        Align = alClient
        TabOrder = 1
        object cxGridDebugRefundsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = RemoteDB.ExpensesSRC
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridDebugRefundsDBTableView1expenses_id: TcxGridDBColumn
            DataBinding.FieldName = 'expenses_id'
          end
          object cxGridDebugRefundsDBTableView1expenses_shop_id: TcxGridDBColumn
            DataBinding.FieldName = 'expenses_shop_id'
          end
          object cxGridDebugRefundsDBTableView1expenses_date_time: TcxGridDBColumn
            DataBinding.FieldName = 'expenses_date_time'
          end
          object cxGridDebugRefundsDBTableView1expenses_amount: TcxGridDBColumn
            DataBinding.FieldName = 'expenses_amount'
          end
          object cxGridDebugRefundsDBTableView1expenses_description: TcxGridDBColumn
            DataBinding.FieldName = 'expenses_description'
          end
          object cxGridDebugRefundsDBTableView1expenses_date_time_display: TcxGridDBColumn
            DataBinding.FieldName = 'expenses_date_time_display'
          end
        end
        object cxGridDebugRefundsLevel1: TcxGridLevel
          GridView = cxGridDebugRefundsDBTableView1
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Address'
      ImageIndex = 12
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBNavigator6: TDBNavigator
        Left = 0
        Top = 0
        Width = 897
        Height = 25
        DataSource = RemoteDB.Address_bookSRC
        Align = alTop
        TabOrder = 0
      end
      object DBGrid6: TDBGrid
        Left = 0
        Top = 25
        Width = 897
        Height = 443
        Align = alClient
        DataSource = RemoteDB.Address_bookSRC
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'RentStock'
      ImageIndex = 13
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid18: TDBGrid
        Left = 0
        Top = 25
        Width = 897
        Height = 443
        Align = alClient
        DataSource = RemoteDB.RentStockSRC
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBNavigator15: TDBNavigator
        Left = 0
        Top = 0
        Width = 897
        Height = 25
        DataSource = RemoteDB.RentStockSRC
        Align = alTop
        TabOrder = 1
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Alerts'
      ImageIndex = 14
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBNavigator16: TDBNavigator
        Left = 0
        Top = 443
        Width = 897
        Height = 25
        DataSource = RemoteDB.AlertsSRC
        Align = alBottom
        TabOrder = 0
      end
      object DBGrid19: TDBGrid
        Left = 0
        Top = 230
        Width = 897
        Height = 213
        Align = alBottom
        DataSource = RemoteDB.AlertsSRC
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBGrid21: TDBGrid
        Left = 0
        Top = -8
        Width = 897
        Height = 213
        Align = alBottom
        DataSource = RemoteDB.WebOrdersSRC
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBNavigator17: TDBNavigator
        Left = 0
        Top = 205
        Width = 897
        Height = 25
        DataSource = RemoteDB.AlertsSRC
        Align = alBottom
        TabOrder = 3
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Warranty'
      ImageIndex = 15
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid20: TDBGrid
        Left = 0
        Top = 0
        Width = 897
        Height = 468
        Align = alClient
        DataSource = RemoteDB.DSCoupons
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'rentlate'
      ImageIndex = 16
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid16: TDBGrid
        Left = 0
        Top = 255
        Width = 897
        Height = 213
        Align = alBottom
        DataSource = RemoteDB.RentLateSRC
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'SuppliersStock'
      ImageIndex = 17
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object TabSheetCoupons: TTabSheet
      Caption = 'TabSheetCoupons'
      ImageIndex = 18
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 897
        Height = 25
        DataSource = RemoteDB.DSCoupons
        Align = alTop
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 25
        Width = 897
        Height = 443
        Align = alClient
        DataSource = RemoteDB.DSCoupons
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object dxComponentPrinter: TdxComponentPrinter
    Version = 0
    Left = 500
    Top = 322
  end
end