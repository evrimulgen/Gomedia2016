object FormGLightMain: TFormGLightMain
  Left = 0
  Top = 0
  Caption = 'Gomedia light'
  ClientHeight = 486
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PhidgetRFID: TPhidgetRFID
    Left = 232
    Top = 104
    Width = 32
    Height = 32
    OnAttach = PhidgetRFIDAttach
    OnTag = PhidgetRFIDTag
    OnTagLost = PhidgetRFIDTagLost
    OnOutputChange = PhidgetRFIDOutputChange
    ControlData = {00080000}
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 72
    Width = 783
    Height = 414
    ActivePage = TabSheet1
    Align = alBottom
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Label1: TLabel
        Left = 3
        Top = 11
        Width = 36
        Height = 13
        Caption = 'Pr'#233'nom'
      end
      object Label2: TLabel
        Left = 3
        Top = 38
        Width = 21
        Height = 13
        Caption = 'Nom'
      end
      object Label3: TLabel
        Left = 3
        Top = 65
        Width = 24
        Height = 13
        Caption = 'Email'
      end
      object EditCustomerFilterFirstName: TEdit
        Left = 45
        Top = 8
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object EditCustomerFilterLastName: TEdit
        Left = 45
        Top = 35
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object EditCustomerFilterEmail: TEdit
        Left = 45
        Top = 62
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object BitBtnCustomersFilter: TBitBtn
        Left = 172
        Top = 58
        Width = 75
        Height = 25
        Caption = 'Filter'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = BitBtnCustomersFilterClick
      end
      object cxGridCustomers: TcxGrid
        Left = 0
        Top = 89
        Width = 775
        Height = 297
        Align = alBottom
        TabOrder = 4
        object cxGridCustomersDBTableViewCustomers: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DSCustomers
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridCustomersDBTableViewCustomerscustomers_credit: TcxGridDBColumn
            DataBinding.FieldName = 'customers_credit'
          end
          object cxGridCustomersDBTableViewCustomerscustomers_dob: TcxGridDBColumn
            AlternateCaption = 'Naissance'
            Caption = 'Naissance'
            DataBinding.FieldName = 'customers_dob'
          end
          object cxGridCustomersDBTableViewCustomerscustomers_email_address: TcxGridDBColumn
            DataBinding.FieldName = 'customers_email_address'
          end
          object cxGridCustomersDBTableViewCustomerscustomers_fax: TcxGridDBColumn
            DataBinding.FieldName = 'customers_fax'
          end
          object cxGridCustomersDBTableViewCustomerscustomers_firstname: TcxGridDBColumn
            DataBinding.FieldName = 'customers_firstname'
          end
          object cxGridCustomersDBTableViewCustomerscustomers_gender: TcxGridDBColumn
            DataBinding.FieldName = 'customers_gender'
          end
          object cxGridCustomersDBTableViewCustomerscustomers_htprice: TcxGridDBColumn
            DataBinding.FieldName = 'customers_htprice'
          end
          object cxGridCustomersDBTableViewCustomerscustomers_identity: TcxGridDBColumn
            DataBinding.FieldName = 'customers_identity'
          end
          object cxGridCustomersDBTableViewCustomerscustomers_isTVA: TcxGridDBColumn
            DataBinding.FieldName = 'customers_isTVA'
          end
          object cxGridCustomersDBTableViewCustomerscustomers_language_id: TcxGridDBColumn
            DataBinding.FieldName = 'customers_language_id'
          end
          object cxGridCustomersDBTableViewCustomerscustomers_lastname: TcxGridDBColumn
            DataBinding.FieldName = 'customers_lastname'
          end
          object cxGridCustomersDBTableViewCustomerscustomers_memo: TcxGridDBColumn
            DataBinding.FieldName = 'customers_memo'
          end
          object cxGridCustomersDBTableViewCustomerscustomers_nbr: TcxGridDBColumn
            DataBinding.FieldName = 'customers_nbr'
          end
          object cxGridCustomersDBTableViewCustomerscustomers_newsletter: TcxGridDBColumn
            DataBinding.FieldName = 'customers_newsletter'
            Width = 96
          end
          object cxGridCustomersDBTableViewCustomerscustomers_password: TcxGridDBColumn
            DataBinding.FieldName = 'customers_password'
          end
          object cxGridCustomersDBTableViewCustomerscustomers_points: TcxGridDBColumn
            DataBinding.FieldName = 'customers_points'
          end
          object cxGridCustomersDBTableViewCustomerscustomers_rent_enabled: TcxGridDBColumn
            DataBinding.FieldName = 'customers_rent_enabled'
          end
          object cxGridCustomersDBTableViewCustomerscustomers_telephone: TcxGridDBColumn
            DataBinding.FieldName = 'customers_telephone'
          end
          object cxGridCustomersDBTableViewCustomerscustomers_TVA: TcxGridDBColumn
            DataBinding.FieldName = 'customers_TVA'
          end
          object cxGridCustomersDBTableViewCustomerscustomers_rfid: TcxGridDBColumn
            DataBinding.FieldName = 'customers_rfid'
          end
        end
        object cxGridCustomersLevel1: TcxGridLevel
          GridView = cxGridCustomersDBTableViewCustomers
        end
      end
    end
  end
  object MainConnection: TSQLConnection
    ConnectionName = 'DataSnapCONNECTION'
    DriverName = 'Datasnap'
    LoginPrompt = False
    Left = 216
    Top = 24
  end
  object DSCustomers: TDataSource
    DataSet = Customers
    Left = 488
    Top = 32
  end
  object Customers: TClientDataSet
    Aggregates = <>
    FilterOptions = [foCaseInsensitive]
    FetchOnDemand = False
    Params = <>
    ProviderName = 'DPCustomers'
    RemoteServer = DSProviderConnection
    AfterPost = CustomersAfterPost
    Left = 408
    Top = 32
  end
  object DSProviderConnection: TDSProviderConnection
    ServerClassName = 'TDSServerModuleRFIDPanel'
    SQLConnection = MainConnection
    Left = 600
    Top = 16
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
  end
end
