﻿object DSServerModuleThinClient: TDSServerModuleThinClient
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 227
  Width = 291
  object CDSAlerts: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 16
  end
  object CDSCustomers: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 112
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
end