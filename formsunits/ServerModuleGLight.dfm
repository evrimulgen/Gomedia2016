object DSServerModuleRFIDPanel: TDSServerModuleRFIDPanel
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 38
  Width = 136
  object CDSAlerts: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 16
  end
  object CDSCustomers: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 16
  end
  object CDSItems_Sold: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 88
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 88
  end
  object DPCustomers: TDataSetProvider
    DataSet = CDSCustomers
    ResolveToDataSet = True
    Options = [poAutoRefresh, poPropogateChanges, poUseQuoteChar]
    Left = 192
    Top = 24
  end
end
