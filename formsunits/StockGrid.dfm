object FormStockGrid: TFormStockGrid
  Left = 0
  Top = 0
  Caption = 'Grille de Stock'
  ClientHeight = 339
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 635
    Height = 339
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 250
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = RemoteDB.StockSRC
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGrid1DBTableView1product_model: TcxGridDBColumn
        DataBinding.FieldName = 'product_model'
      end
      object cxGrid1DBTableView1product_name: TcxGridDBColumn
        DataBinding.FieldName = 'product_name'
      end
      object cxGrid1DBTableView1product_owner_id: TcxGridDBColumn
        DataBinding.FieldName = 'product_owner_id'
      end
      object cxGrid1DBTableView1product_price_stock: TcxGridDBColumn
        DataBinding.FieldName = 'product_price_stock'
      end
      object cxGrid1DBTableView1product_location: TcxGridDBColumn
        DataBinding.FieldName = 'product_location'
      end
      object cxGrid1DBTableView1product_quantity: TcxGridDBColumn
        DataBinding.FieldName = 'product_quantity'
      end
      object cxGrid1DBTableView1product_supplier_id: TcxGridDBColumn
        DataBinding.FieldName = 'product_supplier_id'
      end
      object cxGrid1DBTableView1product_date_in: TcxGridDBColumn
        DataBinding.FieldName = 'product_date_in'
      end
      object cxGrid1DBTableView1product_price_gross: TcxGridDBColumn
        DataBinding.FieldName = 'product_price_gross'
      end
      object cxGrid1DBTableView1product_isdefect: TcxGridDBColumn
        DataBinding.FieldName = 'product_isdefect'
      end
      object cxGrid1DBTableView1product_price_gross_total: TcxGridDBColumn
        DataBinding.FieldName = 'product_price_gross_total'
      end
      object cxGrid1DBTableView1product_date_in_display: TcxGridDBColumn
        DataBinding.FieldName = 'product_date_in_display'
      end
      object cxGrid1DBTableView1product_price_stock_total: TcxGridDBColumn
        DataBinding.FieldName = 'product_price_stock_total'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
