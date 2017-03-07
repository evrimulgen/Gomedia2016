object TransferRequestForm: TTransferRequestForm
  Left = 0
  Top = 0
  Caption = 'Transfers inter-magasins'
  ClientHeight = 514
  ClientWidth = 725
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 26
    Width = 725
    Height = 488
    ActivePage = TabSheetIn
    Align = alClient
    TabOrder = 4
    object TabSheetIn: TTabSheet
      Caption = 'A recevoir'
      object cxGridSuggest: TcxGrid
        Left = 0
        Top = 0
        Width = 717
        Height = 460
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGridDBTableViewTransfer: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = RemoteDB.DSIn
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableViewTransferid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
          end
          object cxGridDBTableViewTransferproduct_model: TcxGridDBColumn
            DataBinding.FieldName = 'product_model'
          end
          object cxGridDBTableViewTransferproduct_name: TcxGridDBColumn
            DataBinding.FieldName = 'product_name'
          end
          object cxGridDBTableViewTransferproduct_root_category: TcxGridDBColumn
            DataBinding.FieldName = 'product_root_category'
          end
          object cxGridDBTableViewTransferproduct_price_stock: TcxGridDBColumn
            DataBinding.FieldName = 'product_price_stock'
          end
          object cxGridDBTableViewTransferproduct_origin: TcxGridDBColumn
            DataBinding.FieldName = 'product_origin'
          end
          object cxGridDBTableViewTransferproduct_destination: TcxGridDBColumn
            DataBinding.FieldName = 'product_destination'
          end
          object cxGridDBTableViewTransferproduct_quantity: TcxGridDBColumn
            DataBinding.FieldName = 'product_quantity'
          end
          object cxGridDBTableViewTransferproduct_supplier_id: TcxGridDBColumn
            DataBinding.FieldName = 'product_supplier_id'
          end
          object cxGridDBTableViewTransferproduct_owner_id: TcxGridDBColumn
            DataBinding.FieldName = 'product_owner_id'
          end
          object cxGridDBTableViewTransferdate_added: TcxGridDBColumn
            DataBinding.FieldName = 'date_added'
          end
          object cxGridDBTableViewTransferprocessed: TcxGridDBColumn
            DataBinding.FieldName = 'processed'
          end
        end
        object cxGridLevel7: TcxGridLevel
          GridView = cxGridDBTableViewTransfer
        end
      end
    end
    object TabSheetOut: TTabSheet
      Caption = 'A Envoyer'
      ImageIndex = 1
      object cxGridRequest: TcxGrid
        Left = 0
        Top = 0
        Width = 717
        Height = 460
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = RemoteDB.DSOut
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
          end
          object cxGridDBTableView1product_model: TcxGridDBColumn
            DataBinding.FieldName = 'product_model'
          end
          object cxGridDBTableView1product_name: TcxGridDBColumn
            DataBinding.FieldName = 'product_name'
          end
          object cxGridDBTableView1product_root_category: TcxGridDBColumn
            DataBinding.FieldName = 'product_root_category'
          end
          object cxGridDBTableView1product_price_stock: TcxGridDBColumn
            DataBinding.FieldName = 'product_price_stock'
          end
          object cxGridDBTableView1product_origin: TcxGridDBColumn
            DataBinding.FieldName = 'product_origin'
          end
          object cxGridDBTableView1product_destination: TcxGridDBColumn
            DataBinding.FieldName = 'product_destination'
          end
          object cxGridDBTableView1product_quantity: TcxGridDBColumn
            DataBinding.FieldName = 'product_quantity'
          end
          object cxGridDBTableView1product_supplier_id: TcxGridDBColumn
            DataBinding.FieldName = 'product_supplier_id'
          end
          object cxGridDBTableView1product_owner_id: TcxGridDBColumn
            DataBinding.FieldName = 'product_owner_id'
          end
          object cxGridDBTableView1date_added: TcxGridDBColumn
            DataBinding.FieldName = 'date_added'
          end
          object cxGridDBTableView1processed: TcxGridDBColumn
            DataBinding.FieldName = 'processed'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object TabSheetNew: TTabSheet
      Caption = 'Nouvelle demande'
      Enabled = False
      ImageIndex = 2
      object PanelNewRequestTop: TPanel
        Left = 0
        Top = 0
        Width = 717
        Height = 161
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 34
          Height = 13
          Caption = 'Mod'#232'le'
        end
        object Label2: TLabel
          Left = 16
          Top = 56
          Width = 21
          Height = 13
          Caption = 'Nom'
        end
        object Label3: TLabel
          Left = 16
          Top = 96
          Width = 47
          Height = 13
          Caption = 'Cat'#233'gorie'
        end
        object LabelCategory: TLabel
          Left = 16
          Top = 112
          Width = 250
          Height = 19
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelName: TLabel
          Left = 16
          Top = 72
          Width = 250
          Height = 19
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelModel: TLabel
          Left = 16
          Top = 32
          Width = 250
          Height = 19
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 3
          Top = 142
          Width = 270
          Height = 13
          Caption = 'Double clickez sur la ligne de stock pour initier le transfer'
        end
      end
      object DBGridRequest: TDBGrid
        Left = 0
        Top = 161
        Width = 717
        Height = 299
        Align = alClient
        DataSource = DSStockExt
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGridRequestDblClick
      end
    end
  end
  object dxBarManager: TdxBarManager
    AllowReset = False
    AlwaysMerge = True
    AlwaysSaveText = True
    AutoHideEmptyBars = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'BAR DB Navigator'
      'BAR DB search'
      'BAR DB Tools'
      'BAR Languages'
      'MENU DB Tool'
      'MENU DB Navigation')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True)
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 705
    Top = 65535
    DockControlHeights = (
      0
      0
      26
      0)
    object dxBarManagerBar1: TdxBar
      AllowClose = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'MainBar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 464
      FloatTop = 357
      FloatClientWidth = 23
      FloatClientHeight = 22
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButtonPrint'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      MultiLine = True
      NotDocking = [dsLeft, dsRight, dsBottom]
      OldName = 'MainBar'
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRecentItems = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarButtonPrint: TdxBarButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      Visible = ivAlways
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FF868484868484FF00FFFF00FF868484868484FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF868484BCBABAB5B3B386848486
        8484868484EBEAEA868484868484868484FF00FFFF00FFFF00FFFF00FFFF00FF
        868484E3E2E2B5B3B3B5B3B3B5B3B35150504F4F4F868787CDCDCDE8E9E9C7C6
        C6868484868484868484FF00FF868484DEDDDDD6D6D6A4A3A3A4A3A3A4A3A356
        5555161516121212181818121212939393CACACA868484FF00FF868484D6D6D6
        D6D6D6A4A3A3E0DEDED9D7D7CDCBCBC2C0C0B6B4B49F9D9D7976771212121414
        141313138684848F8C8C868484D6D6D6A4A3A3F3F2F2FFFEFEFCFBFBEAE7E8E6
        E6E6E6E5E5DAD9D9CCCBCBBFBDBDA2A0A07371719391918E8C8C868484A4A3A3
        FFFFFFFEFDFDFBFBFBDFDEDFADA7A9B4ADAEC3BDBED1CECFE0E0E0E1E1E1D4D3
        D3C7C6C6A7A5A5868383FF00FF868484868484F1F0F0C2B9BA93898BA19B9FAB
        A8AAABA6A7B1ACADAFA9AAB2ADAECAC9C9DCDCDCD0D0D0868484FF00FFFF00FF
        FF00FF868484CAA097BA9E87A2897E95817B897C7F928C92A5A2A4BBB6B7D7D6
        D6CFCFCF868484FF00FFFF00FFFF00FFFF00FFFF00FFCC9A99FFEAC4FFDDB3EE
        C399D5AE8CC9A786CC9A99989596868484868484FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFCC9A99FFE7C8FFDDBAFFDBB1FFD9A6FFD39FCC9A99FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCE9D9BFFEDDAFFE7CEFFE2C3FF
        DDB8FFDBAECC9A99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFCC9A99FEF0E1FFECD8FFE6CCFFE1C2FEDDB7CC9A99FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFCC9A99FFFFF5FFFFF5FFF0E1FFEBD6FF
        E8CCF6D4BACC9A99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        CC9A99CC9A99CC9A99FCF3E9FCEADAFCE5D0CC9A99FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC9A99CC9A99CC
        9A99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = dxBarButtonPrintClick
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Save'
      Category = 0
      Hint = 'Save'
      Visible = ivAlways
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF97433F97433FB59A9BB59A9BB59A9BB5
        9A9BB59A9BB59A9BB59A9B93303097433FFF00FFFF00FFFF00FFFF00FF97433F
        D66868C66060E5DEDF92292A92292AE4E7E7E0E3E6D9DFE0CCC9CC8F201FAF46
        4697433FFF00FFFF00FFFF00FF97433FD06566C25F5FE9E2E292292A92292AE2
        E1E3E2E6E8DDE2E4CFCCCF8F2222AD464697433FFF00FFFF00FFFF00FF97433F
        D06565C15D5DECE4E492292A92292ADFDDDFE1E6E8E0E5E7D3D0D28A1E1EAB44
        4497433FFF00FFFF00FFFF00FF97433FD06565C15B5CEFE6E6EDE5E5E5DEDFE0
        DDDFDFE0E2E0E1E3D6D0D2962A2AB24A4A97433FFF00FFFF00FFFF00FF97433F
        CD6263C86060C96767CC7272CA7271C66969C46464CC6D6CCA6667C55D5DCD65
        6597433FFF00FFFF00FFFF00FF97433FB65553C27B78D39D9CD7A7A5D8A7A6D8
        A6A5D7A09FD5A09FD7A9A7D8ABABCC666797433FFF00FFFF00FFFF00FF97433F
        CC6667F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC66
        6797433FFF00FFFF00FFFF00FF97433FCC6667F9F9F9F9F9F9F9F9F9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC666797433FFF00FFFF00FFFF00FF97433F
        CC6667F9F9F9CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDF9F9F9CC66
        6797433FFF00FFFF00FFFF00FF97433FCC6667F9F9F9F9F9F9F9F9F9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC666797433FFF00FFFF00FFFF00FF97433F
        CC6667F9F9F9CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDF9F9F9CC66
        6797433FFF00FFFF00FFFF00FF97433FCC6667F9F9F9F9F9F9F9F9F9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC666797433FFF00FFFF00FFFF00FFFF00FF
        97433FF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F99743
        3FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = dxBarButton2Click
    end
    object dxBarSpinEditShopId: TdxBarSpinEdit
      Caption = 'Magasin destinataire'
      Category = 0
      Hint = 'Magasin destinataire'
      Visible = ivAlways
    end
    object dxBarButtonCompute: TdxBarButton
      Caption = 'Re-calculer le transfer'
      Category = 0
      Hint = 'Re-calculer le transfer'
      Visible = ivAlways
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B0000000100000000000000000000FFFF
        FF00534B8F0052498A006E587B00FF00FF007F63790086697F0084594E008A59
        4400994517009A653C00B7743B00F6BA8B00453B3300403730002E292500A660
        2100A35E2100BB702F00FBB77B00F2B07700E9AF7A00FFC28900E7B18100E2AD
        7F00F2BB8900C79A730041372E00B56B2200C0773200E2903D00DA8E4100EA9C
        4F00FEAF6300BB8B5B009F785100C4976B00FEC48B00AA835D00C4976C00C498
        6C00FFC78F00352D25003E352C00483E3400393129002B272300FE860000FB81
        0000FA800000F37F0000FA820100F6860800D7740700FA880900E57A0A00EE80
        0D00C56B0C00F3881000DA780F00EF891600E9831800EF8C1E00C9771B00FB96
        2500E0862100FB9A2D00E28A2A00BB742600F39A3800CA883E00FFAB4F00FAAB
        5200C6864100C68A4A008A603400C58B4D00FCB46500AF7F4D00BF8F59007255
        3500C495600070563B00FF880000FF880100FF8B0400FF910A00FE8C0A00FF93
        1100DE7F0F00E1831500B0681300FB951D00E0881C00E78F2800D1842700985F
        1C00A7692200FFA43500A1672300EA953400ED993500A16A2800FFAB4500FFAB
        4600A66E2E009F6C300047311600DC994C00FBB56000D1965000E3A45C006C4F
        2D00C18E5300FFC17900FFC47D00382B1C00FF971300E28E2300E3932D00E99C
        3500FFAD4200EEA34000EEA747003B2C1800362B1C00CF8923003A2D1B00EBA5
        3400E9A33400E29E3400E79F2300EAA12700DC910300E0970E00DEC68800D4C9
        9200DACF9D00D8D1A600D4D0AA00D8D4AF00D9D7B00051CBC00051CBC10050C6
        BB0074D7CE004BCBC4001427DA001C2EC6001C2FC5001F2FBD002030BD001A2A
        D400000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000050505050505
        0505050505050505050505050505050505050505050505050505050A0A0A0A0A
        0A0A0A0A0A0A0A0A0A057F74706D6866605D593734323231540A87162C2E4A71
        2F62407E80757D6C330A8717234F49476A5F440B1D361211300A87180E1C4D51
        2B67069903139598380A872627244E4B4C651F040C580809300A87192D0F5053
        106B0794021E96973C0A872A141573222169632041763E39540A871A8D8E8C8B
        8A89887A413F3B35550A871B918F8F909093926E4564615C560A850D28292925
        52726F484643423D570A0586848182837C7B7978775E5B5A3A05050505050505
        0505050505050505050505050505050505050505050505050505}
    end
    object dxBarGroup1: TdxBarGroup
      Items = ()
    end
  end
  object dxPrintDialog: TdxPrintDialog
    Left = 416
    Top = 72
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    Explorer = dxPSDBBasedExplorer1
    PreviewOptions.Caption = 'Pr'#233'visualisation'
    Version = 0
    Left = 256
    Top = 88
    object dxComponentPrinterLink1: TdxGridReportLink
      Active = True
      Component = cxGridSuggest
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42801.692289826390000000
      OptionsOnEveryPage.FilterBar = False
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
  object dxPrintStyleManager: TdxPrintStyleManager
    PageSetupDialog = dxPageSetupDialog
    Version = 0
    Left = 504
    Top = 72
  end
  object dxPageSetupDialog: TdxPageSetupDialog
    Left = 536
    Top = 72
  end
  object dxPSDBBasedExplorer1: TdxPSDBBasedExplorer
    Left = 640
    Top = 120
  end
  object dxPSEngineController: TdxPSEngineController
    Active = True
    PreviewDialogStyle = 'Ribbon'
    Left = 616
    Top = 72
  end
  object SaveDialog: TSaveDialog
    Left = 352
    Top = 72
  end
  object DPStockExt: TDataSetProvider
    Left = 1240
    Top = 272
  end
  object StockExt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPStockExt'
    Left = 1240
    Top = 320
  end
  object DSStockExt: TDataSource
    DataSet = StockExt
    Left = 1240
    Top = 368
  end
end
