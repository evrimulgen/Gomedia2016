object RemoteDB: TRemoteDB
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 956
  Width = 1588
  object ProductsSRC: TDataSource
    DataSet = Products
    Left = 272
    Top = 380
  end
  object ManufacturersSRC: TDataSource
    DataSet = Manufacturers
    Left = 52
    Top = 696
  end
  object Tax_ClassSRC: TDataSource
    DataSet = Tax_Class
    Left = 244
    Top = 696
  end
  object CountriesSRC: TDataSource
    DataSet = Countries
    Left = 152
    Top = 696
  end
  object CategoriesSRC: TDataSource
    AutoEdit = False
    DataSet = Categories
    Left = 520
    Top = 696
  end
  object ShopsSRC: TDataSource
    DataSet = Shops
    Left = 720
    Top = 160
  end
  object SuppliersSRC: TDataSource
    DataSet = Suppliers
    Left = 808
    Top = 160
  end
  object StockSRC: TDataSource
    DataSet = Stock
    Left = 376
    Top = 160
  end
  object SalesSRC: TDataSource
    DataSet = Sales
    Left = 288
    Top = 160
  end
  object Items_SoldSRC: TDataSource
    DataSet = Items_Sold
    Left = 448
    Top = 160
  end
  object Products: TClientDataSet
    Aggregates = <>
    FileName = 'database\products.cds'
    FieldDefs = <
      item
        Name = 'products_id'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 13
        Size = 4
      end
      item
        Name = 'products_quantity'
        DataType = ftInteger
      end
      item
        Name = 'products_model'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'products_image'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'products_price'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 17
        Size = 4
      end
      item
        Name = 'products_date_added'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end
      item
        Name = 'products_weight'
        DataType = ftFMTBcd
        Precision = 7
        Size = 2
      end
      item
        Name = 'products_status'
        DataType = ftSmallint
      end
      item
        Name = 'products_tax_class_id'
        DataType = ftInteger
      end
      item
        Name = 'manufacturers_id'
        DataType = ftInteger
      end
      item
        Name = 'products_promo'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'products_street_block'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'products_stock_managed'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'products_date_available'
        DataType = ftTimeStamp
      end
      item
        Name = 'products_last_modified'
        DataType = ftTimeStamp
      end
      item
        Name = 'products_ordered'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'products_ispreview'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'products_root_category_name'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'products_isobsolete'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'products_warranty_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'products_name'
        Attributes = [faRequired]
        DataType = ftString
        Size = 64
      end
      item
        Name = 'products_name_ext'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'products_description'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'products_url'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'categories_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'ProductsIXModel'
        Fields = 'products_model'
        Options = [ixUnique]
      end
      item
        Name = 'ProductsIXId'
        Fields = 'products_id'
        Options = [ixUnique]
      end
      item
        Name = 'ProductsIXName'
        Fields = 'products_name'
      end>
    IndexName = 'ProductsIXModel'
    Params = <>
    ProviderName = 'DPProducts'
    StoreDefs = True
    AfterEdit = ProductsAfterEdit
    OnCalcFields = ProductsCalcFields
    OnNewRecord = ProductsNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 272
    Top = 332
    object Productsproducts_quantity: TIntegerField
      FieldName = 'products_quantity'
    end
    object Productsproducts_model: TStringField
      FieldName = 'products_model'
      Required = True
      OnChange = Productsproducts_modelChange
      Size = 15
    end
    object Productsproducts_image: TStringField
      FieldName = 'products_image'
      Size = 64
    end
    object Productsproducts_price: TFMTBCDField
      FieldName = 'products_price'
      Required = True
      Precision = 17
      Size = 4
    end
    object Productsproducts_date_added: TSQLTimeStampField
      FieldName = 'products_date_added'
      Required = True
    end
    object Productsproducts_status: TSmallintField
      FieldName = 'products_status'
    end
    object Productsproducts_tax_class_id: TIntegerField
      FieldName = 'products_tax_class_id'
    end
    object Productsmanufacturers_id: TIntegerField
      FieldName = 'manufacturers_id'
      OnChange = Productsmanufacturers_idChange
    end
    object Productsproducts_promo: TStringField
      FieldName = 'products_promo'
      Size = 5
    end
    object Productsproducts_stock_managed: TStringField
      FieldName = 'products_stock_managed'
      Size = 5
    end
    object Productsproducts_date_available: TSQLTimeStampField
      FieldName = 'products_date_available'
    end
    object Productsproducts_last_modified: TSQLTimeStampField
      FieldName = 'products_last_modified'
    end
    object Productsproducts_ordered: TIntegerField
      FieldName = 'products_ordered'
      Required = True
    end
    object Productsproducts_ispreview: TStringField
      FieldName = 'products_ispreview'
      Required = True
      Size = 5
    end
    object Productsproducts_root_category_name: TStringField
      FieldName = 'products_root_category_name'
      Size = 32
    end
    object Productsproducts_isobsolete: TStringField
      FieldName = 'products_isobsolete'
      Required = True
      Size = 5
    end
    object Productsproducts_warranty_id: TIntegerField
      FieldName = 'products_warranty_id'
      Required = True
    end
    object Productsproducts_name: TStringField
      FieldName = 'products_name'
      Required = True
      Size = 64
    end
    object Productsproducts_name_ext: TStringField
      FieldName = 'products_name_ext'
      Size = 64
    end
    object Productsproducts_description: TMemoField
      FieldName = 'products_description'
      BlobType = ftMemo
      Size = 1
    end
    object Productsproducts_url: TStringField
      FieldName = 'products_url'
      Size = 255
    end
    object Productscategories_id: TIntegerField
      FieldName = 'categories_id'
      Required = True
      OnChange = Productscategories_idChange
    end
    object Productsproducts_price_allin: TFloatField
      FieldKind = fkCalculated
      FieldName = 'products_price_allin'
      Calculated = True
    end
    object Productsproducts_street_block: TStringField
      FieldName = 'products_street_block'
      Required = True
      Size = 5
    end
    object Productsproducts_id: TFMTBCDField
      FieldName = 'products_id'
      Required = True
      Precision = 13
      Size = 0
    end
    object Productsproducts_weight: TFMTBCDField
      FieldName = 'products_weight'
      Precision = 7
      Size = 2
    end
    object Productsproducts_active: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'products_active'
      OnSetText = Productsproducts_activeSetText
      Calculated = True
    end
  end
  object Manufacturers: TClientDataSet
    Aggregates = <>
    FileName = 'database\manufacturers.cds'
    FieldDefs = <
      item
        Name = 'manufacturers_id'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'manufacturers_name'
        DataType = ftWideString
        Size = 96
      end
      item
        Name = 'manufacturers_image'
        DataType = ftWideString
        Size = 192
      end
      item
        Name = 'date_added'
        DataType = ftTimeStamp
      end
      item
        Name = 'last_modified'
        DataType = ftTimeStamp
      end
      item
        Name = 'manufacturers_url'
        DataType = ftWideString
        Size = 192
      end
      item
        Name = 'manufacturers_ean_prefix'
        DataType = ftWideString
        Size = 45
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
        Fields = 'manufacturers_id'
        Options = [ixUnique]
      end
      item
        Name = 'CHANGEINDEX'
      end
      item
        Name = 'ManufacturersIxname'
        Fields = 'manufacturers_name'
        Options = [ixCaseInsensitive]
      end>
    IndexFieldNames = 'manufacturers_name'
    Params = <>
    ProviderName = 'DPmanufacturers'
    ReadOnly = True
    StoreDefs = True
    OnReconcileError = GeneralReconcileError
    Left = 52
    Top = 648
    object Manufacturersmanufacturers_id: TIntegerField
      FieldName = 'manufacturers_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Manufacturersmanufacturers_name: TStringField
      FieldName = 'manufacturers_name'
      Required = True
      Size = 32
    end
    object Manufacturersmanufacturers_image: TStringField
      FieldName = 'manufacturers_image'
      Size = 64
    end
    object Manufacturersmanufacturers_url: TStringField
      FieldName = 'manufacturers_url'
      Size = 64
    end
    object Manufacturersmanufacturers_ean_prefix: TStringField
      FieldName = 'manufacturers_ean_prefix'
      Size = 10
    end
  end
  object Shops: TClientDataSet
    Aggregates = <>
    FileName = 'database\shops.cds'
    FieldDefs = <
      item
        Name = 'shops_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'shops_name'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'shops_customers_id'
        DataType = ftInteger
      end
      item
        Name = 'shops_title'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'shops_adress_one'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'shops_adress_two'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'shops_phone'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'shops_map_url'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'shops_schedule_1'
        DataType = ftString
        Size = 17
      end
      item
        Name = 'shops_schedule_2'
        DataType = ftString
        Size = 17
      end
      item
        Name = 'shops_schedule_3'
        DataType = ftString
        Size = 17
      end
      item
        Name = 'shops_schedule_4'
        DataType = ftString
        Size = 17
      end
      item
        Name = 'shops_schedule_5'
        DataType = ftString
        Size = 17
      end
      item
        Name = 'shops_schedule_6'
        DataType = ftString
        Size = 17
      end
      item
        Name = 'shops_schedule_7'
        DataType = ftString
        Size = 17
      end
      item
        Name = 'shops_manager_name'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'shops_manager_email'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'shops_picture_url'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'shops_zone_id'
        DataType = ftInteger
      end
      item
        Name = 'shops_country_id'
        DataType = ftInteger
      end
      item
        Name = 'shops_logo_url'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'shops_group_id'
        DataType = ftInteger
      end
      item
        Name = 'shops_details'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'shops_TVA'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'shops_registry'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'shops_bank'
        DataType = ftString
        Size = 32
      end>
    IndexDefs = <
      item
        Name = 'ShopsIXId'
        Fields = 'shops_id'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'ShopsIXId'
    Params = <>
    ProviderName = 'DPshops'
    ReadOnly = True
    StoreDefs = True
    OnReconcileError = GeneralReconcileError
    Left = 720
    Top = 112
    object Shopsshops_id: TIntegerField
      FieldName = 'shops_id'
      Required = True
    end
    object Shopsshops_name: TStringField
      FieldName = 'shops_name'
      Size = 50
    end
    object Shopsshops_customers_id: TIntegerField
      FieldName = 'shops_customers_id'
    end
    object Shopsshops_title: TStringField
      FieldName = 'shops_title'
      Size = 50
    end
    object Shopsshops_adress_one: TStringField
      FieldName = 'shops_adress_one'
      Size = 50
    end
    object Shopsshops_adress_two: TStringField
      FieldName = 'shops_adress_two'
      Size = 50
    end
    object Shopsshops_phone: TStringField
      FieldName = 'shops_phone'
    end
    object Shopsshops_map_url: TMemoField
      FieldName = 'shops_map_url'
      BlobType = ftMemo
      Size = 1
    end
    object Shopsshops_schedule_1: TStringField
      FieldName = 'shops_schedule_1'
      Size = 17
    end
    object Shopsshops_schedule_2: TStringField
      FieldName = 'shops_schedule_2'
      Size = 17
    end
    object Shopsshops_schedule_3: TStringField
      FieldName = 'shops_schedule_3'
      Size = 17
    end
    object Shopsshops_schedule_4: TStringField
      FieldName = 'shops_schedule_4'
      Size = 17
    end
    object Shopsshops_schedule_5: TStringField
      FieldName = 'shops_schedule_5'
      Size = 17
    end
    object Shopsshops_schedule_6: TStringField
      FieldName = 'shops_schedule_6'
      Size = 17
    end
    object Shopsshops_schedule_7: TStringField
      FieldName = 'shops_schedule_7'
      Size = 17
    end
    object Shopsshops_manager_name: TStringField
      FieldName = 'shops_manager_name'
      Size = 30
    end
    object Shopsshops_manager_email: TStringField
      FieldName = 'shops_manager_email'
      Size = 30
    end
    object Shopsshops_picture_url: TStringField
      FieldName = 'shops_picture_url'
      Size = 50
    end
    object Shopsshops_zone_id: TIntegerField
      FieldName = 'shops_zone_id'
    end
    object Shopsshops_country_id: TIntegerField
      FieldName = 'shops_country_id'
    end
    object Shopsshops_logo_url: TStringField
      FieldName = 'shops_logo_url'
      Size = 50
    end
    object Shopsshops_group_id: TIntegerField
      FieldName = 'shops_group_id'
    end
    object Shopsshops_details: TMemoField
      FieldName = 'shops_details'
      BlobType = ftMemo
      Size = 1
    end
    object Shopsshops_TVA: TStringField
      FieldName = 'shops_TVA'
      Size = 32
    end
    object Shopsshops_registry: TStringField
      FieldName = 'shops_registry'
      Size = 32
    end
    object Shopsshops_bank: TStringField
      FieldName = 'shops_bank'
      Size = 32
    end
  end
  object Suppliers: TClientDataSet
    Aggregates = <>
    FileName = 'database\suppliers.cds'
    FieldDefs = <
      item
        Name = 'Suppliers_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Suppliers_Name'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'SuppliersIXName'
        Fields = 'suppliers_name'
      end>
    IndexName = 'SuppliersIXName'
    Params = <>
    ProviderName = 'DPsuppliers'
    ReadOnly = True
    StoreDefs = True
    OnReconcileError = GeneralReconcileError
    Left = 808
    Top = 112
    object SuppliersSuppliers_id: TIntegerField
      FieldName = 'Suppliers_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SuppliersSuppliers_Name: TStringField
      FieldName = 'Suppliers_Name'
      Size = 30
    end
  end
  object Tax_Class: TClientDataSet
    Aggregates = <>
    FileName = 'database\tax_class.cds'
    FieldDefs = <
      item
        Name = 'tax_class_id'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'tax_class_title'
        DataType = ftWideString
        Size = 96
      end
      item
        Name = 'tax_class_description'
        DataType = ftWideString
        Size = 765
      end
      item
        Name = 'last_modified'
        DataType = ftTimeStamp
      end
      item
        Name = 'date_added'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end>
    IndexDefs = <
      item
        Name = 'Tax_ClassIXId'
        Fields = 'tax_class_id'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'Tax_ClassIXId'
    Params = <>
    ProviderName = 'DPtax_class'
    ReadOnly = True
    StoreDefs = True
    OnReconcileError = GeneralReconcileError
    Left = 244
    Top = 648
    object Tax_Classtax_class_id: TIntegerField
      FieldName = 'tax_class_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Tax_Classtax_class_title: TStringField
      FieldName = 'tax_class_title'
      Required = True
      Size = 32
    end
    object Tax_Classtax_class_description: TStringField
      FieldName = 'tax_class_description'
      Required = True
      Size = 255
    end
    object Tax_Classlast_modified: TSQLTimeStampField
      FieldName = 'last_modified'
      Required = True
    end
    object Tax_Classdate_added: TSQLTimeStampField
      FieldName = 'date_added'
      Required = True
    end
  end
  object Countries: TClientDataSet
    Aggregates = <>
    FileName = 'database\countries.cds'
    FieldDefs = <
      item
        Name = 'countries_id'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'countries_name'
        DataType = ftWideString
        Size = 192
      end
      item
        Name = 'countries_iso_code_2'
        DataType = ftWideString
        Size = 6
      end
      item
        Name = 'countries_iso_code_3'
        DataType = ftWideString
        Size = 9
      end
      item
        Name = 'address_format_id'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DPcountries'
    ReadOnly = True
    StoreDefs = True
    OnReconcileError = GeneralReconcileError
    Left = 152
    Top = 648
    object Countriescountries_id: TIntegerField
      FieldName = 'countries_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Countriescountries_name: TStringField
      FieldName = 'countries_name'
      Required = True
      Size = 64
    end
    object Countriescountries_iso_code_2: TStringField
      FieldName = 'countries_iso_code_2'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Countriescountries_iso_code_3: TStringField
      FieldName = 'countries_iso_code_3'
      Required = True
      FixedChar = True
      Size = 3
    end
    object Countriesaddress_format_id: TIntegerField
      FieldName = 'address_format_id'
      Required = True
    end
  end
  object Stock: TClientDataSet
    Aggregates = <>
    FileName = 'database\stock.cds'
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'product_model'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'product_name'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'product_owner_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'product_price_stock'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'product_location'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'product_quantity'
        DataType = ftInteger
      end
      item
        Name = 'product_supplier_id'
        DataType = ftInteger
      end
      item
        Name = 'product_date_in'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'product_price_gross'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'product_isdefect'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'StockIXModelLocation'
        Fields = 'product_model;product_location'
      end
      item
        Name = 'StockIXModelOwner'
        Fields = 'product_model;product_owner_id'
      end
      item
        Name = 'StockIXId'
        Fields = 'id'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'StockIXModelDate'
        Fields = 'product_model;product_date_in'
      end
      item
        Name = 'StockIXOwner'
        Fields = 'product_owner_id'
      end
      item
        Name = 'StockIXModelOwnerSupplier'
        Fields = 'product_model;product_owner_id;product_supplier_id'
      end
      item
        Name = 'StockIXSupplier'
        Fields = 'product_supplier_id'
      end>
    IndexName = 'StockIXId'
    Params = <>
    ProviderName = 'DPstock'
    StoreDefs = True
    OnCalcFields = StockCalcFields
    OnNewRecord = StockNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 376
    Top = 112
    object Stockid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Stockproduct_model: TStringField
      FieldName = 'product_model'
      Required = True
      Size = 15
    end
    object Stockproduct_name: TStringField
      FieldName = 'product_name'
      Size = 32
    end
    object Stockproduct_owner_id: TIntegerField
      FieldName = 'product_owner_id'
      Required = True
    end
    object Stockproduct_price_stock: TFMTBCDField
      FieldName = 'product_price_stock'
      Precision = 10
      Size = 2
    end
    object Stockproduct_location: TIntegerField
      FieldName = 'product_location'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Stockproduct_quantity: TIntegerField
      FieldName = 'product_quantity'
    end
    object Stockproduct_supplier_id: TIntegerField
      FieldName = 'product_supplier_id'
    end
    object Stockproduct_date_in: TStringField
      FieldName = 'product_date_in'
      Size = 8
    end
    object Stockproduct_price_gross: TFMTBCDField
      FieldName = 'product_price_gross'
      Precision = 10
      Size = 2
    end
    object Stockproduct_isdefect: TIntegerField
      FieldName = 'product_isdefect'
      Required = True
    end
    object Stockproduct_price_gross_total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'product_price_gross_total'
      Calculated = True
    end
    object Stockproduct_date_in_display: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'product_date_in_display'
      Calculated = True
    end
    object Stockproduct_price_stock_total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'product_price_stock_total'
      Calculated = True
    end
  end
  object Categories: TClientDataSet
    Aggregates = <>
    FileName = 'database\categories.cds'
    FieldDefs = <
      item
        Name = 'categories_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'categories_image'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'parent_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'sort_order'
        DataType = ftInteger
      end
      item
        Name = 'date_added'
        DataType = ftTimeStamp
      end
      item
        Name = 'last_modified'
        DataType = ftTimeStamp
      end
      item
        Name = 'show_in_news'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'categories_icon_url'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'language_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'categories_name'
        Attributes = [faRequired]
        DataType = ftString
        Size = 32
      end>
    IndexDefs = <
      item
        Name = 'CategoriesIXId'
        Fields = 'categories_id'
      end>
    Params = <>
    ProviderName = 'DPCategories'
    ReadOnly = True
    StoreDefs = True
    OnReconcileError = GeneralReconcileError
    Left = 520
    Top = 648
    object Categoriescategories_id: TIntegerField
      FieldName = 'categories_id'
      Required = True
    end
    object Categoriescategories_image: TStringField
      FieldName = 'categories_image'
      Size = 64
    end
    object Categoriesparent_id: TIntegerField
      FieldName = 'parent_id'
      Required = True
    end
    object Categoriessort_order: TIntegerField
      FieldName = 'sort_order'
    end
    object Categoriesdate_added: TSQLTimeStampField
      FieldName = 'date_added'
    end
    object Categorieslast_modified: TSQLTimeStampField
      FieldName = 'last_modified'
    end
    object Categoriesshow_in_news: TStringField
      FieldName = 'show_in_news'
      FixedChar = True
      Size = 3
    end
    object Categoriescategories_icon_url: TStringField
      FieldName = 'categories_icon_url'
      Size = 64
    end
    object Categorieslanguage_id: TIntegerField
      FieldName = 'language_id'
      Required = True
    end
    object Categoriescategories_name: TStringField
      FieldName = 'categories_name'
      Required = True
      Size = 32
    end
  end
  object DPcategories: TDataSetProvider
    DataSet = SQLDSCategories
    Left = 520
    Top = 600
  end
  object DPmanufacturers: TDataSetProvider
    DataSet = SQLDSManufacturers
    Left = 56
    Top = 600
  end
  object DPcountries: TDataSetProvider
    DataSet = SQLDSCountries
    Left = 152
    Top = 600
  end
  object DPsuppliers: TDataSetProvider
    DataSet = SQLDSSuppliers
    Left = 808
    Top = 64
  end
  object DPstock: TDataSetProvider
    DataSet = SQLDSStock
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DPstockBeforeUpdateRecord
    Left = 376
    Top = 64
  end
  object DPshops: TDataSetProvider
    DataSet = SQLDSShops
    Left = 720
    Top = 64
  end
  object DPtax_class: TDataSetProvider
    DataSet = SQLDSTax_Class
    Left = 244
    Top = 600
  end
  object SQLDSCategories: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select c.categories_id, c.categories_image, c.parent_id, c.sort_' +
      'order, c.date_added, c.last_modified, c.show_in_news, c.categori' +
      'es_icon_url, cd.language_id, cd.categories_name from categories ' +
      'c, categories_description cd where c.categories_id=cd.categories' +
      '_id and cd.language_id=1'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 520
    Top = 552
  end
  object SQLDSManufacturers: TSQLDataSet
    GetMetadata = False
    CommandText = 'manufacturers'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 52
    Top = 552
  end
  object SQLDSShops: TSQLDataSet
    GetMetadata = False
    CommandText = 'Select * from netshop_shops where shops_group_id = :shopgroupid'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'shopgroupid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 720
    Top = 16
    object SQLDSShopsshops_id: TIntegerField
      FieldName = 'shops_id'
      Required = True
    end
    object SQLDSShopsshops_name: TStringField
      FieldName = 'shops_name'
      Size = 50
    end
    object SQLDSShopsshops_customers_id: TIntegerField
      FieldName = 'shops_customers_id'
    end
    object SQLDSShopsshops_title: TStringField
      FieldName = 'shops_title'
      Size = 50
    end
    object SQLDSShopsshops_adress_one: TStringField
      FieldName = 'shops_adress_one'
      Size = 50
    end
    object SQLDSShopsshops_adress_two: TStringField
      FieldName = 'shops_adress_two'
      Size = 50
    end
    object SQLDSShopsshops_phone: TStringField
      FieldName = 'shops_phone'
    end
    object SQLDSShopsshops_map_url: TMemoField
      FieldName = 'shops_map_url'
      BlobType = ftMemo
      Size = 1
    end
    object SQLDSShopsshops_schedule_1: TStringField
      FieldName = 'shops_schedule_1'
      Size = 17
    end
    object SQLDSShopsshops_schedule_2: TStringField
      FieldName = 'shops_schedule_2'
      Size = 17
    end
    object SQLDSShopsshops_schedule_3: TStringField
      FieldName = 'shops_schedule_3'
      Size = 17
    end
    object SQLDSShopsshops_schedule_4: TStringField
      FieldName = 'shops_schedule_4'
      Size = 17
    end
    object SQLDSShopsshops_schedule_5: TStringField
      FieldName = 'shops_schedule_5'
      Size = 17
    end
    object SQLDSShopsshops_schedule_6: TStringField
      FieldName = 'shops_schedule_6'
      Size = 17
    end
    object SQLDSShopsshops_schedule_7: TStringField
      FieldName = 'shops_schedule_7'
      Size = 17
    end
    object SQLDSShopsshops_manager_name: TStringField
      FieldName = 'shops_manager_name'
      Size = 30
    end
    object SQLDSShopsshops_manager_email: TStringField
      FieldName = 'shops_manager_email'
      Size = 30
    end
    object SQLDSShopsshops_picture_url: TStringField
      FieldName = 'shops_picture_url'
      Size = 50
    end
    object SQLDSShopsshops_zone_id: TIntegerField
      FieldName = 'shops_zone_id'
    end
    object SQLDSShopsshops_country_id: TIntegerField
      FieldName = 'shops_country_id'
    end
    object SQLDSShopsshops_logo_url: TStringField
      FieldName = 'shops_logo_url'
      Size = 50
    end
    object SQLDSShopsshops_group_id: TIntegerField
      FieldName = 'shops_group_id'
    end
    object SQLDSShopsshops_details: TMemoField
      FieldName = 'shops_details'
      BlobType = ftMemo
      Size = 1
    end
    object SQLDSShopsshops_TVA: TStringField
      FieldName = 'shops_TVA'
      Size = 32
    end
    object SQLDSShopsshops_registry: TStringField
      FieldName = 'shops_registry'
      Size = 32
    end
    object SQLDSShopsshops_bank: TStringField
      FieldName = 'shops_bank'
      Size = 32
    end
  end
  object SQLDSSuppliers: TSQLDataSet
    GetMetadata = False
    CommandText = 'netshop_suppliers'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 808
    Top = 16
  end
  object SQLDSTax_Class: TSQLDataSet
    GetMetadata = False
    CommandText = 'tax_class'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 244
    Top = 552
  end
  object SQLDSCountries: TSQLDataSet
    GetMetadata = False
    CommandText = 'countries'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 152
    Top = 552
  end
  object SQLDSTransfer: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from netshop_transfer where product_destination=:shopid'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'shopid'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end>
    SQLConnection = SQLConnection
    Left = 648
    Top = 224
  end
  object DPTransfer: TDataSetProvider
    DataSet = SQLDSTransfer
    Left = 648
    Top = 272
  end
  object Transfer: TClientDataSet
    Aggregates = <>
    FileName = 'database\transfer.cds'
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'product_model'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'product_owner_id'
        DataType = ftInteger
      end
      item
        Name = 'product_price_stock'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'product_origin'
        DataType = ftInteger
      end
      item
        Name = 'product_destination'
        DataType = ftInteger
      end
      item
        Name = 'product_quantity'
        DataType = ftInteger
      end
      item
        Name = 'product_supplier_id'
        DataType = ftInteger
      end
      item
        Name = 'product_date_in'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'product_price_gross'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DPTransfer'
    StoreDefs = True
    OnNewRecord = TransferNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 648
    Top = 320
    object Transferid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object Transferproduct_model: TStringField
      FieldName = 'product_model'
      Size = 15
    end
    object Transferproduct_owner_id: TIntegerField
      FieldName = 'product_owner_id'
    end
    object Transferproduct_origin: TIntegerField
      FieldName = 'product_origin'
    end
    object Transferproduct_destination: TIntegerField
      FieldName = 'product_destination'
    end
    object Transferproduct_quantity: TIntegerField
      FieldName = 'product_quantity'
    end
    object Transferproduct_supplier_id: TIntegerField
      FieldName = 'product_supplier_id'
    end
    object Transferproduct_date_in: TStringField
      FieldName = 'product_date_in'
      Size = 8
    end
    object Transferproduct_price_stock: TFMTBCDField
      FieldName = 'product_price_stock'
      Precision = 10
      Size = 2
    end
    object Transferproduct_price_gross: TFMTBCDField
      FieldName = 'product_price_gross'
      Precision = 10
      Size = 2
    end
  end
  object SQLDSProducts: TSQLDataSet
    SchemaName = 'c_smartoys'
    GetMetadata = False
    CommandText = 
      'SELECT '#13#10'p.products_id, '#13#10'p.products_quantity, '#13#10'p.products_mode' +
      'l, '#13#10'p.products_image, '#13#10'p.products_price, '#13#10'p.products_date_add' +
      'ed, '#13#10'p.products_weight, '#13#10'p.products_status, '#13#10'p.products_tax_c' +
      'lass_id, '#13#10'p.manufacturers_id, p.products_promo,p.products_stree' +
      't_block, p.products_stock_managed, p.products_date_available, p.' +
      'products_last_modified, p.products_ordered, p.products_ispreview' +
      ', p.products_root_category_name, p.products_isobsolete, p.produc' +
      'ts_warranty_id, pd.products_name, pd.products_name_ext, pd.produ' +
      'cts_description, pd.products_url, p2c.categories_id FROM product' +
      's p, products_description pd, products_to_categories p2c WHERE (' +
      'p.products_id = pd.products_id) and (p.products_id=p2c.products_' +
      'id) and (pd.language_id = 1)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 272
    Top = 236
  end
  object DPProducts: TDataSetProvider
    DataSet = SQLDSProducts
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DPProductsBeforeUpdateRecord
    Left = 272
    Top = 284
  end
  object CustomersSRC: TDataSource
    AutoEdit = False
    DataSet = Customers
    Left = 364
    Top = 384
  end
  object SQLDSSales: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select * from netshop_sales  where ( sales_location = :shopid an' +
      'd ( ( sales_id = 0 ) or (sales_date_time > :datelimit and sales_' +
      'date_time < 999999 )))'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'shopid'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'datelimit'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 288
    Top = 16
  end
  object DPSales: TDataSetProvider
    DataSet = SQLDSSales
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DPSalesBeforeUpdateRecord
    Left = 288
    Top = 64
  end
  object Sales: TClientDataSet
    Aggregates = <>
    FileName = 'database\sales.cds'
    FieldDefs = <
      item
        Name = 'sales_date_time'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'sales_paid_cash'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'sales_paid_bct'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'sales_paid_proton'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'sales_paid_visa'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'sales_paid_voucher'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'sales_customer_id'
        DataType = ftInteger
      end
      item
        Name = 'sales_location'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'sales_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'SalesIXLocationId'
        Fields = 'sales_location;sales_id'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'SalesIXDateTime'
        Fields = 'sales_date_time'
      end
      item
        Name = 'SalesIXCustomers'
        DescFields = 'sales_date_time'
        Fields = 'sales_customer_id;sales_date_time'
        Options = [ixDescending]
      end>
    IndexName = 'SalesIXLocationId'
    Params = <>
    ProviderName = 'DPSales'
    StoreDefs = True
    AfterOpen = SalesAfterOpen
    OnCalcFields = SalesCalcFields
    OnNewRecord = SalesNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 288
    Top = 112
    object Salessales_location: TIntegerField
      FieldName = 'sales_location'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Salessales_id: TIntegerField
      FieldName = 'sales_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Salessales_date_time: TFloatField
      DisplayWidth = 15
      FieldName = 'sales_date_time'
      Required = True
    end
    object Salessales_date_time_value: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'sales_date_time_value'
      Calculated = True
    end
    object Salessales_customer_id: TIntegerField
      FieldName = 'sales_customer_id'
    end
    object Salessales_paid_total: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'sales_paid_total'
      DisplayFormat = '#0.00'
      Calculated = True
    end
    object Salessales_paid_htva: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'sales_paid_htva'
      DisplayFormat = '#0.00'
      Calculated = True
    end
    object Salessales_paid_tva: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'sales_paid_tva'
      DisplayFormat = '#0.00'
      Calculated = True
    end
    object Salessales_paid_cash: TFMTBCDField
      FieldName = 'sales_paid_cash'
      Precision = 10
      Size = 2
    end
    object Salessales_paid_bct: TFMTBCDField
      FieldName = 'sales_paid_bct'
      Precision = 10
      Size = 2
    end
    object Salessales_paid_proton: TFMTBCDField
      FieldName = 'sales_paid_proton'
      Precision = 10
      Size = 2
    end
    object Salessales_paid_visa: TFMTBCDField
      FieldName = 'sales_paid_visa'
      Precision = 10
      Size = 2
    end
    object Salessales_paid_voucher: TFMTBCDField
      FieldName = 'sales_paid_voucher'
      Precision = 10
      Size = 2
    end
  end
  object SQLDSSuppliersStock: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select * from netshop_suppliers_stock where shop_group_id = :sho' +
      'pid'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'shopid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 752
    Top = 224
  end
  object DPSuppliersStock: TDataSetProvider
    DataSet = SQLDSSuppliersStock
    BeforeUpdateRecord = DPSuppliersStockBeforeUpdateRecord
    Left = 752
    Top = 272
  end
  object SuppliersStock: TClientDataSet
    Aggregates = <>
    FileName = 'database\suppliersStock.cds'
    IndexFieldNames = 'suppliers_id;products_model'
    Params = <>
    ProviderName = 'DPSuppliersStock'
    OnNewRecord = SuppliersStockNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 752
    Top = 320
    object SuppliersStocksuppliers_id: TIntegerField
      FieldName = 'suppliers_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SuppliersStockproducts_model: TStringField
      FieldName = 'products_model'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object SuppliersStockshop_group_id: TIntegerField
      FieldName = 'shop_group_id'
      Required = True
    end
    object SuppliersStocksuppliers_price: TFMTBCDField
      FieldName = 'suppliers_price'
      Precision = 10
      Size = 2
    end
  end
  object Inventory: TClientDataSet
    Aggregates = <>
    FileName = 'database\inventory.cds'
    FieldDefs = <
      item
        Name = 'product_quantity'
        DataType = ftInteger
      end
      item
        Name = 'product_model'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'product_owner_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'product_price_stock'
        DataType = ftBCD
        Precision = 10
        Size = 2
      end
      item
        Name = 'product_location'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'inventory_id'
        DataType = ftInteger
      end
      item
        Name = 'product_price_gross'
        DataType = ftFloat
      end
      item
        Name = 'product_name'
        DataType = ftString
        Size = 32
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnCalcFields = InventoryCalcFields
    Left = 852
    Top = 232
    object Inventoryproduct_quantity: TIntegerField
      FieldName = 'product_quantity'
    end
    object Inventoryproduct_model: TStringField
      FieldName = 'product_model'
      Required = True
      Size = 15
    end
    object Inventoryproduct_owner_id: TIntegerField
      FieldName = 'product_owner_id'
      Required = True
    end
    object Inventoryproduct_price_stock: TBCDField
      FieldName = 'product_price_stock'
      Precision = 10
      Size = 2
    end
    object Inventoryproduct_location: TIntegerField
      FieldName = 'product_location'
      Required = True
    end
    object Inventoryinventory_id: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'inventory_id'
    end
    object Inventoryproduct_price_gross: TFloatField
      FieldName = 'product_price_gross'
    end
    object Inventoryproduct_name: TStringField
      FieldName = 'product_name'
      Size = 32
    end
    object Inventoryproduct_price_gross_total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'product_price_gross_total'
      Calculated = True
    end
  end
  object InventorySRC: TDataSource
    DataSet = Inventory
    Left = 852
    Top = 280
  end
  object InventoryErrors: TClientDataSet
    Aggregates = <>
    FileName = 'database\inventory_errors.cds'
    FieldDefs = <
      item
        Name = 'product_model'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'product_owner_id'
        DataType = ftInteger
      end
      item
        Name = 'product_price_stock'
        DataType = ftBCD
        Precision = 10
        Size = 2
      end
      item
        Name = 'product_location'
        DataType = ftInteger
      end
      item
        Name = 'product_quantity'
        DataType = ftInteger
      end
      item
        Name = 'product_supplier_id'
        DataType = ftInteger
      end
      item
        Name = 'product_date_in'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'product_price_gross'
        DataType = ftBCD
        Precision = 10
        Size = 2
      end
      item
        Name = 'product_name'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnCalcFields = InventoryErrorsCalcFields
    Left = 940
    Top = 232
    object InventoryErrorsproduct_model: TStringField
      FieldName = 'product_model'
      Size = 15
    end
    object InventoryErrorsproduct_owner_id: TIntegerField
      FieldName = 'product_owner_id'
    end
    object InventoryErrorsproduct_price_stock: TBCDField
      FieldName = 'product_price_stock'
      Precision = 10
      Size = 2
    end
    object InventoryErrorsproduct_location: TIntegerField
      FieldName = 'product_location'
    end
    object InventoryErrorsproduct_quantity: TIntegerField
      FieldName = 'product_quantity'
    end
    object InventoryErrorsproduct_supplier_id: TIntegerField
      FieldName = 'product_supplier_id'
    end
    object InventoryErrorsproduct_date_in: TStringField
      FieldName = 'product_date_in'
      Size = 8
    end
    object InventoryErrorsproduct_price_gross: TBCDField
      FieldName = 'product_price_gross'
      Precision = 10
      Size = 2
    end
    object InventoryErrorsproduct_name: TStringField
      FieldName = 'product_name'
    end
    object InventoryErrorsproduct_price_gross_total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'product_price_gross_total'
      Calculated = True
    end
  end
  object InventoryErrorsSRC: TDataSource
    DataSet = InventoryErrors
    Left = 940
    Top = 280
  end
  object SQLDSItemsSold: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select * from netshop_items_sold where (items_sold_sales_locatio' +
      'n = :shopid) and (((items_sold_sales_id >= :sales_id_min))or(ite' +
      'ms_sold_sales_id = 0))'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'shopid'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'sales_id_min'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end>
    SQLConnection = SQLConnection
    Left = 452
    Top = 16
    object SQLDSItemsSolditems_sold_id: TIntegerField
      FieldName = 'items_sold_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSItemsSolditems_sold_sales_location: TIntegerField
      FieldName = 'items_sold_sales_location'
      Required = True
    end
    object SQLDSItemsSolditems_sold_sales_id: TIntegerField
      FieldName = 'items_sold_sales_id'
      Required = True
    end
    object SQLDSItemsSolditems_sold_model: TStringField
      FieldName = 'items_sold_model'
      Size = 15
    end
    object SQLDSItemsSolditems_sold_name: TStringField
      FieldName = 'items_sold_name'
      Size = 32
    end
    object SQLDSItemsSolditems_sold_quantity: TIntegerField
      FieldName = 'items_sold_quantity'
    end
    object SQLDSItemsSolditems_sold_owner_id: TIntegerField
      FieldName = 'items_sold_owner_id'
      Required = True
    end
    object SQLDSItemsSolditems_sold_supplier_id: TIntegerField
      FieldName = 'items_sold_supplier_id'
    end
    object SQLDSItemsSolditems_sold_date_in: TStringField
      FieldName = 'items_sold_date_in'
      Size = 8
    end
    object SQLDSItemsSolditems_refunded: TIntegerField
      FieldName = 'items_refunded'
    end
    object SQLDSItemsSolditems_sold_price_gross: TFMTBCDField
      FieldName = 'items_sold_price_gross'
      Precision = 10
      Size = 2
    end
    object SQLDSItemsSolditems_sold_price_ht: TFMTBCDField
      FieldName = 'items_sold_price_ht'
      Precision = 10
      Size = 2
    end
    object SQLDSItemsSolditems_sold_price_catalog: TFMTBCDField
      FieldName = 'items_sold_price_catalog'
      Precision = 10
      Size = 2
    end
    object SQLDSItemsSolditems_sold_price_stock: TFMTBCDField
      FieldName = 'items_sold_price_stock'
      Precision = 10
      Size = 2
    end
  end
  object DPItemsSold: TDataSetProvider
    DataSet = SQLDSItemsSold
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DPItemsSoldBeforeUpdateRecord
    Left = 452
    Top = 64
  end
  object Items_Sold: TClientDataSet
    Aggregates = <>
    FileName = 'database\items_sold.cds'
    FieldDefs = <
      item
        Name = 'items_sold_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'items_sold_sales_location'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'items_sold_sales_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'items_sold_model'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'items_sold_name'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'items_sold_quantity'
        DataType = ftInteger
      end
      item
        Name = 'items_sold_owner_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'items_sold_supplier_id'
        DataType = ftInteger
      end
      item
        Name = 'items_sold_date_in'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'items_refunded'
        DataType = ftInteger
      end
      item
        Name = 'items_sold_price_gross'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'items_sold_price_ht'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'items_sold_price_catalog'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'items_sold_price_stock'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'ItemsIXId'
        Fields = 'items_sold_id'
        Options = [ixUnique]
      end
      item
        Name = 'ItemsIXLocationId'
        Fields = 'items_sold_sales_location;items_sold_sales_id'
      end
      item
        Name = 'ItemsIXOwnerId'
        Fields = 'items_sold_owner_id'
      end>
    IndexName = 'ItemsIXId'
    Params = <>
    ProviderName = 'DPItemsSold'
    StoreDefs = True
    OnCalcFields = Items_SoldCalcFields
    OnNewRecord = Items_SoldNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 448
    Top = 112
    object Items_Solditems_sold_id: TIntegerField
      FieldName = 'items_sold_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Items_Solditems_sold_sales_location: TIntegerField
      FieldName = 'items_sold_sales_location'
      Required = True
    end
    object Items_Solditems_sold_sales_id: TIntegerField
      FieldName = 'items_sold_sales_id'
      Required = True
    end
    object Items_Solditems_sold_model: TStringField
      FieldName = 'items_sold_model'
      Size = 15
    end
    object Items_Solditems_sold_name: TStringField
      FieldName = 'items_sold_name'
      Size = 32
    end
    object Items_Solditems_sold_quantity: TIntegerField
      FieldName = 'items_sold_quantity'
    end
    object Items_Solditems_sold_owner_id: TIntegerField
      FieldName = 'items_sold_owner_id'
      Required = True
    end
    object Items_Solditems_sold_supplier_id: TIntegerField
      FieldName = 'items_sold_supplier_id'
    end
    object Items_Solditems_sold_date_in: TStringField
      FieldName = 'items_sold_date_in'
      Size = 8
    end
    object Items_Solditems_refunded: TIntegerField
      FieldName = 'items_refunded'
    end
    object Items_Solditems_sold_price_stock_tot: TBCDField
      FieldKind = fkCalculated
      FieldName = 'items_sold_price_stock_tot'
      Calculated = True
    end
    object Items_Solditems_sold_price_gross: TFMTBCDField
      FieldName = 'items_sold_price_gross'
      Precision = 10
      Size = 2
    end
    object Items_Solditems_sold_price_ht: TFMTBCDField
      FieldName = 'items_sold_price_ht'
      Precision = 10
      Size = 2
    end
    object Items_Solditems_sold_price_catalog: TFMTBCDField
      FieldName = 'items_sold_price_catalog'
      Precision = 10
      Size = 2
    end
    object Items_Solditems_sold_price_stock: TFMTBCDField
      FieldName = 'items_sold_price_stock'
      Precision = 10
      Size = 2
    end
  end
  object TipsSRC: TDataSource
    DataSet = Tips
    Left = 1020
    Top = 280
  end
  object PPricesSRC: TDataSource
    DataSet = PPrices
    Left = 552
    Top = 376
  end
  object SQLDSPPrices: TSQLDataSet
    GetMetadata = False
    CommandText = 'Select * from netshop_pprices where shopid = :shopid'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'shopid'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end>
    SQLConnection = SQLConnection
    Left = 552
    Top = 228
  end
  object DPPprices: TDataSetProvider
    DataSet = SQLDSPPrices
    Left = 552
    Top = 276
  end
  object PPrices: TClientDataSet
    Aggregates = <>
    FileName = 'database\p_prices.cds'
    FieldDefs = <
      item
        Name = 'Shopid'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Model'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Price'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'PpricesIXModel'
        Fields = 'model'
      end
      item
        Name = 'PpricesIXShopModel'
        Fields = 'shopid;model'
      end>
    Params = <>
    ProviderName = 'DPPprices'
    StoreDefs = True
    OnNewRecord = PPricesNewRecord
    Left = 552
    Top = 328
    object PPricesShopid: TIntegerField
      FieldName = 'Shopid'
      Required = True
    end
    object PPricesModel: TStringField
      FieldName = 'Model'
      Required = True
      Size = 15
    end
    object PPricesPrice: TFMTBCDField
      FieldName = 'Price'
      Precision = 10
      Size = 2
    end
  end
  object SQLDSStock: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from netshop_stock where product_location = :shopid'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'shopid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 376
    Top = 16
    object SQLDSStockid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSStockproduct_model: TStringField
      FieldName = 'product_model'
      Required = True
      Size = 15
    end
    object SQLDSStockproduct_name: TStringField
      FieldName = 'product_name'
      Size = 32
    end
    object SQLDSStockproduct_owner_id: TIntegerField
      FieldName = 'product_owner_id'
      Required = True
    end
    object SQLDSStockproduct_price_stock: TFMTBCDField
      FieldName = 'product_price_stock'
      Precision = 10
      Size = 2
    end
    object SQLDSStockproduct_location: TIntegerField
      FieldName = 'product_location'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSStockproduct_quantity: TIntegerField
      FieldName = 'product_quantity'
    end
    object SQLDSStockproduct_supplier_id: TIntegerField
      FieldName = 'product_supplier_id'
    end
    object SQLDSStockproduct_date_in: TStringField
      FieldName = 'product_date_in'
      Size = 8
    end
    object SQLDSStockproduct_price_gross: TFMTBCDField
      FieldName = 'product_price_gross'
      Precision = 10
      Size = 2
    end
    object SQLDSStockproduct_isdefect: TIntegerField
      FieldName = 'product_isdefect'
      Required = True
    end
  end
  object TimerSaveDB: TTimer
    Interval = 300000
    OnTimer = TimerSaveDBTimer
    Left = 48
    Top = 76
  end
  object SQLDSRepair: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from netshop_repair where repair_shop_id=:shopid'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'shopid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 636
    Top = 20
    object SQLDSRepairrepair_shop_id: TIntegerField
      FieldName = 'repair_shop_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSRepairrepair_id: TIntegerField
      FieldName = 'repair_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSRepairrepair_customer_nbr: TIntegerField
      FieldName = 'repair_customer_nbr'
      Required = True
    end
    object SQLDSRepairrepair_products_model: TStringField
      FieldName = 'repair_products_model'
      Required = True
      Size = 15
    end
    object SQLDSRepairrepair_products_name: TStringField
      DisplayWidth = 64
      FieldName = 'repair_products_name'
      Size = 64
    end
    object SQLDSRepairrepair_products_serial: TStringField
      FieldName = 'repair_products_serial'
      Size = 32
    end
    object SQLDSRepairrepair_products_problem: TStringField
      FieldName = 'repair_products_problem'
      Size = 64
    end
    object SQLDSRepairrepair_price: TFloatField
      FieldName = 'repair_price'
    end
    object SQLDSRepairrepair_fixed: TStringField
      FieldName = 'repair_fixed'
      FixedChar = True
      Size = 5
    end
    object SQLDSRepairrepair_returned: TStringField
      FieldName = 'repair_returned'
      FixedChar = True
      Size = 5
    end
    object SQLDSRepairrepair_date_in: TFloatField
      FieldName = 'repair_date_in'
    end
    object SQLDSRepairrepair_date_fixed: TFloatField
      FieldName = 'repair_date_fixed'
    end
    object SQLDSRepairrepair_date_out: TFloatField
      FieldName = 'repair_date_out'
    end
  end
  object DPRepair: TDataSetProvider
    DataSet = SQLDSRepair
    UpdateMode = upWhereKeyOnly
    Left = 636
    Top = 68
  end
  object Repair: TClientDataSet
    Aggregates = <>
    FileName = 'database\repair.cds'
    FieldDefs = <
      item
        Name = 'repair_shop_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'repair_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'repair_customer_nbr'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'repair_products_model'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'repair_products_name'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'repair_products_serial'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'repair_products_problem'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'repair_price'
        DataType = ftFloat
      end
      item
        Name = 'repair_fixed'
        Attributes = [faFixed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'repair_returned'
        Attributes = [faFixed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'repair_date_in'
        DataType = ftFloat
      end
      item
        Name = 'repair_date_fixed'
        DataType = ftFloat
      end
      item
        Name = 'repair_date_out'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'RepairIXCustomer'
        Fields = 'repair_customer_nbr'
      end
      item
        Name = 'RepairIXId'
        Fields = 'repair_id'
      end>
    Params = <>
    ProviderName = 'DPRepair'
    StoreDefs = True
    OnCalcFields = RepairCalcFields
    OnNewRecord = RepairNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 636
    Top = 116
    object Repairrepair_shop_id: TIntegerField
      FieldName = 'repair_shop_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Repairrepair_id: TIntegerField
      FieldName = 'repair_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Repairrepair_customer_nbr: TIntegerField
      FieldName = 'repair_customer_nbr'
      Required = True
    end
    object Repairrepair_products_model: TStringField
      FieldName = 'repair_products_model'
      Required = True
      Size = 15
    end
    object Repairrepair_products_name: TStringField
      DisplayWidth = 64
      FieldName = 'repair_products_name'
      Size = 64
    end
    object Repairrepair_products_serial: TStringField
      FieldName = 'repair_products_serial'
      Size = 32
    end
    object Repairrepair_products_problem: TStringField
      FieldName = 'repair_products_problem'
      Size = 64
    end
    object Repairrepair_price: TFloatField
      FieldName = 'repair_price'
    end
    object Repairrepair_fixed: TStringField
      FieldName = 'repair_fixed'
      FixedChar = True
      Size = 5
    end
    object Repairrepair_returned: TStringField
      FieldName = 'repair_returned'
      FixedChar = True
      Size = 5
    end
    object Repairrepair_date_in: TFloatField
      FieldName = 'repair_date_in'
    end
    object Repairrepair_date_fixed: TFloatField
      FieldName = 'repair_date_fixed'
    end
    object Repairrepair_date_out: TFloatField
      FieldName = 'repair_date_out'
    end
    object Repairrepair_date_in_display: TDateField
      FieldKind = fkCalculated
      FieldName = 'repair_date_in_display'
      Calculated = True
    end
    object Repairrepair_date_our_display: TDateField
      FieldKind = fkCalculated
      FieldName = 'repair_date_out_display'
      Calculated = True
    end
    object Repairrepair_date_fixed_display: TDateField
      FieldKind = fkCalculated
      FieldName = 'repair_date_fixed_display'
      Calculated = True
    end
  end
  object RepairSRC: TDataSource
    DataSet = Repair
    Left = 636
    Top = 160
  end
  object SQLDSRefunds: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from netshop_refunds where refunds_shop_id=:shopid'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'shopid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 212
    Top = 12
    object SQLDSRefundsrefunds_id: TIntegerField
      FieldName = 'refunds_id'
      Required = True
    end
    object SQLDSRefundsrefunds_amount: TFloatField
      FieldName = 'refunds_amount'
    end
    object SQLDSRefundsrefunds_items_id: TIntegerField
      FieldName = 'refunds_items_id'
    end
    object SQLDSRefundsrefunds_date_time: TFloatField
      FieldName = 'refunds_date_time'
    end
    object SQLDSRefundsrefunds_customer_nbr: TIntegerField
      FieldName = 'refunds_customer_nbr'
    end
    object SQLDSRefundsrefunds_nature: TStringField
      FieldName = 'refunds_nature'
      Size = 32
    end
    object SQLDSRefundsrefunds_shop_id: TIntegerField
      FieldName = 'refunds_shop_id'
      Required = True
    end
  end
  object DPRefunds: TDataSetProvider
    DataSet = SQLDSRefunds
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DPRefundsBeforeUpdateRecord
    Left = 212
    Top = 64
  end
  object Refunds: TClientDataSet
    Aggregates = <>
    FileName = 'database\refunds.cds'
    FieldDefs = <
      item
        Name = 'refunds_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'refunds_amount'
        DataType = ftFloat
      end
      item
        Name = 'refunds_items_id'
        DataType = ftInteger
      end
      item
        Name = 'refunds_date_time'
        DataType = ftFloat
      end
      item
        Name = 'refunds_customer_nbr'
        DataType = ftInteger
      end
      item
        Name = 'refunds_nature'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'refunds_shop_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RefundsIXShopId'
        Fields = 'refunds_shop_id;refunds_id'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RefundsIXCustomer'
        Fields = 'refunds_customer_nbr'
      end>
    IndexName = 'RefundsIXShopId'
    Params = <>
    ProviderName = 'DPRefunds'
    StoreDefs = True
    OnCalcFields = RefundsCalcFields
    OnNewRecord = RefundsNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 212
    Top = 112
    object Refundsrefunds_id: TIntegerField
      FieldName = 'refunds_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Refundsrefunds_amount: TFloatField
      FieldName = 'refunds_amount'
    end
    object Refundsrefunds_items_id: TIntegerField
      FieldName = 'refunds_items_id'
    end
    object Refundsrefunds_date_time: TFloatField
      FieldName = 'refunds_date_time'
    end
    object Refundsrefunds_customer_nbr: TIntegerField
      FieldName = 'refunds_customer_nbr'
    end
    object Refundsrefunds_nature: TStringField
      FieldName = 'refunds_nature'
      Size = 32
    end
    object Refundsrefunds_shop_id: TIntegerField
      FieldName = 'refunds_shop_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Refundsrefunds_date_time_display: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'refunds_date_time_display'
      Calculated = True
    end
  end
  object RefundsSRC: TDataSource
    DataSet = Refunds
    Left = 212
    Top = 160
  end
  object SQLDSItemsRefunded: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select * from netshop_items_refunded where items_refunded_refund' +
      's_shop_id=:shopid'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'shopid'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end>
    SQLConnection = SQLConnection
    Left = 544
    Top = 16
  end
  object DPItemsRefunded: TDataSetProvider
    DataSet = SQLDSItemsRefunded
    UpdateMode = upWhereKeyOnly
    Left = 548
    Top = 64
  end
  object Items_Refunded: TClientDataSet
    Aggregates = <>
    FileName = 'database\items_refunded.cds'
    FieldDefs = <
      item
        Name = 'items_refunded_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'items_refunded_refunds_shop_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'items_refunded_refunds_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'items_refunded_model'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'items_refunded_name'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'items_refunded_quantity'
        DataType = ftInteger
      end
      item
        Name = 'items_refunded_price_gross'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'items_refunded_price_catalog'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'items_refunded_price_stock'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'items_refunded_owner_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'items_refunded_supplier_id'
        DataType = ftInteger
      end
      item
        Name = 'items_refunded_date_in'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'items_refunded_refunded'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'ItemsRefundedIXShopId'
        Fields = 'items_refunded_refunds_shop_id;items_refunded_refunds_id'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'ItemsRefundedIXShopId'
    Params = <>
    ProviderName = 'DPItemsRefunded'
    StoreDefs = True
    OnNewRecord = Items_RefundedNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 548
    Top = 116
    object Items_Refundeditems_refunded_id: TIntegerField
      FieldName = 'items_refunded_id'
      Required = True
    end
    object Items_Refundeditems_refunded_refunds_shop_id: TIntegerField
      FieldName = 'items_refunded_refunds_shop_id'
      Required = True
    end
    object Items_Refundeditems_refunded_refunds_id: TIntegerField
      FieldName = 'items_refunded_refunds_id'
      Required = True
    end
    object Items_Refundeditems_refunded_model: TStringField
      FieldName = 'items_refunded_model'
      Size = 15
    end
    object Items_Refundeditems_refunded_name: TStringField
      FieldName = 'items_refunded_name'
      Size = 32
    end
    object Items_Refundeditems_refunded_quantity: TIntegerField
      FieldName = 'items_refunded_quantity'
    end
    object Items_Refundeditems_refunded_owner_id: TIntegerField
      FieldName = 'items_refunded_owner_id'
      Required = True
    end
    object Items_Refundeditems_refunded_supplier_id: TIntegerField
      FieldName = 'items_refunded_supplier_id'
    end
    object Items_Refundeditems_refunded_date_in: TStringField
      FieldName = 'items_refunded_date_in'
      Size = 8
    end
    object Items_Refundeditems_refunded_refunded: TIntegerField
      FieldName = 'items_refunded_refunded'
    end
    object Items_Refundeditems_refunded_price_gross: TFMTBCDField
      FieldName = 'items_refunded_price_gross'
      Precision = 10
      Size = 2
    end
    object Items_Refundeditems_refunded_price_catalog: TFMTBCDField
      FieldName = 'items_refunded_price_catalog'
      Precision = 10
      Size = 2
    end
    object Items_Refundeditems_refunded_price_stock: TFMTBCDField
      FieldName = 'items_refunded_price_stock'
      Precision = 10
      Size = 2
    end
  end
  object Items_refunded_SRC: TDataSource
    DataSet = Items_Refunded
    Left = 548
    Top = 164
  end
  object SQLDSCustomers: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select * from customers where (customers_nbr = :shopid) or ((cus' +
      'tomers_nbr < :maxid) and (customers_nbr > :minid))'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'shopid'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'maxid'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'minid'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end>
    SQLConnection = SQLConnection
    Left = 360
    Top = 232
  end
  object SQLDSAddress_book: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select * from address_book where  (customers_id = :shopid) or ((' +
      'customers_id < :maxid) and (customers_id > :minid))'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'shopid'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'maxid'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'minid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 456
    Top = 232
  end
  object DPCustomers: TDataSetProvider
    DataSet = SQLDSCustomers
    BeforeUpdateRecord = DPCustomersBeforeUpdateRecord
    Left = 360
    Top = 288
  end
  object Address_Book: TClientDataSet
    Tag = 666
    Aggregates = <>
    FileName = 'database\address_book.cds'
    FieldDefs = <
      item
        Name = 'address_book_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'customers_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'entry_gender'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'entry_company'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'entry_firstname'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'entry_lastname'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'entry_street_address'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'entry_suburb'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'entry_postcode'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'entry_city'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'entry_state'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'entry_country_id'
        DataType = ftInteger
      end
      item
        Name = 'entry_zone_id'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'Address_bookIXCustomer'
        Fields = 'customers_id'
      end
      item
        Name = 'Address_bookIXId'
        Fields = 'address_book_id'
      end>
    Params = <>
    ProviderName = 'DPAddress_book'
    StoreDefs = True
    BeforePost = Address_BookBeforePost
    OnNewRecord = Address_BookNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 464
    Top = 328
    object Address_Bookaddress_book_id: TIntegerField
      FieldName = 'address_book_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Address_Bookcustomers_id: TIntegerField
      FieldName = 'customers_id'
      Required = True
    end
    object Address_Bookentry_gender: TStringField
      FieldName = 'entry_gender'
      FixedChar = True
      Size = 1
    end
    object Address_Bookentry_company: TStringField
      FieldName = 'entry_company'
      Size = 32
    end
    object Address_Bookentry_firstname: TStringField
      FieldName = 'entry_firstname'
      Size = 32
    end
    object Address_Bookentry_lastname: TStringField
      FieldName = 'entry_lastname'
      Size = 32
    end
    object Address_Bookentry_street_address: TStringField
      FieldName = 'entry_street_address'
      Size = 64
    end
    object Address_Bookentry_suburb: TStringField
      FieldName = 'entry_suburb'
      Size = 32
    end
    object Address_Bookentry_postcode: TStringField
      FieldName = 'entry_postcode'
      Size = 10
    end
    object Address_Bookentry_city: TStringField
      FieldName = 'entry_city'
      Size = 32
    end
    object Address_Bookentry_state: TStringField
      FieldName = 'entry_state'
      Size = 32
    end
    object Address_Bookentry_country_id: TIntegerField
      FieldName = 'entry_country_id'
    end
    object Address_Bookentry_zone_id: TIntegerField
      FieldName = 'entry_zone_id'
    end
  end
  object Address_bookSRC: TDataSource
    DataSet = Address_Book
    Left = 464
    Top = 380
  end
  object DPAddress_book: TDataSetProvider
    DataSet = SQLDSAddress_book
    Left = 460
    Top = 280
  end
  object Customers: TClientDataSet
    Aggregates = <>
    FileName = 'database\customers.cds'
    FieldDefs = <
      item
        Name = 'customers_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'customers_gender'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'customers_firstname'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_lastname'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_dob'
        DataType = ftTimeStamp
      end
      item
        Name = 'customers_email_address'
        DataType = ftString
        Size = 96
      end
      item
        Name = 'customers_default_address_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'customers_telephone'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_fax'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_password'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'customers_credit'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'customers_points'
        DataType = ftInteger
      end
      item
        Name = 'customers_nbr'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'customers_newsletter'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'customers_TVA'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_identity'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'customers_bank_account'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_isTVA'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'customers_issupplier'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'customers_defltpost'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'customers_paycode'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'customers_language_id'
        DataType = ftInteger
      end
      item
        Name = 'customers_htprice'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'customers_rent_enabled'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'customers_memo'
        DataType = ftMemo
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'CustomersIXId'
        Fields = 'customers_id'
        Options = [ixPrimary]
      end
      item
        Name = 'CustomersIXNbr'
        Fields = 'customers_nbr'
      end>
    IndexFieldNames = 'customers_id'
    Params = <>
    ProviderName = 'DPCustomers'
    StoreDefs = True
    BeforePost = CustomersBeforePost
    OnNewRecord = CustomersoldNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 360
    Top = 336
    object Customerscustomers_id: TIntegerField
      FieldName = 'customers_id'
      Required = True
    end
    object Customerscustomers_gender: TStringField
      FieldName = 'customers_gender'
      FixedChar = True
      Size = 1
    end
    object Customerscustomers_firstname: TStringField
      FieldName = 'customers_firstname'
      Size = 32
    end
    object Customerscustomers_lastname: TStringField
      FieldName = 'customers_lastname'
      Size = 32
    end
    object Customerscustomers_dob: TSQLTimeStampField
      FieldName = 'customers_dob'
    end
    object Customerscustomers_email_address: TStringField
      FieldName = 'customers_email_address'
      OnSetText = Customerscustomers_email_addressSetText
      Size = 96
    end
    object Customerscustomers_default_address_id: TIntegerField
      FieldName = 'customers_default_address_id'
      Required = True
    end
    object Customerscustomers_telephone: TStringField
      FieldName = 'customers_telephone'
      Size = 32
    end
    object Customerscustomers_fax: TStringField
      FieldName = 'customers_fax'
      Size = 32
    end
    object Customerscustomers_password: TStringField
      FieldName = 'customers_password'
      Size = 40
    end
    object Customerscustomers_points: TIntegerField
      FieldName = 'customers_points'
    end
    object Customerscustomers_nbr: TIntegerField
      FieldName = 'customers_nbr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Customerscustomers_newsletter: TStringField
      FieldName = 'customers_newsletter'
      FixedChar = True
      Size = 1
    end
    object Customerscustomers_TVA: TStringField
      FieldName = 'customers_TVA'
      Size = 32
    end
    object Customerscustomers_identity: TStringField
      FieldName = 'customers_identity'
      Size = 16
    end
    object Customerscustomers_bank_account: TStringField
      FieldName = 'customers_bank_account'
      Size = 32
    end
    object Customerscustomers_isTVA: TStringField
      FieldName = 'customers_isTVA'
      Size = 5
    end
    object Customerscustomers_issupplier: TStringField
      FieldName = 'customers_issupplier'
      Size = 5
    end
    object Customerscustomers_defltpost: TStringField
      FieldName = 'customers_defltpost'
      Size = 10
    end
    object Customerscustomers_paycode: TStringField
      FieldName = 'customers_paycode'
      Size = 5
    end
    object Customerscustomers_language_id: TIntegerField
      FieldName = 'customers_language_id'
    end
    object Customerscustomers_htprice: TStringField
      FieldName = 'customers_htprice'
      Required = True
      Size = 5
    end
    object Customerscustomers_rent_enabled: TStringField
      FieldName = 'customers_rent_enabled'
      Required = True
      Size = 5
    end
    object Customerscustomers_memo: TMemoField
      FieldName = 'customers_memo'
      BlobType = ftMemo
      Size = 1
    end
    object Customerscustomers_credit: TFMTBCDField
      FieldName = 'customers_credit'
      Precision = 10
      Size = 2
    end
  end
  object Tips: TClientDataSet
    Aggregates = <>
    FileName = 'database\tips.cds'
    FieldDefs = <
      item
        Name = 'TipsText'
        DataType = ftMemo
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1020
    Top = 232
    object TipsTipsText: TMemoField
      FieldName = 'TipsText'
      BlobType = ftMemo
    end
  end
  object SQLDSRentStock: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select * from netshop_rent_stock where rent_stock_location = :sh' +
      'opid'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftSmallint
        Name = 'shopid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 884
    Top = 484
    object SQLDSRentStockrent_stock_id: TIntegerField
      FieldName = 'rent_stock_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSRentStockrent_stock_product_model: TStringField
      FieldName = 'rent_stock_product_model'
      Required = True
      Size = 13
    end
    object SQLDSRentStockrent_stock_condition: TSmallintField
      FieldName = 'rent_stock_condition'
    end
    object SQLDSRentStockrent_stock_count: TIntegerField
      FieldName = 'rent_stock_count'
    end
    object SQLDSRentStockrent_stock_state: TSmallintField
      FieldName = 'rent_stock_state'
    end
    object SQLDSRentStockrent_stock_date_added: TFloatField
      FieldName = 'rent_stock_date_added'
    end
    object SQLDSRentStockrent_stock_last_rent: TFloatField
      FieldName = 'rent_stock_last_rent'
    end
    object SQLDSRentStockrent_stock_location: TSmallintField
      FieldName = 'rent_stock_location'
      Required = True
    end
    object SQLDSRentStockrent_stock_name: TStringField
      FieldName = 'rent_stock_name'
      Size = 32
    end
  end
  object DPRentStock: TDataSetProvider
    DataSet = SQLDSRentStock
    UpdateMode = upWhereKeyOnly
    Left = 888
    Top = 532
  end
  object RentStock: TClientDataSet
    Aggregates = <>
    FileName = 'database\rentstock.cds'
    Params = <>
    ProviderName = 'DPRentStock'
    OnCalcFields = RentStockCalcFields
    OnNewRecord = RentStockNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 888
    Top = 576
    object RentStockrent_stock_id: TIntegerField
      FieldName = 'rent_stock_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RentStockrent_stock_condition: TSmallintField
      FieldName = 'rent_stock_condition'
    end
    object RentStockrent_stock_count: TIntegerField
      FieldName = 'rent_stock_count'
    end
    object RentStockrent_stock_state: TSmallintField
      FieldName = 'rent_stock_state'
    end
    object RentStockrent_stock_date_added: TFloatField
      FieldName = 'rent_stock_date_added'
    end
    object RentStockrent_stock_last_rent: TFloatField
      FieldName = 'rent_stock_last_rent'
    end
    object RentStockrent_stock_location: TSmallintField
      FieldName = 'rent_stock_location'
      Required = True
    end
    object RentStockrent_stock_name: TStringField
      FieldName = 'rent_stock_name'
      Size = 32
    end
    object RentStockrent_stock_product_model: TStringField
      FieldName = 'rent_stock_product_model'
      Required = True
      Size = 13
    end
    object RentStockrent_stock_date_added_disp: TDateField
      FieldKind = fkCalculated
      FieldName = 'rent_stock_date_added_disp'
      Calculated = True
    end
    object RentStockrent_stock_last_rent_disp: TDateField
      FieldKind = fkCalculated
      FieldName = 'rent_stock_last_rent_disp'
      Calculated = True
    end
  end
  object RentStockSRC: TDataSource
    DataSet = RentStock
    Left = 888
    Top = 624
  end
  object SQLDSRentTransaction: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select * from netshop_rent_transaction where rent_transaction_lo' +
      'cation = :shopid'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftSmallint
        Name = 'shopid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 988
    Top = 484
    object SQLDSRentTransactionrent_transaction_id: TIntegerField
      FieldName = 'rent_transaction_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSRentTransactionrent_transaction_location: TSmallintField
      FieldName = 'rent_transaction_location'
      Required = True
    end
    object SQLDSRentTransactionrent_transaction_product_model: TStringField
      FieldName = 'rent_transaction_product_model'
      Required = True
      Size = 13
    end
    object SQLDSRentTransactionrent_transaction_customer_nbr: TIntegerField
      FieldName = 'rent_transaction_customer_nbr'
      Required = True
    end
    object SQLDSRentTransactionrent_transaction_start_date: TFloatField
      FieldName = 'rent_transaction_start_date'
      Required = True
    end
    object SQLDSRentTransactionrent_transaction_due_date: TFloatField
      FieldName = 'rent_transaction_due_date'
      Required = True
    end
    object SQLDSRentTransactionrent_transaction_product_name: TStringField
      FieldName = 'rent_transaction_product_name'
      Size = 32
    end
    object SQLDSRentTransactionrent_transaction_returned: TSmallintField
      FieldName = 'rent_transaction_returned'
    end
    object SQLDSRentTransactionrent_transaction_scheme_id: TIntegerField
      FieldName = 'rent_transaction_scheme_id'
    end
    object SQLDSRentTransactionrent_transaction_returned_date: TFloatField
      FieldName = 'rent_transaction_returned_date'
    end
  end
  object DPRentTransaction: TDataSetProvider
    DataSet = SQLDSRentTransaction
    UpdateMode = upWhereKeyOnly
    Left = 988
    Top = 532
  end
  object RentTransaction: TClientDataSet
    Aggregates = <>
    FileName = 'database\renttransaction.cds'
    FieldDefs = <
      item
        Name = 'rent_transaction_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'rent_transaction_location'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'rent_transaction_product_model'
        Attributes = [faRequired]
        DataType = ftString
        Size = 13
      end
      item
        Name = 'rent_transaction_customer_nbr'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'rent_transaction_start_date'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'rent_transaction_due_date'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'rent_transaction_product_name'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'rent_transaction_returned'
        DataType = ftSmallint
      end
      item
        Name = 'rent_transaction_scheme_id'
        DataType = ftInteger
      end
      item
        Name = 'rent_transaction_returned_date'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'RentTransactionIXId'
        Fields = 'rent_transaction_id'
        Options = [ixUnique]
      end
      item
        Name = 'RentTransactionIXCustomer'
        Fields = 'rent_transaction_customer_nbr'
      end>
    Params = <>
    ProviderName = 'DPRentTransaction'
    StoreDefs = True
    OnCalcFields = RentTransactionCalcFields
    OnNewRecord = RentTransactionNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 988
    Top = 576
    object RentTransactionrent_transaction_id: TIntegerField
      FieldName = 'rent_transaction_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RentTransactionrent_transaction_location: TSmallintField
      FieldName = 'rent_transaction_location'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RentTransactionrent_transaction_product_model: TStringField
      FieldName = 'rent_transaction_product_model'
      Required = True
      Size = 13
    end
    object RentTransactionrent_transaction_customer_nbr: TIntegerField
      FieldName = 'rent_transaction_customer_nbr'
      Required = True
    end
    object RentTransactionrent_transaction_start_date: TFloatField
      FieldName = 'rent_transaction_start_date'
      Required = True
    end
    object RentTransactionrent_transaction_due_date: TFloatField
      FieldName = 'rent_transaction_due_date'
      Required = True
    end
    object RentTransactionrent_transaction_product_name: TStringField
      FieldName = 'rent_transaction_product_name'
      Size = 32
    end
    object RentTransactionrent_transaction_start_display: TDateField
      FieldKind = fkCalculated
      FieldName = 'rent_transaction_start_display'
      Calculated = True
    end
    object RentTransactionrent_transaction_due_display: TDateField
      FieldKind = fkCalculated
      FieldName = 'rent_transaction_due_display'
      Calculated = True
    end
    object RentTransactionrent_transaction_returned: TSmallintField
      FieldName = 'rent_transaction_returned'
    end
    object RentTransactionrent_transaction_scheme_id: TIntegerField
      FieldName = 'rent_transaction_scheme_id'
    end
    object RentTransactionrent_transaction_returned_date: TFloatField
      FieldName = 'rent_transaction_returned_date'
    end
    object RentTransactionrent_transaction_in_display: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'rent_transaction_in_display'
      Calculated = True
    end
  end
  object RentTransactionSrc: TDataSource
    DataSet = RentTransaction
    Left = 992
    Top = 624
  end
  object Caroussel: TClientDataSet
    Aggregates = <>
    FileName = 'database\caroussel.cds'
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'CarousselXMachineSlot'
        Fields = 'machine_id;slot_id'
      end>
    Params = <>
    StoreDefs = True
    OnNewRecord = CarousselNewRecord
    Left = 852
    Top = 336
    object Carousselid: TIntegerField
      FieldName = 'id'
    end
    object Carousselshop_id: TIntegerField
      FieldName = 'shop_id'
    end
    object Carousselmachine_id: TIntegerField
      FieldName = 'machine_id'
    end
    object Carousselslot_id: TIntegerField
      FieldName = 'slot_id'
    end
    object Carousselmodel: TStringField
      FieldName = 'model'
    end
    object Carousselcustomer_nbr: TIntegerField
      FieldName = 'customer_nbr'
    end
    object Carousselisroot: TBooleanField
      FieldName = 'isroot'
    end
    object Carousselnextid: TIntegerField
      FieldName = 'nextid'
    end
  end
  object CarousselSRC: TDataSource
    DataSet = Caroussel
    Left = 852
    Top = 388
  end
  object SQLDSRentSchemes: TSQLDataSet
    CommandText = 
      'select * from netshop_rent_schemes where rent_scheme_location = ' +
      ':shopid'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftSmallint
        Name = 'shopid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 1108
    Top = 484
    object SQLDSRentSchemesrent_scheme_id: TIntegerField
      FieldName = 'rent_scheme_id'
      Required = True
    end
    object SQLDSRentSchemesrent_scheme_name: TStringField
      FieldName = 'rent_scheme_name'
      Size = 16
    end
    object SQLDSRentSchemesrent_scheme_description: TStringField
      FieldName = 'rent_scheme_description'
      Size = 255
    end
    object SQLDSRentSchemesrent_scheme_base_days: TSmallintField
      FieldName = 'rent_scheme_base_days'
    end
    object SQLDSRentSchemesrent_scheme_base_price: TFloatField
      FieldName = 'rent_scheme_base_price'
    end
    object SQLDSRentSchemesrent_scheme_extra_price: TFloatField
      FieldName = 'rent_scheme_extra_price'
    end
    object SQLDSRentSchemesrent_scheme_default: TSmallintField
      FieldName = 'rent_scheme_default'
    end
    object SQLDSRentSchemesrent_scheme_location: TSmallintField
      FieldName = 'rent_scheme_location'
      Required = True
    end
  end
  object DPRentSchemes: TDataSetProvider
    DataSet = SQLDSRentSchemes
    Left = 1108
    Top = 532
  end
  object RentSchemes: TClientDataSet
    Aggregates = <>
    FileName = 'database\rentschemes.cds'
    FieldDefs = <
      item
        Name = 'rent_scheme_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'rent_scheme_name'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'rent_scheme_description'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'rent_scheme_base_days'
        DataType = ftSmallint
      end
      item
        Name = 'rent_scheme_base_price'
        DataType = ftFloat
      end
      item
        Name = 'rent_scheme_extra_price'
        DataType = ftFloat
      end
      item
        Name = 'rent_scheme_default'
        DataType = ftSmallint
      end
      item
        Name = 'rent_scheme_location'
        Attributes = [faRequired]
        DataType = ftSmallint
      end>
    IndexDefs = <
      item
        Name = 'RentSchemesIXId'
        Fields = 'rent_scheme_id'
      end>
    IndexName = 'RentSchemesIXId'
    Params = <
      item
        DataType = ftSmallint
        Name = 'shopid'
        ParamType = ptInput
      end>
    ProviderName = 'DPRentSchemes'
    StoreDefs = True
    OnNewRecord = RentSchemesNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 1108
    Top = 584
  end
  object RentSchemesSRC: TDataSource
    DataSet = RentSchemes
    Left = 1108
    Top = 624
  end
  object InvoicesSrc: TDataSource
    DataSet = Invoices
    Left = 912
    Top = 164
  end
  object SQLDSInvoices: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select * from netshop_invoices where invoices_location = :shopid' +
      ' and invoices_date_time > :datelimit'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'shopid'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'datelimit'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = SQLConnection
    Left = 912
    Top = 20
  end
  object DPInvoices: TDataSetProvider
    DataSet = SQLDSInvoices
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DPInvoicesBeforeUpdateRecord
    Left = 912
    Top = 68
  end
  object Invoices: TClientDataSet
    Aggregates = <>
    FileName = 'database\invoices.cds'
    FieldDefs = <
      item
        Name = 'invoices_date_time'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'invoices_paid_cash'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'invoices_paid_bct'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'invoices_paid_proton'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'invoices_paid_visa'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'invoices_paid_voucher'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'invoices_customer_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'invoices_location'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'invoices_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'invoices_closed'
        DataType = ftInteger
      end
      item
        Name = 'invoices_comments'
        DataType = ftMemo
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'InvoicesIXLocationId'
        Fields = 'Invoices_location;Invoices_id'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'InvoicesIXDateTime'
        Fields = 'invoices_date_time'
      end
      item
        Name = 'InvoicesIXCustomers'
        DescFields = 'Invoices_date_time'
        Fields = 'Invoices_customer_id;Invoices_date_time'
        Options = [ixDescending]
      end>
    IndexName = 'InvoicesIXLocationId'
    Params = <>
    ProviderName = 'DPInvoices'
    StoreDefs = True
    AfterOpen = InvoicesAfterOpen
    OnCalcFields = InvoicesCalcFields
    OnNewRecord = InvoicesNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 912
    Top = 116
    object Invoicesinvoices_date_time: TFloatField
      FieldName = 'invoices_date_time'
      Required = True
    end
    object Invoicesinvoices_paid_cash: TFMTBCDField
      FieldName = 'invoices_paid_cash'
      Precision = 10
      Size = 2
    end
    object Invoicesinvoices_paid_bct: TFMTBCDField
      FieldName = 'invoices_paid_bct'
      Precision = 10
      Size = 2
    end
    object Invoicesinvoices_paid_proton: TFMTBCDField
      FieldName = 'invoices_paid_proton'
      Precision = 10
      Size = 2
    end
    object Invoicesinvoices_paid_visa: TFMTBCDField
      FieldName = 'invoices_paid_visa'
      Precision = 10
      Size = 2
    end
    object Invoicesinvoices_paid_voucher: TFMTBCDField
      FieldName = 'invoices_paid_voucher'
      Precision = 10
      Size = 2
    end
    object Invoicesinvoices_customer_id: TIntegerField
      FieldName = 'invoices_customer_id'
      Required = True
    end
    object Invoicesinvoices_location: TIntegerField
      FieldName = 'invoices_location'
      Required = True
    end
    object Invoicesinvoices_id: TIntegerField
      FieldName = 'invoices_id'
      Required = True
    end
    object Invoicesinvoices_closed: TIntegerField
      FieldName = 'invoices_closed'
    end
    object Invoicesinvoices_comments: TMemoField
      FieldName = 'invoices_comments'
      BlobType = ftMemo
      Size = 1
    end
    object Invoicesinvoices_paid_totalttc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'invoices_paid_totalttc'
      Calculated = True
    end
    object Invoicesinvoices_date_disp: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'invoices_date_disp'
      Calculated = True
    end
  end
  object invoices_items_src: TDataSource
    DataSet = Invoices_items
    Left = 1000
    Top = 168
  end
  object SQLDSInvoices_Items: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select * from netshop_invoices_items where (invoices_items_locat' +
      'ion = :shopid) and (((invoices_items_invoice_id >= :invoices_id_' +
      'min))or(invoices_items_invoice_id = 0))'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'shopid'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'invoices_id_min'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end>
    SQLConnection = SQLConnection
    Left = 1004
    Top = 24
    object SQLDSInvoices_Itemsinvoices_items_id: TIntegerField
      FieldName = 'invoices_items_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSInvoices_Itemsinvoices_items_location: TIntegerField
      FieldName = 'invoices_items_location'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSInvoices_Itemsinvoices_items_invoice_id: TIntegerField
      FieldName = 'invoices_items_invoice_id'
      Required = True
    end
    object SQLDSInvoices_Itemsinvoices_items_model: TStringField
      FieldName = 'invoices_items_model'
      Size = 15
    end
    object SQLDSInvoices_Itemsinvoices_items_name: TStringField
      FieldName = 'invoices_items_name'
      Size = 32
    end
    object SQLDSInvoices_Itemsinvoices_items_quantity: TIntegerField
      FieldName = 'invoices_items_quantity'
    end
    object SQLDSInvoices_Itemsinvoices_items_price_gross: TFMTBCDField
      FieldName = 'invoices_items_price_gross'
      Precision = 10
      Size = 2
    end
    object SQLDSInvoices_Itemsinvoices_items_price_catalog: TFMTBCDField
      FieldName = 'invoices_items_price_catalog'
      Precision = 10
      Size = 2
    end
    object SQLDSInvoices_Itemsinvoices_items_price_tva: TFMTBCDField
      FieldName = 'invoices_items_price_tva'
      Precision = 10
      Size = 2
    end
    object SQLDSInvoices_Itemsinvoices_items_tva_rate: TFMTBCDField
      FieldName = 'invoices_items_tva_rate'
      Precision = 10
      Size = 2
    end
    object SQLDSInvoices_Itemsinvoices_items_price_stock: TFMTBCDField
      FieldName = 'invoices_items_price_stock'
      Precision = 10
      Size = 2
    end
    object SQLDSInvoices_Itemsinvoices_items_owner_id: TIntegerField
      FieldName = 'invoices_items_owner_id'
      Required = True
    end
    object SQLDSInvoices_Itemsinvoices_items_supplier_id: TIntegerField
      FieldName = 'invoices_items_supplier_id'
    end
    object SQLDSInvoices_Itemsinvoices_items_date_in: TStringField
      FieldName = 'invoices_items_date_in'
      Size = 8
    end
    object SQLDSInvoices_Itemsinvoices_items_refunded: TIntegerField
      FieldName = 'invoices_items_refunded'
    end
  end
  object DPInvoices_items: TDataSetProvider
    DataSet = SQLDSInvoices_Items
    UpdateMode = upWhereKeyOnly
    Left = 1004
    Top = 72
  end
  object Invoices_items: TClientDataSet
    Aggregates = <>
    FileName = 'database\invoices_items.cds'
    FieldDefs = <
      item
        Name = 'invoices_items_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'invoices_items_location'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'invoices_items_invoice_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'invoices_items_model'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'invoices_items_name'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'invoices_items_quantity'
        DataType = ftInteger
      end
      item
        Name = 'invoices_items_price_gross'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'invoices_items_price_catalog'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'invoices_items_price_tva'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'invoices_items_tva_rate'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'invoices_items_price_stock'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'invoices_items_owner_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'invoices_items_supplier_id'
        DataType = ftInteger
      end
      item
        Name = 'invoices_items_date_in'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'invoices_items_refunded'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'ItemsIXId'
        Fields = 'invoices_items_id'
        Options = [ixUnique]
      end
      item
        Name = 'ItemsIXLocationId'
        Fields = 'invoices_items_location;invoices_items_invoice_id'
      end
      item
        Name = 'ItemsIXOwnerId'
        Fields = 'invoices_items_owner_id'
      end>
    IndexName = 'ItemsIXLocationId'
    Params = <>
    ProviderName = 'DPInvoices_items'
    StoreDefs = True
    OnCalcFields = Invoices_itemsCalcFields
    OnNewRecord = Invoices_itemsNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 1004
    Top = 120
    object Invoices_itemsinvoices_items_id: TIntegerField
      FieldName = 'invoices_items_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Invoices_itemsinvoices_items_location: TIntegerField
      FieldName = 'invoices_items_location'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Invoices_itemsinvoices_items_invoice_id: TIntegerField
      FieldName = 'invoices_items_invoice_id'
      Required = True
    end
    object Invoices_itemsinvoices_items_model: TStringField
      FieldName = 'invoices_items_model'
      Size = 15
    end
    object Invoices_itemsinvoices_items_name: TStringField
      FieldName = 'invoices_items_name'
      Size = 32
    end
    object Invoices_itemsinvoices_items_quantity: TIntegerField
      FieldName = 'invoices_items_quantity'
    end
    object Invoices_itemsinvoices_items_owner_id: TIntegerField
      FieldName = 'invoices_items_owner_id'
      Required = True
    end
    object Invoices_itemsinvoices_items_supplier_id: TIntegerField
      FieldName = 'invoices_items_supplier_id'
    end
    object Invoices_itemsinvoices_items_date_in: TStringField
      FieldName = 'invoices_items_date_in'
      Size = 8
    end
    object Invoices_itemsinvoices_items_refunded: TIntegerField
      FieldName = 'invoices_items_refunded'
    end
    object Invoices_itemsinvoices_items_PTOTHT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'invoices_items_PTOTHT'
      Calculated = True
    end
    object Invoices_itemsinvoices_items_PTOTTVA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'invoices_items_PTOTTVA'
      Calculated = True
    end
    object Invoices_itemsinvoices_items_PTOTTTC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'invoices_items_PTOTTTC'
      Calculated = True
    end
    object Invoices_itemsinvoices_items_price_gross: TFMTBCDField
      FieldName = 'invoices_items_price_gross'
      Precision = 10
      Size = 2
    end
    object Invoices_itemsinvoices_items_price_catalog: TFMTBCDField
      FieldName = 'invoices_items_price_catalog'
      Precision = 10
      Size = 2
    end
    object Invoices_itemsinvoices_items_price_tva: TFMTBCDField
      FieldName = 'invoices_items_price_tva'
      Precision = 10
      Size = 2
    end
    object Invoices_itemsinvoices_items_tva_rate: TFMTBCDField
      FieldName = 'invoices_items_tva_rate'
      Precision = 10
      Size = 2
    end
    object Invoices_itemsinvoices_items_price_stock: TFMTBCDField
      FieldName = 'invoices_items_price_stock'
      Precision = 10
      Size = 2
    end
  end
  object SQLDSTax_rates: TSQLDataSet
    GetMetadata = False
    CommandText = 'tax_rates'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 336
    Top = 552
  end
  object DPTax_Rates: TDataSetProvider
    DataSet = SQLDSTax_rates
    Left = 336
    Top = 600
  end
  object Tax_Rates: TClientDataSet
    Aggregates = <>
    FileName = 'database\taxrates.cds'
    FieldDefs = <
      item
        Name = 'tax_rates_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'tax_zone_id'
        DataType = ftInteger
      end
      item
        Name = 'tax_class_id'
        DataType = ftInteger
      end
      item
        Name = 'tax_priority'
        DataType = ftInteger
      end
      item
        Name = 'tax_rate'
        DataType = ftFMTBcd
        Precision = 9
        Size = 4
      end
      item
        Name = 'tax_description'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'last_modified'
        DataType = ftTimeStamp
      end
      item
        Name = 'date_added'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end>
    IndexDefs = <
      item
        Name = 'Tax_RatesIXZoneClass'
        Fields = 'tax_zone_id;tax_class_id'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'Tax_RatesIXZoneClass'
    Params = <>
    ProviderName = 'DPTax_Rates'
    ReadOnly = True
    StoreDefs = True
    Left = 340
    Top = 648
    object Tax_Ratestax_rates_id: TIntegerField
      FieldName = 'tax_rates_id'
      Required = True
    end
    object Tax_Ratestax_zone_id: TIntegerField
      FieldName = 'tax_zone_id'
    end
    object Tax_Ratestax_class_id: TIntegerField
      FieldName = 'tax_class_id'
    end
    object Tax_Ratestax_priority: TIntegerField
      FieldName = 'tax_priority'
    end
    object Tax_Ratestax_description: TStringField
      FieldName = 'tax_description'
      Size = 255
    end
    object Tax_Rateslast_modified: TSQLTimeStampField
      FieldName = 'last_modified'
    end
    object Tax_Ratesdate_added: TSQLTimeStampField
      FieldName = 'date_added'
      Required = True
    end
    object Tax_Ratestax_rate: TFMTBCDField
      FieldName = 'tax_rate'
      Precision = 9
      Size = 4
    end
  end
  object Tax_RatesSEC: TDataSource
    DataSet = Tax_Rates
    Left = 340
    Top = 696
  end
  object SQLDSTax_Zones: TSQLDataSet
    GetMetadata = False
    CommandText = 'geo_zones'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 420
    Top = 552
  end
  object DPTax_Zones: TDataSetProvider
    DataSet = SQLDSTax_Zones
    Left = 420
    Top = 600
  end
  object Tax_Zones: TClientDataSet
    Aggregates = <>
    FileName = 'database\taxzones.cds'
    FieldDefs = <
      item
        Name = 'geo_zone_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'geo_zone_name'
        Attributes = [faRequired]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'geo_zone_description'
        Attributes = [faRequired]
        DataType = ftString
        Size = 255
      end
      item
        Name = 'last_modified'
        DataType = ftTimeStamp
      end
      item
        Name = 'date_added'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end>
    IndexDefs = <
      item
        Name = 'Tax_ZonesIXId'
        Fields = 'geo_zone_id'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'Tax_ZonesIXId'
    Params = <>
    ProviderName = 'DPTax_Zones'
    ReadOnly = True
    StoreDefs = True
    Left = 424
    Top = 648
    object Tax_Zonesgeo_zone_id: TIntegerField
      FieldName = 'geo_zone_id'
      Required = True
    end
    object Tax_Zonesgeo_zone_name: TStringField
      FieldName = 'geo_zone_name'
      Required = True
      Size = 32
    end
    object Tax_Zonesgeo_zone_description: TStringField
      FieldName = 'geo_zone_description'
      Required = True
      Size = 255
    end
    object Tax_Zoneslast_modified: TSQLTimeStampField
      FieldName = 'last_modified'
    end
    object Tax_Zonesdate_added: TSQLTimeStampField
      FieldName = 'date_added'
      Required = True
    end
  end
  object Tax_ZonesSRC: TDataSource
    DataSet = Tax_Zones
    Left = 424
    Top = 696
  end
  object SQLDSCities: TSQLDataSet
    GetMetadata = False
    CommandText = 'netshop_cities'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 616
    Top = 552
  end
  object DPCities: TDataSetProvider
    DataSet = SQLDSCities
    Left = 616
    Top = 600
  end
  object Cities: TClientDataSet
    Aggregates = <>
    FileName = 'database\cities.cds'
    FieldDefs = <
      item
        Name = 'Postcode'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 64
      end>
    IndexDefs = <
      item
        Name = 'CitiesIXPostcode'
        Fields = 'Postcode'
      end>
    IndexName = 'CitiesIXPostcode'
    Params = <>
    ProviderName = 'DPCities'
    ReadOnly = True
    StoreDefs = True
    Left = 620
    Top = 648
    object CitiesPostcode: TIntegerField
      FieldName = 'Postcode'
      Required = True
    end
    object CitiesName: TStringField
      FieldName = 'Name'
      Size = 64
    end
  end
  object CitiesSRC: TDataSource
    DataSet = Cities
    Left = 620
    Top = 696
  end
  object SQLDSLanguage: TSQLDataSet
    GetMetadata = False
    CommandText = 'languages'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 700
    Top = 552
  end
  object DPLanguages: TDataSetProvider
    DataSet = SQLDSLanguage
    Left = 700
    Top = 600
  end
  object Languages: TClientDataSet
    Aggregates = <>
    FileName = 'database\languages.cds'
    FieldDefs = <
      item
        Name = 'languages_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'code'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'image'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'directory'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'sort_order'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'CitiesIXPostcode'
        Fields = 'Postcode'
        Options = [ixPrimary, ixUnique]
      end>
    Params = <>
    ProviderName = 'DPLanguages'
    ReadOnly = True
    StoreDefs = True
    Left = 704
    Top = 648
    object Languageslanguages_id: TIntegerField
      FieldName = 'languages_id'
      Required = True
    end
    object Languagesname: TStringField
      FieldName = 'name'
      Size = 32
    end
    object Languagescode: TStringField
      FieldName = 'code'
      FixedChar = True
      Size = 2
    end
    object Languagesimage: TStringField
      FieldName = 'image'
      Size = 64
    end
    object Languagesdirectory: TStringField
      FieldName = 'directory'
      Size = 32
    end
    object Languagessort_order: TIntegerField
      FieldName = 'sort_order'
    end
  end
  object LanguagesSRC: TDataSource
    DataSet = Languages
    Left = 704
    Top = 696
  end
  object ExpensesSRC: TDataSource
    DataSet = Expenses
    Left = 1104
    Top = 196
  end
  object ProgressCreate: TJvProgressComponent
    OnShow = ProgressCreateModulebShow
    Left = 64
    Top = 208
  end
  object ProgressSync: TJvProgressComponent
    OnShow = ProgressSynchronisebShow
    Left = 64
    Top = 256
  end
  object ProgressSave: TJvProgressComponent
    OnShow = ProgressSaveModuleShow
    Left = 64
    Top = 304
  end
  object ProgressCheckPID: TJvProgressComponent
    OnShow = ProgressCheckPIDShow
    Left = 64
    Top = 360
  end
  object SQLDSCountriesToVat: TSQLDataSet
    GetMetadata = False
    CommandText = 'countries_to_vat'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 1280
    Top = 488
  end
  object DPCountries_To_Vat: TDataSetProvider
    DataSet = SQLDSCountriesToVat
    Left = 1280
    Top = 536
  end
  object Countries_To_Vat: TClientDataSet
    Aggregates = <>
    FileName = 'database\countries2vat.cds'
    Params = <>
    ProviderName = 'DPCountries_To_Vat'
    Left = 1280
    Top = 584
    object Countries_To_Vatcountries_to_vat_id: TIntegerField
      FieldName = 'countries_to_vat_id'
      Required = True
    end
    object Countries_To_Vatcountries_to_vat_iso: TStringField
      FieldName = 'countries_to_vat_iso'
      FixedChar = True
      Size = 3
    end
    object Countries_To_Vatcountries_to_vat_mask: TStringField
      FieldName = 'countries_to_vat_mask'
      Size = 32
    end
  end
  object SQLConnection: TSQLConnection
    ConnectionName = 'DBXL4MySQLConnection'
    DriverName = 'DBXL4MySQL'
    GetDriverFunc = 'getSQLDriverDBXL4Mysql'
    KeepConnection = False
    LibraryName = 'dbx4mysql.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DBXL4MySQL'
      'HostName=smartoys.be'
      'Database=c_smartoys'
      'User_Name=c_smartoys'
      'Password=FB5A21aD'
      'BlobSize=-1')
    VendorLib = 'libmysql.dll'
    Connected = True
    Left = 48
    Top = 20
  end
  object SQLDSAlerts: TSQLDataSet
    ParseSelectSql = SQLDSAlertsParseSelectSql
    SchemaName = 'c_smartoys'
    GetMetadata = False
    CommandText = 
      'select * from netshop_customers_alerts where ((customers_alerts_' +
      'customers_nbr>:minid)and( customers_alerts_customers_nbr<:maxid)' +
      ' );'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'minid'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'maxid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 1200
    Top = 24
  end
  object DPAlerts: TDataSetProvider
    DataSet = SQLDSAlerts
    BeforeUpdateRecord = DPAlertsBeforeUpdateRecord
    Left = 1200
    Top = 80
  end
  object Alerts: TClientDataSet
    Aggregates = <>
    FileName = 'database\alerts.cds'
    FieldDefs = <
      item
        Name = 'customers_alerts_customers_nbr'
        Attributes = [faRequired]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'customers_alerts_products_model'
        Attributes = [faRequired]
        DataType = ftString
        Size = 14
      end
      item
        Name = 'customers_alerts_products_name'
        Attributes = [faRequired]
        DataType = ftString
        Size = 64
      end
      item
        Name = 'customers_alerts_products_cat'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_alerts_date'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'customers_alerts_used'
        Attributes = [faRequired]
        DataType = ftSmallint
      end>
    IndexDefs = <
      item
        Name = 'AlertsIXCustomers'
        Fields = 'customers_alerts_customers_nbr'
      end
      item
        Name = 'AlertsIXModel'
        Expression = 'customers_alerts_products_model'
        Options = [ixExpression]
      end>
    Params = <>
    ProviderName = 'DPAlerts'
    StoreDefs = True
    OnCalcFields = AlertsCalcFields
    OnNewRecord = AlertsNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 1200
    Top = 128
    object Alertscustomers_alerts_customers_nbr: TStringField
      FieldName = 'customers_alerts_customers_nbr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object Alertscustomers_alerts_products_model: TStringField
      FieldName = 'customers_alerts_products_model'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 14
    end
    object Alertscustomers_alerts_products_name: TStringField
      FieldName = 'customers_alerts_products_name'
      Required = True
      Size = 64
    end
    object Alertscustomers_alerts_products_cat: TStringField
      FieldName = 'customers_alerts_products_cat'
      Size = 32
    end
    object Alertscustomers_alerts_used: TSmallintField
      FieldName = 'customers_alerts_used'
      Required = True
    end
    object Alertscustomers_alerts_date_disp: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'customers_alerts_date_disp'
      Calculated = True
    end
    object Alertscustomers_alerts_date: TFloatField
      FieldName = 'customers_alerts_date'
      Required = True
    end
  end
  object AlertsSRC: TDataSource
    DataSet = Alerts
    Left = 1192
    Top = 176
  end
  object SQLDSAlertsExt: TSQLDataSet
    SchemaName = 'c_smartoys'
    GetMetadata = False
    CommandText = 
      'select * from netshop_customers_alerts where not ((customers_ale' +
      'rts_customers_nbr>:minid)and( customers_alerts_customers_nbr<:ma' +
      'xid) );'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'minid'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'maxid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 1280
    Top = 32
  end
  object DPAlertsExt: TDataSetProvider
    DataSet = SQLDSAlertsExt
    Left = 1288
    Top = 88
  end
  object AlertsExt: TClientDataSet
    Aggregates = <>
    FileName = 'database\alertsext.cds'
    FieldDefs = <
      item
        Name = 'customers_alerts_customers_nbr'
        Attributes = [faRequired]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'customers_alerts_products_model'
        Attributes = [faRequired]
        DataType = ftString
        Size = 14
      end
      item
        Name = 'customers_alerts_products_name'
        Attributes = [faRequired]
        DataType = ftString
        Size = 64
      end
      item
        Name = 'customers_alerts_products_cat'
        DataType = ftString
        Size = 32
      end>
    IndexDefs = <
      item
        Name = 'AlertsIXCustomers'
        Fields = 'customers_alerts_customers_nbr'
      end
      item
        Name = 'AlertsIXModel'
        Expression = 'customers_alerts_products_model'
        Options = [ixExpression]
      end>
    Params = <>
    ProviderName = 'DPAlertsExt'
    StoreDefs = True
    Left = 1288
    Top = 136
    object StringField1: TStringField
      FieldName = 'customers_alerts_customers_nbr'
      Required = True
      Size = 8
    end
    object StringField2: TStringField
      FieldName = 'customers_alerts_products_model'
      Required = True
      Size = 14
    end
    object StringField3: TStringField
      FieldName = 'customers_alerts_products_name'
      Required = True
      Size = 64
    end
    object AlertsExtcustomers_alerts_products_cat: TStringField
      FieldName = 'customers_alerts_products_cat'
      Size = 32
    end
  end
  object AlertsExtSRC: TDataSource
    DataSet = AlertsExt
    Left = 1280
    Top = 184
  end
  object SQLDSWarranty: TSQLDataSet
    GetMetadata = False
    CommandText = 'netshop_warranty'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 792
    Top = 552
  end
  object DPWarranty: TDataSetProvider
    DataSet = SQLDSWarranty
    Left = 792
    Top = 600
  end
  object Warranty: TClientDataSet
    Aggregates = <>
    FileName = 'database\warranty.cds'
    FieldDefs = <
      item
        Name = 'warranty_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'warranty_validity'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'warranty_description'
        Attributes = [faRequired]
        DataType = ftString
        Size = 64
      end>
    IndexDefs = <
      item
        Name = 'WarrantyIXId'
        Fields = 'warranty_id'
      end>
    IndexName = 'WarrantyIXId'
    Params = <>
    ProviderName = 'DPWarranty'
    StoreDefs = True
    Left = 792
    Top = 648
    object Warrantywarranty_id: TIntegerField
      FieldName = 'warranty_id'
      Required = True
    end
    object Warrantywarranty_validity: TSmallintField
      FieldName = 'warranty_validity'
      Required = True
    end
    object Warrantywarranty_description: TStringField
      FieldName = 'warranty_description'
      Required = True
      Size = 64
    end
  end
  object WarrantySRC: TDataSource
    DataSet = Warranty
    Left = 792
    Top = 696
  end
  object Rent_late: TClientDataSet
    Aggregates = <>
    FileName = 'database\rentlate.cds'
    FieldDefs = <
      item
        Name = 'Customer_Nbr'
        DataType = ftInteger
      end
      item
        Name = 'Product_Model'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Date_Out'
        DataType = ftDate
      end
      item
        Name = 'Date_Due'
        DataType = ftDate
      end
      item
        Name = 'Overdue_Days'
        DataType = ftInteger
      end
      item
        Name = 'Overdue_Amont'
        DataType = ftCurrency
      end
      item
        Name = 'Product_Name'
        DataType = ftString
        Size = 64
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1184
    Top = 344
    object Rent_lateCustomer_Nbr: TIntegerField
      FieldName = 'Customer_Nbr'
    end
    object Rent_lateProduct_Model: TStringField
      FieldName = 'Product_Model'
      Size = 15
    end
    object Rent_lateDate_Out: TDateField
      FieldName = 'Date_Out'
    end
    object Rent_lateDate_Due: TDateField
      FieldName = 'Date_Due'
    end
    object Rent_lateOverdue_Days: TIntegerField
      FieldName = 'Overdue_Days'
    end
    object Rent_lateOverdue_Amont: TCurrencyField
      FieldName = 'Overdue_Amont'
    end
    object Rent_lateProduct_Name: TStringField
      FieldName = 'Product_Name'
      Size = 64
    end
  end
  object RentLateSRC: TDataSource
    DataSet = Shops
    Left = 1184
    Top = 392
  end
  object SQLDSMan2Sup: TSQLDataSet
    GetMetadata = False
    CommandText = 'netshop_man2sup'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 1392
    Top = 488
    object SQLDSMan2Supmanufactrers_id: TIntegerField
      FieldName = 'manufactrers_id'
      Required = True
    end
    object SQLDSMan2Supsuppliers_id: TIntegerField
      FieldName = 'suppliers_id'
      Required = True
    end
  end
  object Man2Sup: TClientDataSet
    Aggregates = <>
    FileName = 'database\man2sup.cds'
    Params = <>
    ProviderName = 'DPMan2Sup'
    Left = 1392
    Top = 592
    object Man2Supmanufactrers_id: TIntegerField
      FieldName = 'manufactrers_id'
      Required = True
    end
    object Man2Supsuppliers_id: TIntegerField
      FieldName = 'suppliers_id'
      Required = True
    end
  end
  object DPMan2Sup: TDataSetProvider
    DataSet = SQLDSMan2Sup
    Left = 1392
    Top = 536
  end
  object SQLDSExpenses: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select *  from `netshop_expenses` where `expenses_shop_id` = :sh' +
      'opid'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'shopid'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = SQLConnection
    Left = 1104
    Top = 32
    object SQLDSExpensesexpenses_id: TIntegerField
      FieldName = 'expenses_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSExpensesexpenses_shop_id: TIntegerField
      FieldName = 'expenses_shop_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSExpensesexpenses_date_time: TFloatField
      FieldName = 'expenses_date_time'
    end
    object SQLDSExpensesexpenses_amount: TFMTBCDField
      FieldName = 'expenses_amount'
      Precision = 10
      Size = 2
    end
    object SQLDSExpensesexpenses_description: TStringField
      FieldName = 'expenses_description'
      Size = 64
    end
  end
  object DPexpenses: TDataSetProvider
    DataSet = SQLDSExpenses
    UpdateMode = upWhereKeyOnly
    Left = 1104
    Top = 88
  end
  object Expenses: TClientDataSet
    Aggregates = <>
    FileName = 'database\expenses.cds'
    FieldDefs = <
      item
        Name = 'expenses_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'expenses_shop_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'expenses_date_time'
        DataType = ftFloat
      end
      item
        Name = 'expenses_amount'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'expenses_description'
        DataType = ftString
        Size = 64
      end>
    IndexDefs = <
      item
        Name = 'ExpensesIxDateTime'
        Fields = 'expenses_date_time'
        Options = [ixDescending]
      end>
    IndexName = 'ExpensesIxDateTime'
    Params = <>
    ProviderName = 'DPexpenses'
    StoreDefs = True
    OnCalcFields = ExpensesCalcFields
    OnNewRecord = ExpensesNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 1104
    Top = 144
    object Expensesexpenses_id: TIntegerField
      FieldName = 'expenses_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Expensesexpenses_shop_id: TIntegerField
      FieldName = 'expenses_shop_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Expensesexpenses_date_time: TFloatField
      FieldName = 'expenses_date_time'
    end
    object Expensesexpenses_description: TStringField
      FieldName = 'expenses_description'
      Size = 64
    end
    object Expensesexpenses_date_time_display: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'expenses_date_time_display'
      Calculated = True
    end
    object Expensesexpenses_amount: TFMTBCDField
      FieldName = 'expenses_amount'
      Precision = 10
      Size = 2
    end
  end
  object ProgressUpdate: TJvProgressComponent
    OnShow = ProgressUpdateShow
    Left = 64
    Top = 408
  end
  object SuppliersStockSRC: TDataSource
    DataSet = SuppliersStock
    Left = 756
    Top = 380
  end
  object mesgMessage: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 56
    Top = 827
  end
  object smtpSendMail: TIdSMTP
    AuthType = atNone
    SASLMechanisms = <>
    Left = 56
    Top = 776
  end
  object thrdMail: TIdThreadComponent
    Active = False
    Loop = False
    Priority = tpNormal
    StopMode = smTerminate
    OnRun = thrdMailRun
    Left = 160
    Top = 776
  end
  object SQLDSAllShops: TSQLDataSet
    GetMetadata = False
    CommandText = 'Select * from netshop_shops'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 1368
    Top = 32
    object IntegerField1: TIntegerField
      FieldName = 'shops_id'
      Required = True
    end
    object StringField4: TStringField
      FieldName = 'shops_name'
      Size = 50
    end
    object IntegerField2: TIntegerField
      FieldName = 'shops_customers_id'
    end
    object StringField5: TStringField
      FieldName = 'shops_title'
      Size = 50
    end
    object StringField6: TStringField
      FieldName = 'shops_adress_one'
      Size = 50
    end
    object StringField7: TStringField
      FieldName = 'shops_adress_two'
      Size = 50
    end
    object StringField8: TStringField
      FieldName = 'shops_phone'
    end
    object MemoField1: TMemoField
      FieldName = 'shops_map_url'
      BlobType = ftMemo
      Size = 1
    end
    object StringField9: TStringField
      FieldName = 'shops_schedule_1'
      Size = 17
    end
    object StringField10: TStringField
      FieldName = 'shops_schedule_2'
      Size = 17
    end
    object StringField11: TStringField
      FieldName = 'shops_schedule_3'
      Size = 17
    end
    object StringField12: TStringField
      FieldName = 'shops_schedule_4'
      Size = 17
    end
    object StringField13: TStringField
      FieldName = 'shops_schedule_5'
      Size = 17
    end
    object StringField14: TStringField
      FieldName = 'shops_schedule_6'
      Size = 17
    end
    object StringField15: TStringField
      FieldName = 'shops_schedule_7'
      Size = 17
    end
    object StringField16: TStringField
      FieldName = 'shops_manager_name'
      Size = 30
    end
    object StringField17: TStringField
      FieldName = 'shops_manager_email'
      Size = 30
    end
    object StringField18: TStringField
      FieldName = 'shops_picture_url'
      Size = 50
    end
    object IntegerField3: TIntegerField
      FieldName = 'shops_zone_id'
    end
    object IntegerField4: TIntegerField
      FieldName = 'shops_country_id'
    end
    object StringField19: TStringField
      FieldName = 'shops_logo_url'
      Size = 50
    end
    object IntegerField5: TIntegerField
      FieldName = 'shops_group_id'
    end
    object MemoField2: TMemoField
      FieldName = 'shops_details'
      BlobType = ftMemo
      Size = 1
    end
    object StringField20: TStringField
      FieldName = 'shops_TVA'
      Size = 32
    end
    object StringField21: TStringField
      FieldName = 'shops_registry'
      Size = 32
    end
    object StringField22: TStringField
      FieldName = 'shops_bank'
      Size = 32
    end
  end
  object DPAllShops: TDataSetProvider
    DataSet = SQLDSAllShops
    Left = 1368
    Top = 88
  end
  object AllShops: TClientDataSet
    Aggregates = <>
    FileName = 'database\allshops.cds'
    Params = <>
    ProviderName = 'DPAllShops'
    Left = 1368
    Top = 144
  end
  object SQLQuery: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 176
    Top = 240
  end
  object SQLDSCashClose: TSQLDataSet
    GetMetadata = False
    CommandText = 'Select * from netshop_cashclose where cashclose_shopid = :shopid'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'shopid'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = SQLConnection
    Left = 1456
    Top = 32
    object SQLDSCashClosecashclose_shopid: TIntegerField
      FieldName = 'cashclose_shopid'
      Required = True
    end
    object SQLDSCashClosecashclose_amountleft: TFMTBCDField
      FieldName = 'cashclose_amountleft'
      Required = True
      Precision = 10
      Size = 2
    end
    object SQLDSCashClosecashclose_amountout: TFMTBCDField
      FieldName = 'cashclose_amountout'
      Required = True
      Precision = 10
      Size = 2
    end
    object SQLDSCashClosecashclose_datetime: TFloatField
      FieldName = 'cashclose_datetime'
      Required = True
    end
    object SQLDSCashClosecashclose_operator: TStringField
      FieldName = 'cashclose_operator'
      Required = True
      Size = 32
    end
  end
  object DPCashClose: TDataSetProvider
    DataSet = SQLDSCashClose
    Left = 1456
    Top = 88
  end
  object CDSCashClose: TClientDataSet
    Aggregates = <>
    FileName = 'database\cashclose.cds'
    FieldDefs = <
      item
        Name = 'cashclose_shopid'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'cashclose_amountleft'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'cashclose_amountout'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'cashclose_datetime'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'cashclose_operator'
        Attributes = [faRequired]
        DataType = ftString
        Size = 32
      end>
    IndexDefs = <
      item
        Name = 'CDSCashCloseIXDate'
        Fields = 'cashclose_datetime'
      end>
    IndexName = 'CDSCashCloseIXDate'
    Params = <>
    ProviderName = 'DPCashClose'
    StoreDefs = True
    OnNewRecord = CDSCashCloseNewRecord
    Left = 1456
    Top = 144
    object CDSCashClosecashclose_shopid: TIntegerField
      FieldName = 'cashclose_shopid'
      Required = True
    end
    object CDSCashClosecashclose_amountleft: TFMTBCDField
      FieldName = 'cashclose_amountleft'
      Required = True
      Precision = 10
      Size = 2
    end
    object CDSCashClosecashclose_amountout: TFMTBCDField
      FieldName = 'cashclose_amountout'
      Required = True
      Precision = 10
      Size = 2
    end
    object CDSCashClosecashclose_datetime: TFloatField
      FieldName = 'cashclose_datetime'
      Required = True
    end
    object CDSCashClosecashclose_operator: TStringField
      FieldName = 'cashclose_operator'
      Required = True
      Size = 32
    end
  end
  object CashCloseSRC: TDataSource
    DataSet = CDSCashClose
    Left = 1448
    Top = 208
  end
end
