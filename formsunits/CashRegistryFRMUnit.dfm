object FormCashRegister: TFormCashRegister
  Left = 654
  Top = 260
  Caption = 'Tableau de caisse'
  ClientHeight = 624
  ClientWidth = 832
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Grid: TcxGrid
    Left = 0
    Top = 26
    Width = 832
    Height = 598
    Align = alClient
    Enabled = False
    TabOrder = 4
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    object Gridview: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = Source
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'Proton'
          Column = GridviewBanque
        end
        item
          Kind = skSum
          FieldName = 'BCT'
          Column = GridviewBCT
        end
        item
          Kind = skSum
          FieldName = 'Voucher'
          Column = GridviewBon
        end
        item
          Kind = skSum
          FieldName = 'Cash'
          Column = GridviewCash
        end
        item
          Kind = skSum
          FieldName = 'New'
          Column = GridviewNouveau
        end
        item
          Kind = skSum
          FieldName = 'SH'
          Column = GridviewOccasion
        end
        item
          Kind = skSum
          FieldName = 'RecId'
        end
        item
          Kind = skSum
          FieldName = 'Refunds'
          Column = GridviewRembours
        end
        item
          Kind = skSum
          FieldName = 'Returns'
          Column = GridviewRetours
        end
        item
          Kind = skSum
          FieldName = 'Serv'
          Column = GridviewServices
        end
        item
          Kind = skSum
          FieldName = 'Total'
          Column = GridviewTotal
        end
        item
          Kind = skSum
          FieldName = 'Visa'
          Column = GridviewVisa
        end
        item
          Kind = skSum
          FieldName = 'Expenses'
          Column = GridviewExpenses
        end
        item
          Kind = skSum
          FieldName = 'NEW-21'
          Column = GridviewNew21
        end
        item
          Kind = skSum
          FieldName = 'NEW-6'
          Column = GridviewNew6
        end
        item
          Kind = skSum
          FieldName = 'Depot'
          Column = GridviewDepot
        end
        item
          Kind = skSum
          FieldName = 'Rachat'
          Column = GridviewRachat
        end
        item
          Kind = skSum
          Column = GridviewINV21
        end
        item
          Kind = skSum
          Column = GridviewINV6
        end
        item
          Kind = skSum
          FieldName = 'NEW-0'
          Column = GridviewNew0
        end
        item
          Kind = skSum
          Column = GridviewINV0
        end
        item
          Kind = skSum
          Column = GridviewCostOfBought
        end
        item
          Kind = skSum
          Column = GridviewPurchases
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object GridviewNumber: TcxGridDBColumn
        DataBinding.FieldName = 'Nbr'
        SortIndex = 0
        SortOrder = soDescending
        Width = 26
      end
      object GridviewDate: TcxGridDBColumn
        DataBinding.FieldName = 'Date'
        Width = 26
      end
      object GridviewNew21: TcxGridDBColumn
        Caption = 'NEW 21'
        DataBinding.FieldName = 'NEW-21'
        Width = 34
      end
      object GridviewNew6: TcxGridDBColumn
        Caption = 'NEW 6'
        DataBinding.FieldName = 'NEW-6'
        Width = 33
      end
      object GridviewNew0: TcxGridDBColumn
        Caption = 'NEW 0'
        DataBinding.FieldName = 'NEW-0'
        Width = 33
      end
      object GridviewNouveau: TcxGridDBColumn
        Caption = 'Tot Neuf'
        DataBinding.FieldName = 'New'
        Width = 24
      end
      object GridviewDepot: TcxGridDBColumn
        Caption = 'D'#233'p'#244't'
        DataBinding.FieldName = 'Depot'
        Width = 33
      end
      object GridviewRachat: TcxGridDBColumn
        DataBinding.FieldName = 'Rachat'
        Width = 32
      end
      object GridviewCostOfBought: TcxGridDBColumn
        AlternateCaption = 'CostOfUsed'
        Caption = 'Cout des rachats'
        DataBinding.FieldName = 'CostOfBought'
        HeaderAlignmentHorz = taRightJustify
        Width = 33
      end
      object GridviewOccasion: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'SH'
        Width = 24
      end
      object GridviewServices: TcxGridDBColumn
        DataBinding.FieldName = 'Serv'
        Width = 25
      end
      object GridviewRetours: TcxGridDBColumn
        Caption = 'Tot Retours'
        DataBinding.FieldName = 'Returns'
        Width = 26
      end
      object GridviewTotal: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        Width = 23
      end
      object GridviewCash: TcxGridDBColumn
        DataBinding.FieldName = 'Cash'
        Width = 26
      end
      object GridviewBCT: TcxGridDBColumn
        DataBinding.FieldName = 'BCT'
        Width = 24
      end
      object GridviewVisa: TcxGridDBColumn
        DataBinding.FieldName = 'Visa'
        Width = 24
      end
      object GridviewBanque: TcxGridDBColumn
        DataBinding.FieldName = 'Proton'
        Width = 25
      end
      object GridviewBon: TcxGridDBColumn
        DataBinding.FieldName = 'Voucher'
        Width = 26
      end
      object GridviewRembours: TcxGridDBColumn
        DataBinding.FieldName = 'Refunds'
        Width = 24
      end
      object GridviewPurchases: TcxGridDBColumn
        Caption = 'Rachats'
        DataBinding.FieldName = 'Purchased'
        Width = 33
      end
      object GridviewExpenses: TcxGridDBColumn
        Caption = 'Sorties'
        DataBinding.FieldName = 'Expenses'
        Width = 24
      end
      object GridviewCaisse: TcxGridDBColumn
        DataBinding.FieldName = 'TotalPay'
        Width = 25
      end
      object GridviewCaisseTot: TcxGridDBColumn
        DataBinding.FieldName = 'CaisseTot'
        Width = 25
      end
      object GridviewExpensesDesc: TcxGridDBColumn
        Caption = 'Description sorties'
        DataBinding.FieldName = 'ExpensesDesc'
        Width = 149
      end
      object GridviewINV0: TcxGridDBColumn
        Caption = 'Fact 0'
        DataBinding.FieldName = 'INV-0'
        Width = 33
      end
      object GridviewINV6: TcxGridDBColumn
        Caption = 'Fact 6'
        DataBinding.FieldName = 'INV-6'
        Width = 32
      end
      object GridviewINV21: TcxGridDBColumn
        Caption = 'Fact 21'
        DataBinding.FieldName = 'INV-21'
        Width = 32
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = Gridview
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
          ItemName = 'dxBarButtonSave'
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
    object dxBarButtonSave: TdxBarButton
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
      OnClick = dxBarButtonSaveClick
    end
    object dxBarGroup1: TdxBarGroup
      Items = ()
    end
  end
  object Source: TDataSource
    DataSet = CashData
    Left = 56
    Top = 144
  end
  object SaveDialog: TSaveDialog
    Left = 128
    Top = 128
  end
  object dxPrintDialog: TdxPrintDialog
    Left = 440
    Top = 72
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    Explorer = dxPSDBBasedExplorer1
    Version = 0
    Left = 472
    Top = 72
    object dxComponentPrinterLink1: TdxGridReportLink
      Active = True
      Component = Grid
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42123.428651134260000000
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Footers = False
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
    Left = 568
    Top = 72
  end
  object CashData: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 440
    Top = 144
  end
end
