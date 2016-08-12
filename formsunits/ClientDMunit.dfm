object RemoteDB: TRemoteDB
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 1006
  Width = 2067
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
  object StockSRC: TDataSource
    DataSet = netshop_stock
    Left = 360
    Top = 160
  end
  object SalesSRC: TDataSource
    DataSet = netshop_sales
    Left = 288
    Top = 160
  end
  object Items_SoldSRC: TDataSource
    DataSet = netshop_items_sold
    Left = 448
    Top = 160
  end
  object Products: TClientDataSet
    Aggregates = <>
    FileName = 'database\products.cds'
    FieldDefs = <
      item
        Name = 'products_model'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'products_id'
        DataType = ftFMTBcd
        Precision = 20
        Size = 4
      end
      item
        Name = 'products_CLD_id'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'products_quantity'
        DataType = ftInteger
      end
      item
        Name = 'products_image'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'products_price'
        DataType = ftFMTBcd
        Precision = 17
        Size = 4
      end
      item
        Name = 'products_price_old'
        DataType = ftFMTBcd
        Precision = 17
        Size = 4
      end
      item
        Name = 'products_price_changed'
        DataType = ftTimeStamp
      end
      item
        Name = 'products_date_added'
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
        DataType = ftShortint
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
        DataType = ftInteger
      end
      item
        Name = 'products_ispreview'
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
        DataType = ftString
        Size = 5
      end
      item
        Name = 'products_warranty_id'
        DataType = ftInteger
      end
      item
        Name = 'products_street_block'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'products_cldprice'
        DataType = ftFMTBcd
        Precision = 16
        Size = 4
      end
      item
        Name = 'products_used_price'
        DataType = ftFMTBcd
        Precision = 17
        Size = 4
      end
      item
        Name = 'products_intername'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'products_cld_stock'
        DataType = ftInteger
      end
      item
        Name = 'products_esd'
        DataType = ftInteger
      end
      item
        Name = 'products_posa'
        DataType = ftInteger
      end
      item
        Name = 'products_points'
        DataType = ftFMTBcd
        Precision = 17
        Size = 4
      end
      item
        Name = 'categories_id'
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
        Fields = 'products_intername'
      end>
    IndexName = 'ProductsIXModel'
    Params = <>
    ProviderName = 'DPProducts'
    StoreDefs = True
    AfterEdit = ProductsAfterEdit
    AfterPost = ProductsAfterPost
    AfterDelete = GenericAfterPost
    OnCalcFields = ProductsCalcFields
    OnNewRecord = ProductsNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 272
    Top = 332
    object Productscategories_id: TIntegerField
      FieldName = 'categories_id'
      Required = True
      OnChange = Productscategories_idChange
    end
    object Productsproducts_model: TStringField
      FieldName = 'products_model'
      OnChange = Productsproducts_modelChange
      Size = 15
    end
    object Productsproducts_active: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'products_active'
      OnSetText = Productsproducts_activeSetText
      Calculated = True
    end
    object Productsproducts_CLD_id: TStringField
      FieldName = 'products_CLD_id'
      Size = 16
    end
    object Productsproducts_quantity: TIntegerField
      FieldName = 'products_quantity'
    end
    object Productsproducts_image: TStringField
      FieldName = 'products_image'
      Size = 64
    end
    object Productsproducts_price: TFMTBCDField
      FieldName = 'products_price'
      Precision = 17
      Size = 4
    end
    object Productsproducts_price_old: TFMTBCDField
      FieldName = 'products_price_old'
      Precision = 17
      Size = 4
    end
    object Productsproducts_price_changed: TSQLTimeStampField
      FieldName = 'products_price_changed'
    end
    object Productsproducts_date_added: TSQLTimeStampField
      FieldName = 'products_date_added'
    end
    object Productsproducts_weight: TFMTBCDField
      FieldName = 'products_weight'
      Precision = 7
      Size = 2
    end
    object Productsproducts_status: TShortintField
      FieldName = 'products_status'
    end
    object Productsproducts_tax_class_id: TIntegerField
      FieldName = 'products_tax_class_id'
    end
    object Productsmanufacturers_id: TIntegerField
      FieldName = 'manufacturers_id'
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
    end
    object Productsproducts_ispreview: TStringField
      FieldName = 'products_ispreview'
      Size = 5
    end
    object Productsproducts_root_category_name: TStringField
      FieldName = 'products_root_category_name'
      Size = 32
    end
    object Productsproducts_isobsolete: TStringField
      FieldName = 'products_isobsolete'
      Size = 5
    end
    object Productsproducts_warranty_id: TIntegerField
      FieldName = 'products_warranty_id'
    end
    object Productsproducts_street_block: TStringField
      FieldName = 'products_street_block'
      Size = 5
    end
    object Productsproducts_cldprice: TFMTBCDField
      FieldName = 'products_cldprice'
      Precision = 16
      Size = 4
    end
    object Productsproducts_used_price: TFMTBCDField
      FieldName = 'products_used_price'
      Precision = 17
      Size = 4
    end
    object Productsproducts_intername: TStringField
      FieldName = 'products_intername'
      Size = 32
    end
    object Productsproducts_cld_stock: TIntegerField
      FieldName = 'products_cld_stock'
    end
    object Productsproducts_esd: TIntegerField
      FieldName = 'products_esd'
    end
    object Productsproducts_points: TFMTBCDField
      FieldName = 'products_points'
      Precision = 17
      Size = 4
    end
    object Productsproducts_price_allin: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'products_price_allin'
      Calculated = True
    end
    object Productsproducts_id: TFMTBCDField
      FieldName = 'products_id'
      Precision = 20
      Size = 0
    end
    object Productsproducts_posa: TIntegerField
      FieldName = 'products_posa'
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
    FieldDefs = <>
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
  object netshop_stock: TClientDataSet
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
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    OnCalcFields = netshop_stockCalcFields
    OnNewRecord = netshop_stockNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 360
    Top = 112
    object netshop_stockid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object netshop_stockproduct_model: TStringField
      FieldName = 'product_model'
      Required = True
      Size = 15
    end
    object netshop_stockproduct_name: TStringField
      FieldName = 'product_name'
      Size = 32
    end
    object netshop_stockproduct_owner_id: TIntegerField
      FieldName = 'product_owner_id'
      Required = True
    end
    object netshop_stockproduct_price_stock: TFMTBCDField
      FieldName = 'product_price_stock'
      DisplayFormat = '#,##0.00'
      currency = True
      Precision = 10
      Size = 2
    end
    object netshop_stockproduct_location: TIntegerField
      FieldName = 'product_location'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object netshop_stockproduct_quantity: TIntegerField
      FieldName = 'product_quantity'
    end
    object netshop_stockproduct_supplier_id: TIntegerField
      FieldName = 'product_supplier_id'
    end
    object netshop_stockproduct_date_in: TStringField
      FieldName = 'product_date_in'
      Size = 8
    end
    object netshop_stockproduct_price_gross: TFMTBCDField
      FieldName = 'product_price_gross'
      Precision = 10
      Size = 2
    end
    object netshop_stockproduct_isdefect: TIntegerField
      FieldName = 'product_isdefect'
      Required = True
    end
    object netshop_stockproduct_price_gross_total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'product_price_gross_total'
      Calculated = True
    end
    object netshop_stockproduct_date_in_display: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'product_date_in_display'
      Calculated = True
    end
    object netshop_stockproduct_price_stock_total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'product_price_stock_total'
      DisplayFormat = '#,##0.00'
      currency = True
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
        Name = 'archive_id'
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
    object Categoriesarchive_id: TIntegerField
      FieldName = 'archive_id'
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
      'select c.categories_id, c.archive_id, c.categories_image, c.pare' +
      'nt_id, c.sort_order, c.date_added, c.last_modified, c.show_in_ne' +
      'ws, c.categories_icon_url, cd.language_id, cd.categories_name fr' +
      'om categories c, categories_description cd where c.categories_id' +
      '=cd.categories_id and cd.language_id=1'
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
    SchemaName = 'gomedia'
    GetMetadata = False
    CommandText = 
      'Select '#13#10'ns.`shops_id`, '#13#10'nsd.`shops_name`, '#13#10'ns.`shops_customer' +
      's_id`, '#13#10'nsd.`shops_title`, '#13#10'nsd.`shops_adress_one`, '#13#10'nsd.`sho' +
      'ps_adress_two`, '#13#10'`shops_postcode`, '#13#10'nsd.`shops_city`, '#13#10'nsd.`s' +
      'hops_phone`, '#13#10'nsd.`shops_manager_email`, '#13#10'`shops_zone_id`, '#13#10'`' +
      'shops_country_id`, '#13#10'`shops_group_id`, '#13#10'`shops_TVA`, '#13#10'nsd.`sho' +
      'ps_registry`, '#13#10'`shops_bank`, '#13#10'`shops_visible`, '#13#10'`shops_cld_id' +
      '`, '#13#10'`shops_region`, '#13#10'`shops_voip_nbr`, '#13#10'`shops_wb_custacc`, '#13 +
      #10'`shops_wb_cashbook`, '#13#10'`shops_wb_bctacc`, '#13#10'`shops_wb_invbook`,' +
      ' '#13#10'`shops_wb_cashacc`, '#13#10'ns.`shops_language_id`'#13#10' from netshop_s' +
      'hops ns'#13#10' inner join netshop_shops_description nsd on nsd.shops_' +
      'id = ns.shops_id and nsd.shops_language_id = ns.shops_language_i' +
      'd'#13#10' where (shops_group_id = :shopgroupid) or (ns.shops_id=100)'
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
    SchemaName = 'gomedia'
    GetMetadata = False
    CommandText = 
      'SELECT'#13#10'`id`, '#13#10'`product_model`, '#13#10'`product_owner_id`, '#13#10'`produc' +
      't_price_stock`, '#13#10'`product_origin`, '#13#10'`product_destination`, '#13#10'`' +
      'product_quantity`, '#13#10'`product_supplier_id`, '#13#10'`product_date_in`,' +
      ' '#13#10'`product_price_gross`, '#13#10'`date_time`'#13#10'FROM '#13#10' netshop_transfe' +
      'r '#13#10'WHERE '#13#10'product_destination=:shopid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'shopid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 832
    Top = 224
  end
  object DPTransfer: TDataSetProvider
    DataSet = SQLDSTransfer
    Left = 832
    Top = 272
  end
  object netshop_transfer: TClientDataSet
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
      end
      item
        Name = 'date_time'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'TransferIXModelOwnerSupplier'
        Fields = 'product_model;product_owner_id;product_supplier_id'
      end
      item
        Name = 'TransferIXModelOwner'
        Fields = 'product_model;product_owner_id'
      end>
    Params = <>
    ProviderName = 'DPTransfer'
    StoreDefs = True
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    OnNewRecord = netshop_transferNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 832
    Top = 328
    object netshop_transferid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object netshop_transferproduct_model: TStringField
      FieldName = 'product_model'
      Size = 15
    end
    object netshop_transferproduct_owner_id: TIntegerField
      FieldName = 'product_owner_id'
    end
    object netshop_transferproduct_origin: TIntegerField
      FieldName = 'product_origin'
    end
    object netshop_transferproduct_destination: TIntegerField
      FieldName = 'product_destination'
    end
    object netshop_transferproduct_quantity: TIntegerField
      FieldName = 'product_quantity'
    end
    object netshop_transferproduct_supplier_id: TIntegerField
      FieldName = 'product_supplier_id'
    end
    object netshop_transferproduct_date_in: TStringField
      FieldName = 'product_date_in'
      Size = 8
    end
    object netshop_transferproduct_price_stock: TFMTBCDField
      FieldName = 'product_price_stock'
      Precision = 10
      Size = 2
    end
    object netshop_transferproduct_price_gross: TFMTBCDField
      FieldName = 'product_price_gross'
      Precision = 10
      Size = 2
    end
    object netshop_transferdate_time: TFloatField
      FieldName = 'date_time'
      Required = True
    end
  end
  object SQLDSProducts: TSQLDataSet
    SchemaName = 'gomedia'
    CommandText = 
      'SELECT'#13#10'p.products_model,'#13#10'p.products_id,'#13#10'p.products_CLD_id,'#13#10'p' +
      '.products_quantity,'#13#10'p.products_image,'#13#10'p.products_price,'#13#10'p.pro' +
      'ducts_price_old,'#13#10'p.products_price_changed,'#13#10'p.products_date_add' +
      'ed,'#13#10'p.products_weight,'#13#10'p.products_status,'#13#10'p.products_tax_clas' +
      's_id,'#13#10'p.manufacturers_id,'#13#10'p.products_promo,'#13#10'p.products_stock_' +
      'managed,'#13#10'p.products_date_available,'#13#10'p.products_last_modified,'#13 +
      #10'p.products_ordered,'#13#10'p.products_ispreview,'#13#10'p.products_root_cat' +
      'egory_name,'#13#10'p.products_isobsolete,'#13#10'p.products_warranty_id,'#13#10'p.' +
      'products_street_block,'#13#10'p.products_cldprice,'#13#10'p.products_used_pr' +
      'ice,'#13#10'p.products_intername,'#13#10'p.products_cld_stock,'#13#10'p.products_e' +
      'sd,'#13#10'p.products_posa,'#13#10'p.products_points,'#13#10'p2c.categories_id'#13#10'FR' +
      'OM'#13#10'products p'#13#10'LEFT OUTER JOIN products_to_categories p2c ON (p' +
      '.products_id=p2c.products_id);'
    MaxBlobSize = 1
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
    DataSet = customers
    Left = 524
    Top = 384
  end
  object SQLDSSales: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT '#13#10'`sales_date_time`, `sales_paid_cash`, `sales_paid_bct`,' +
      ' `sales_paid_proton`, `sales_paid_visa`, `sales_paid_voucher`, `' +
      'sales_customer_id`, `sales_location`, `sales_id`, `sql_date_time' +
      '`, sales_invoiced'#13#10'FROM'#13#10' netshop_sales   '#13#10'WHERE  ( sales_locat' +
      'ion = :shopid and ( ( sales_id = 0 ) or (sales_date_time > :date' +
      'limit and sales_date_time < 999999 )))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'shopid'
        ParamType = ptInput
        Size = 2
        Value = '2'
      end
      item
        DataType = ftString
        Name = 'datelimit'
        ParamType = ptInput
        Size = 6
        Value = '40000'
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
  object netshop_sales: TClientDataSet
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
      end
      item
        Name = 'sql_date_time'
        DataType = ftTimeStamp
      end
      item
        Name = 'sales_invoiced'
        Attributes = [faRequired]
        DataType = ftShortint
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
    AfterOpen = netshop_salesAfterOpen
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    AfterRefresh = netshop_salesAfterOpen
    OnCalcFields = netshop_salesCalcFields
    OnNewRecord = netshop_salesNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 288
    Top = 112
    object netshop_salessales_location: TIntegerField
      FieldName = 'sales_location'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object netshop_salessales_id: TIntegerField
      FieldName = 'sales_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object netshop_salessales_date_time: TFloatField
      DisplayWidth = 15
      FieldName = 'sales_date_time'
      Required = True
    end
    object netshop_salessales_date_time_value: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'sales_date_time_value'
      Calculated = True
    end
    object netshop_salessales_customer_id: TIntegerField
      FieldName = 'sales_customer_id'
    end
    object netshop_salessales_paid_total: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'sales_paid_total'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object netshop_salessales_paid_htva: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'sales_paid_htva'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object netshop_salessales_paid_tva: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'sales_paid_tva'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object netshop_salessales_paid_cash: TFMTBCDField
      FieldName = 'sales_paid_cash'
      Precision = 10
      Size = 2
    end
    object netshop_salessales_paid_bct: TFMTBCDField
      FieldName = 'sales_paid_bct'
      Precision = 10
      Size = 2
    end
    object netshop_salessales_paid_proton: TFMTBCDField
      FieldName = 'sales_paid_proton'
      Precision = 10
      Size = 2
    end
    object netshop_salessales_paid_visa: TFMTBCDField
      FieldName = 'sales_paid_visa'
      Precision = 10
      Size = 2
    end
    object netshop_salessales_paid_voucher: TFMTBCDField
      FieldName = 'sales_paid_voucher'
      Precision = 10
      Size = 2
    end
    object netshop_salessql_date_time: TSQLTimeStampField
      FieldName = 'sql_date_time'
    end
    object netshop_salessales_invoiced: TShortintField
      FieldName = 'sales_invoiced'
      Required = True
    end
  end
  object Inventory: TClientDataSet
    Aggregates = <>
    FileName = 'database\inventory.cds'
    FieldDefs = <
      item
        Name = 'product_model'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'product_owner_id'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'product_price_stock'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 10
        Size = 2
      end
      item
        Name = 'product_location'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'product_quantity'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'product_supplier_id'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'product_date_in'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'product_price_gross'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 10
        Size = 2
      end
      item
        Name = 'product_name'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'InventoryIndexModel'
        Expression = 'product_model'
        Options = [ixExpression]
      end>
    IndexName = 'InventoryIndexModel'
    Params = <>
    StoreDefs = True
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    OnCalcFields = InventoryCalcFields
    Left = 988
    Top = 264
    object Inventoryproduct_model: TStringField
      FieldName = 'product_model'
      Size = 15
    end
    object Inventoryproduct_owner_id: TIntegerField
      FieldName = 'product_owner_id'
    end
    object Inventoryproduct_price_stock: TBCDField
      FieldName = 'product_price_stock'
      Precision = 10
      Size = 2
    end
    object Inventoryproduct_location: TIntegerField
      FieldName = 'product_location'
    end
    object Inventoryproduct_quantity: TIntegerField
      FieldName = 'product_quantity'
    end
    object Inventoryproduct_supplier_id: TIntegerField
      FieldName = 'product_supplier_id'
    end
    object Inventoryproduct_date_in: TStringField
      FieldName = 'product_date_in'
      Size = 8
    end
    object Inventoryproduct_price_gross: TBCDField
      FieldName = 'product_price_gross'
      Precision = 10
      Size = 2
    end
    object Inventoryproduct_name: TStringField
      FieldName = 'product_name'
    end
    object Inventoryproduct_price_gross_total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'product_price_gross_total'
      Calculated = True
    end
  end
  object InventorySRC: TDataSource
    DataSet = Inventory
    Left = 988
    Top = 312
  end
  object InventoryErrors: TClientDataSet
    Aggregates = <>
    FileName = 'database\inventory_errors.cds'
    FieldDefs = <
      item
        Name = 'product_model'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'product_owner_id'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'product_price_stock'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 10
        Size = 2
      end
      item
        Name = 'product_location'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'product_quantity'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'product_supplier_id'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'product_date_in'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'product_price_gross'
        Attributes = [faUnNamed]
        DataType = ftBCD
        Precision = 10
        Size = 2
      end
      item
        Name = 'product_name'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    OnCalcFields = InventoryErrorsCalcFields
    Left = 1060
    Top = 264
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
    object InventoryErrorsproduct_price_gross_total: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'product_price_gross_total'
      Calculated = True
    end
  end
  object InventoryErrorsSRC: TDataSource
    DataSet = InventoryErrors
    Left = 1060
    Top = 312
  end
  object SQLDSItemsSold: TSQLDataSet
    SchemaName = 'gomedia'
    GetMetadata = False
    CommandText = 
      'SELECT '#13#10'`items_sold_id`, '#13#10'`items_sold_sales_location`, '#13#10'`item' +
      's_sold_sales_id`, '#13#10'`items_sold_model`, '#13#10'`items_sold_name`, '#13#10'`' +
      'items_sold_quantity`, '#13#10'`items_sold_price_gross`, '#13#10'`items_sold_' +
      'price_ht`, '#13#10'`items_sold_price_catalog`, '#13#10'`items_sold_price_sto' +
      'ck`, '#13#10'`items_sold_owner_id`, '#13#10'`items_sold_supplier_id`, '#13#10'`ite' +
      'ms_sold_date_in`, '#13#10'`items_refunded`,'#13#10'`items_sold_esd`,'#13#10'`items' +
      '_sold_esd_guid`,'#13#10'`items_sold_loyalty`    '#13#10'FROM'#13#10' netshop_items' +
      '_sold where (items_sold_sales_location = :shopid) and (((items_s' +
      'old_sales_id >= :sales_id_min))or(items_sold_sales_id = 0))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'shopid'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'sales_id_min'
        ParamType = ptInput
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
    object SQLDSItemsSolditems_sold_esd: TStringField
      FieldName = 'items_sold_esd'
      Size = 64
    end
    object SQLDSItemsSolditems_sold_loyalty: TIntegerField
      FieldName = 'items_sold_loyalty'
      Required = True
    end
    object strngfldSQLDSItemsSolditems_sold_esd_guid: TStringField
      FieldName = 'items_sold_esd_guid'
      Size = 64
    end
  end
  object DPItemsSold: TDataSetProvider
    DataSet = SQLDSItemsSold
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DPItemsSoldBeforeUpdateRecord
    Left = 452
    Top = 64
  end
  object netshop_items_sold: TClientDataSet
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
      end
      item
        Name = 'items_sold_esd'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'items_sold_loyalty'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'items_sold_esd_guid'
        DataType = ftString
        Size = 64
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
    BeforePost = netshop_items_soldBeforePost
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    OnCalcFields = netshop_items_soldCalcFields
    OnNewRecord = netshop_items_soldNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 448
    Top = 112
    object netshop_items_solditems_sold_id: TIntegerField
      FieldName = 'items_sold_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object netshop_items_solditems_sold_sales_location: TIntegerField
      FieldName = 'items_sold_sales_location'
      Required = True
    end
    object netshop_items_solditems_sold_sales_id: TIntegerField
      FieldName = 'items_sold_sales_id'
      Required = True
    end
    object netshop_items_solditems_sold_model: TStringField
      FieldName = 'items_sold_model'
      Size = 15
    end
    object netshop_items_solditems_sold_name: TStringField
      FieldName = 'items_sold_name'
      Size = 32
    end
    object netshop_items_solditems_sold_quantity: TIntegerField
      FieldName = 'items_sold_quantity'
    end
    object netshop_items_solditems_sold_owner_id: TIntegerField
      FieldName = 'items_sold_owner_id'
      Required = True
    end
    object netshop_items_solditems_sold_supplier_id: TIntegerField
      FieldName = 'items_sold_supplier_id'
    end
    object netshop_items_solditems_sold_date_in: TStringField
      FieldName = 'items_sold_date_in'
      Size = 8
    end
    object netshop_items_solditems_refunded: TIntegerField
      FieldName = 'items_refunded'
    end
    object netshop_items_solditems_sold_price_stock_tot: TBCDField
      FieldKind = fkCalculated
      FieldName = 'items_sold_price_stock_tot'
      currency = True
      Calculated = True
    end
    object netshop_items_solditems_sold_price_gross: TFMTBCDField
      FieldName = 'items_sold_price_gross'
      DisplayFormat = '#,##0.00'
      currency = True
      Precision = 10
      Size = 2
    end
    object netshop_items_solditems_sold_price_ht: TFMTBCDField
      FieldName = 'items_sold_price_ht'
      DisplayFormat = '#,##0.00'
      currency = True
      Precision = 10
      Size = 2
    end
    object netshop_items_solditems_sold_price_catalog: TFMTBCDField
      FieldName = 'items_sold_price_catalog'
      DisplayFormat = '#,##0.00'
      currency = True
      Precision = 10
      Size = 2
    end
    object netshop_items_solditems_sold_price_stock: TFMTBCDField
      FieldName = 'items_sold_price_stock'
      DisplayFormat = '#,##0.00'
      currency = True
      Precision = 10
      Size = 2
    end
    object netshop_items_solditems_sold_esd: TStringField
      FieldName = 'items_sold_esd'
      Size = 64
    end
    object netshop_items_solditems_sold_loyalty: TIntegerField
      FieldName = 'items_sold_loyalty'
      Required = True
    end
    object strngfld_items_solditems_sold_esd_guid: TStringField
      FieldName = 'items_sold_esd_guid'
      Size = 64
    end
  end
  object TipsSRC: TDataSource
    DataSet = Tips
    Left = 1132
    Top = 312
  end
  object SQLDSStock: TSQLDataSet
    SchemaName = 'gomedia'
    GetMetadata = False
    CommandText = 
      'select'#13#10' `id`, `product_date_in`, `product_isdefect`, `product_l' +
      'ocation`, `product_model`, `product_name`, `product_owner_id`, `' +
      'product_price_gross`, `product_price_stock`, `product_quantity`,' +
      ' `product_supplier_id`  '#13#10'from netshop_stock where product_locat' +
      'ion = :shopid'
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
    Enabled = False
    Interval = 300000
    OnTimer = TimerSaveDBTimer
    Left = 48
    Top = 60
  end
  object SQLDSRepair: TSQLDataSet
    SchemaName = 'gomedia'
    GetMetadata = False
    CommandText = 
      'select '#13#10'`repair_shop_id`, '#13#10'`repair_id`, '#13#10'`repair_customer_nbr' +
      '`, '#13#10'`repair_products_model`, '#13#10'`repair_products_name`, '#13#10'`repai' +
      'r_products_serial`, '#13#10'`repair_products_problem`, '#13#10'`repair_price' +
      '`, '#13#10'`repair_fixed`, '#13#10'`repair_returned`, '#13#10'`repair_date_in`, '#13#10 +
      '`repair_date_fixed`, '#13#10'`repair_date_out` '#13#10'from netshop_repair w' +
      'here repair_shop_id=:shopid'
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
  object netshop_repair: TClientDataSet
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
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    OnCalcFields = netshop_repairCalcFields
    OnNewRecord = netshop_repairNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 636
    Top = 116
    object netshop_repairrepair_shop_id: TIntegerField
      FieldName = 'repair_shop_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object netshop_repairrepair_id: TIntegerField
      FieldName = 'repair_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object netshop_repairrepair_customer_nbr: TIntegerField
      FieldName = 'repair_customer_nbr'
      Required = True
    end
    object netshop_repairrepair_products_model: TStringField
      FieldName = 'repair_products_model'
      Required = True
      Size = 15
    end
    object netshop_repairrepair_products_name: TStringField
      DisplayWidth = 64
      FieldName = 'repair_products_name'
      Size = 64
    end
    object netshop_repairrepair_products_serial: TStringField
      FieldName = 'repair_products_serial'
      Size = 32
    end
    object netshop_repairrepair_products_problem: TStringField
      FieldName = 'repair_products_problem'
      Size = 64
    end
    object netshop_repairrepair_price: TFloatField
      FieldName = 'repair_price'
    end
    object netshop_repairrepair_fixed: TStringField
      FieldName = 'repair_fixed'
      FixedChar = True
      Size = 5
    end
    object netshop_repairrepair_returned: TStringField
      FieldName = 'repair_returned'
      FixedChar = True
      Size = 5
    end
    object netshop_repairrepair_date_in: TFloatField
      FieldName = 'repair_date_in'
    end
    object netshop_repairrepair_date_fixed: TFloatField
      FieldName = 'repair_date_fixed'
    end
    object netshop_repairrepair_date_out: TFloatField
      FieldName = 'repair_date_out'
    end
    object netshop_repairrepair_date_in_display: TDateField
      FieldKind = fkCalculated
      FieldName = 'repair_date_in_display'
      Calculated = True
    end
    object netshop_repairrepair_date_our_display: TDateField
      FieldKind = fkCalculated
      FieldName = 'repair_date_out_display'
      Calculated = True
    end
    object netshop_repairrepair_date_fixed_display: TDateField
      FieldKind = fkCalculated
      FieldName = 'repair_date_fixed_display'
      Calculated = True
    end
  end
  object RepairSRC: TDataSource
    DataSet = netshop_repair
    Left = 636
    Top = 160
  end
  object SQLDSRefunds: TSQLDataSet
    SchemaName = 'gomedia'
    GetMetadata = False
    CommandText = 
      'select '#13#10'refunds_id, '#13#10'refunds_amount, '#13#10'refunds_items_id, '#13#10'ref' +
      'unds_date_time, '#13#10'refunds_customer_nbr, '#13#10'refunds_nature, '#13#10'refu' +
      'nds_shop_id,'#13#10'refunds_signature'#13#10' from netshop_refunds where ref' +
      'unds_shop_id=:shopid'
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
    object SQLDSRefundsrefunds_amount: TFloatField
      FieldName = 'refunds_amount'
    end
    object SQLDSRefundsrefunds_signature: TBlobField
      FieldName = 'refunds_signature'
      Size = -1
    end
  end
  object DPRefunds: TDataSetProvider
    DataSet = SQLDSRefunds
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DPRefundsBeforeUpdateRecord
    Left = 212
    Top = 64
  end
  object netshop_refunds: TClientDataSet
    Aggregates = <>
    FileName = 'database\refunds.cds'
    FieldDefs = <
      item
        Name = 'refunds_id'
        Attributes = [faRequired]
        DataType = ftInteger
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
      end
      item
        Name = 'refunds_amount'
        DataType = ftFloat
      end
      item
        Name = 'refunds_signature'
        DataType = ftBlob
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
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    OnCalcFields = netshop_refundsCalcFields
    OnNewRecord = netshop_refundsNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 212
    Top = 112
    object netshop_refundsrefunds_id: TIntegerField
      FieldName = 'refunds_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object netshop_refundsrefunds_items_id: TIntegerField
      FieldName = 'refunds_items_id'
    end
    object netshop_refundsrefunds_date_time: TFloatField
      FieldName = 'refunds_date_time'
    end
    object netshop_refundsrefunds_customer_nbr: TIntegerField
      FieldName = 'refunds_customer_nbr'
    end
    object netshop_refundsrefunds_nature: TStringField
      FieldName = 'refunds_nature'
      Size = 32
    end
    object netshop_refundsrefunds_shop_id: TIntegerField
      FieldName = 'refunds_shop_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object netshop_refundsrefunds_date_time_display: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'refunds_date_time_display'
      Calculated = True
    end
    object netshop_refundsrefunds_signature: TBlobField
      FieldName = 'refunds_signature'
    end
    object netshop_refundsrefunds_amount: TFloatField
      FieldName = 'refunds_amount'
    end
  end
  object RefundsSRC: TDataSource
    DataSet = netshop_refunds
    Left = 212
    Top = 160
  end
  object SQLDSItemsRefunded: TSQLDataSet
    SchemaName = 'gomedia'
    GetMetadata = False
    CommandText = 
      'select '#13#10'`items_refunded_id`, '#13#10'`items_refunded_refunds_shop_id`' +
      ', '#13#10'`items_refunded_refunds_id`, '#13#10'`items_refunded_model`, '#13#10'`it' +
      'ems_refunded_name`, '#13#10'`items_refunded_quantity`, '#13#10'`items_refund' +
      'ed_price_gross`, '#13#10'`items_refunded_price_catalog`, '#13#10'`items_refu' +
      'nded_price_stock`, '#13#10'`items_refunded_owner_id`, '#13#10'`items_refunde' +
      'd_supplier_id`, '#13#10'`items_refunded_date_in`, '#13#10'`items_refunded_re' +
      'funded` '#13#10'from netshop_items_refunded where items_refunded_refun' +
      'ds_shop_id=:shopid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'shopid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 544
    Top = 16
    object SQLDSItemsRefundeditems_refunded_id: TIntegerField
      FieldName = 'items_refunded_id'
      Required = True
    end
    object SQLDSItemsRefundeditems_refunded_refunds_shop_id: TIntegerField
      FieldName = 'items_refunded_refunds_shop_id'
      Required = True
    end
    object SQLDSItemsRefundeditems_refunded_refunds_id: TIntegerField
      FieldName = 'items_refunded_refunds_id'
      Required = True
    end
    object SQLDSItemsRefundeditems_refunded_model: TStringField
      FieldName = 'items_refunded_model'
      Size = 15
    end
    object SQLDSItemsRefundeditems_refunded_name: TStringField
      FieldName = 'items_refunded_name'
      Size = 32
    end
    object SQLDSItemsRefundeditems_refunded_quantity: TIntegerField
      FieldName = 'items_refunded_quantity'
    end
    object SQLDSItemsRefundeditems_refunded_price_gross: TFMTBCDField
      FieldName = 'items_refunded_price_gross'
      Precision = 10
      Size = 2
    end
    object SQLDSItemsRefundeditems_refunded_price_catalog: TFMTBCDField
      FieldName = 'items_refunded_price_catalog'
      Precision = 10
      Size = 2
    end
    object SQLDSItemsRefundeditems_refunded_price_stock: TFMTBCDField
      FieldName = 'items_refunded_price_stock'
      Precision = 10
      Size = 2
    end
    object SQLDSItemsRefundeditems_refunded_owner_id: TIntegerField
      FieldName = 'items_refunded_owner_id'
      Required = True
    end
    object SQLDSItemsRefundeditems_refunded_supplier_id: TIntegerField
      FieldName = 'items_refunded_supplier_id'
    end
    object SQLDSItemsRefundeditems_refunded_date_in: TStringField
      FieldName = 'items_refunded_date_in'
      Size = 8
    end
    object SQLDSItemsRefundeditems_refunded_refunded: TIntegerField
      FieldName = 'items_refunded_refunded'
    end
  end
  object DPItemsRefunded: TDataSetProvider
    DataSet = SQLDSItemsRefunded
    UpdateMode = upWhereKeyOnly
    Left = 548
    Top = 64
  end
  object netshop_items_refunded: TClientDataSet
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
        Options = [ixPrimary]
      end>
    IndexName = 'ItemsRefundedIXShopId'
    Params = <>
    ProviderName = 'DPItemsRefunded'
    StoreDefs = True
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    OnNewRecord = netshop_items_refundedNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 548
    Top = 116
    object netshop_items_refundeditems_refunded_id: TIntegerField
      FieldName = 'items_refunded_id'
      Required = True
    end
    object netshop_items_refundeditems_refunded_refunds_shop_id: TIntegerField
      FieldName = 'items_refunded_refunds_shop_id'
      Required = True
    end
    object netshop_items_refundeditems_refunded_refunds_id: TIntegerField
      FieldName = 'items_refunded_refunds_id'
      Required = True
    end
    object netshop_items_refundeditems_refunded_model: TStringField
      FieldName = 'items_refunded_model'
      Size = 15
    end
    object netshop_items_refundeditems_refunded_name: TStringField
      FieldName = 'items_refunded_name'
      Size = 32
    end
    object netshop_items_refundeditems_refunded_quantity: TIntegerField
      FieldName = 'items_refunded_quantity'
    end
    object netshop_items_refundeditems_refunded_price_gross: TFMTBCDField
      FieldName = 'items_refunded_price_gross'
      Precision = 10
      Size = 2
    end
    object netshop_items_refundeditems_refunded_price_catalog: TFMTBCDField
      FieldName = 'items_refunded_price_catalog'
      Precision = 10
      Size = 2
    end
    object netshop_items_refundeditems_refunded_price_stock: TFMTBCDField
      FieldName = 'items_refunded_price_stock'
      Precision = 10
      Size = 2
    end
    object netshop_items_refundeditems_refunded_owner_id: TIntegerField
      FieldName = 'items_refunded_owner_id'
      Required = True
    end
    object netshop_items_refundeditems_refunded_supplier_id: TIntegerField
      FieldName = 'items_refunded_supplier_id'
    end
    object netshop_items_refundeditems_refunded_date_in: TStringField
      FieldName = 'items_refunded_date_in'
      Size = 8
    end
    object netshop_items_refundeditems_refunded_refunded: TIntegerField
      FieldName = 'items_refunded_refunded'
    end
  end
  object Items_refunded_SRC: TDataSource
    DataSet = netshop_items_refunded
    Left = 548
    Top = 164
  end
  object SQLDSCustomers: TSQLDataSet
    SchemaName = 'gomedia'
    GetMetadata = False
    CommandText = 
      'select customers_bank_account, '#13#10'customers_credit, '#13#10'customers_d' +
      'ate_added, '#13#10'customers_default_address_id, '#13#10'customers_defltpost' +
      ', '#13#10'customers_dob, '#13#10'customers_email_address, '#13#10'customers_fax, '#13 +
      #10'customers_firstname, '#13#10'customers_gender, '#13#10'customers_htprice, '#13 +
      #10'customers_id, '#13#10'customers_identity, '#13#10'customers_issupplier, '#13#10'c' +
      'ustomers_isTVA, '#13#10'customers_language_id, '#13#10'customers_lastname, '#13 +
      #10'customers_memo, '#13#10'customers_nbr, '#13#10'customers_newsletter, '#13#10'cust' +
      'omers_password, '#13#10'customers_paycode, '#13#10'customers_points, '#13#10'custo' +
      'mers_rent_enabled, '#13#10'customers_telephone, '#13#10'customers_TVA,'#13#10'cust' +
      'omers_shop_id,'#13#10'customers_rfid,'#13#10'customers_nationalnbr,'#13#10'custome' +
      'rs_newsletter_undeliverable,'#13#10'customers_loyalty  '#13#10'from customer' +
      's where (customers_nbr = :shopid) or ((customers_nbr < :maxid) a' +
      'nd (customers_nbr > :minid))'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftWideString
        Name = 'shopid'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'maxid'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'minid'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = SQLConnection
    Left = 520
    Top = 240
  end
  object SQLDSAddress_book: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select * from address_book where  (customers_id = :shopid) or ((' +
      'customers_id < :maxid) and (customers_id > :minid))'
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
    Left = 616
    Top = 240
  end
  object DPCustomers: TDataSetProvider
    DataSet = SQLDSCustomers
    BeforeUpdateRecord = DPCustomersBeforeUpdateRecord
    Left = 520
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
    IndexName = 'Address_bookIXId'
    Params = <>
    ProviderName = 'DPAddress_book'
    StoreDefs = True
    BeforePost = Address_BookBeforePost
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    OnNewRecord = Address_BookNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 616
    Top = 336
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
    Left = 616
    Top = 380
  end
  object DPAddress_book: TDataSetProvider
    DataSet = SQLDSAddress_book
    BeforeUpdateRecord = DPAddress_bookBeforeUpdateRecord
    Left = 612
    Top = 288
  end
  object customers: TClientDataSet
    Aggregates = <>
    FileName = 'database\customers.cds'
    FieldDefs = <
      item
        Name = 'customers_bank_account'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_credit'
        DataType = ftFMTBcd
        Precision = 10
        Size = 2
      end
      item
        Name = 'customers_date_added'
        DataType = ftDate
      end
      item
        Name = 'customers_default_address_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'customers_defltpost'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'customers_dob'
        DataType = ftDate
      end
      item
        Name = 'customers_email_address'
        DataType = ftString
        Size = 96
      end
      item
        Name = 'customers_fax'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_firstname'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_gender'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'customers_htprice'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'customers_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'customers_identity'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'customers_issupplier'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'customers_isTVA'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'customers_language_id'
        DataType = ftInteger
      end
      item
        Name = 'customers_lastname'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_memo'
        DataType = ftMemo
        Size = 1
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
        Name = 'customers_password'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'customers_paycode'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'customers_points'
        DataType = ftInteger
      end
      item
        Name = 'customers_rent_enabled'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'customers_telephone'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_TVA'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_shop_id'
        DataType = ftInteger
      end
      item
        Name = 'customers_rfid'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_nationalnbr'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'customers_newsletter_undeliverable'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'customers_loyalty'
        Attributes = [faRequired]
        DataType = ftInteger
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
    BeforePost = customersBeforePost
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    OnNewRecord = CustomersoldNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 520
    Top = 336
    object customerscustomers_id: TIntegerField
      FieldName = 'customers_id'
    end
    object customerscustomers_gender: TStringField
      FieldName = 'customers_gender'
      FixedChar = True
      Size = 1
    end
    object customerscustomers_firstname: TStringField
      FieldName = 'customers_firstname'
      Size = 32
    end
    object customerscustomers_lastname: TStringField
      FieldName = 'customers_lastname'
      Size = 32
    end
    object customerscustomers_email_address: TStringField
      FieldName = 'customers_email_address'
      OnSetText = customerscustomers_email_addressSetText
      Size = 96
    end
    object customerscustomers_default_address_id: TIntegerField
      FieldName = 'customers_default_address_id'
    end
    object customerscustomers_telephone: TStringField
      FieldName = 'customers_telephone'
      Size = 32
    end
    object customerscustomers_fax: TStringField
      FieldName = 'customers_fax'
      Size = 32
    end
    object customerscustomers_password: TStringField
      FieldName = 'customers_password'
      Size = 40
    end
    object customerscustomers_points: TIntegerField
      FieldName = 'customers_points'
    end
    object customerscustomers_nbr: TIntegerField
      FieldName = 'customers_nbr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object customerscustomers_newsletter: TStringField
      FieldName = 'customers_newsletter'
      FixedChar = True
      Size = 1
    end
    object customerscustomers_TVA: TStringField
      FieldName = 'customers_TVA'
      Size = 32
    end
    object customerscustomers_identity: TStringField
      FieldName = 'customers_identity'
      Size = 16
    end
    object customerscustomers_bank_account: TStringField
      FieldName = 'customers_bank_account'
      Size = 32
    end
    object customerscustomers_isTVA: TStringField
      FieldName = 'customers_isTVA'
      Size = 5
    end
    object customerscustomers_issupplier: TStringField
      FieldName = 'customers_issupplier'
      Size = 5
    end
    object customerscustomers_defltpost: TStringField
      FieldName = 'customers_defltpost'
      Size = 10
    end
    object customerscustomers_paycode: TStringField
      FieldName = 'customers_paycode'
      Size = 5
    end
    object customerscustomers_language_id: TIntegerField
      FieldName = 'customers_language_id'
    end
    object customerscustomers_htprice: TStringField
      FieldName = 'customers_htprice'
      Size = 5
    end
    object customerscustomers_rent_enabled: TStringField
      FieldName = 'customers_rent_enabled'
      Size = 5
    end
    object customerscustomers_memo: TMemoField
      FieldName = 'customers_memo'
      BlobType = ftMemo
      Size = 1
    end
    object customerscustomers_credit: TFMTBCDField
      FieldName = 'customers_credit'
      Precision = 10
      Size = 2
    end
    object customerscustomers_date_added: TDateField
      FieldName = 'customers_date_added'
    end
    object customerscustomers_dob: TDateField
      FieldName = 'customers_dob'
    end
    object customerscustomers_shop_id: TIntegerField
      FieldName = 'customers_shop_id'
    end
    object customerscustomers_rfid: TStringField
      FieldName = 'customers_rfid'
      Size = 32
    end
    object customerscustomers_nationalnbr: TStringField
      FieldName = 'customers_nationalnbr'
      Size = 16
    end
    object customerscustomers_newsletter_undeliverable: TIntegerField
      FieldName = 'customers_newsletter_undeliverable'
      Required = True
    end
    object customerscustomers_loyalty: TIntegerField
      FieldName = 'customers_loyalty'
      Required = True
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
    Left = 1132
    Top = 264
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
  end
  object DPRentStock: TDataSetProvider
    DataSet = SQLDSRentStock
    UpdateMode = upWhereKeyOnly
    Left = 888
    Top = 532
  end
  object netshop_rent_stock: TClientDataSet
    Aggregates = <>
    FileName = 'database\rentstock.cds'
    Params = <>
    ProviderName = 'DPRentStock'
    OnCalcFields = netshop_rent_stockCalcFields
    OnNewRecord = netshop_rent_stockNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 888
    Top = 576
  end
  object RentStockSRC: TDataSource
    DataSet = netshop_rent_stock
    Left = 888
    Top = 624
  end
  object SQLDSRentTransaction: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select * from netshop_rent_transaction where rent_transaction_lo' +
      'cation = :shopid'
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
  end
  object DPRentTransaction: TDataSetProvider
    DataSet = SQLDSRentTransaction
    UpdateMode = upWhereKeyOnly
    Left = 988
    Top = 532
  end
  object netshop_rent_transaction: TClientDataSet
    Aggregates = <>
    FileName = 'database\renttransactions.cds'
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
        Name = 'rent_transaction_product_name'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'rent_transaction_scheme_id'
        DataType = ftInteger
      end
      item
        Name = 'rent_transaction_start_date'
        Attributes = [faRequired]
        DataType = ftSingle
      end
      item
        Name = 'rent_transaction_returned'
        DataType = ftShortint
      end
      item
        Name = 'rent_transaction_returned_date'
        DataType = ftSingle
      end
      item
        Name = 'rent_transaction_due_date'
        Attributes = [faRequired]
        DataType = ftSingle
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
    OnCalcFields = netshop_rent_transactionCalcFields
    OnNewRecord = netshop_rent_transactionNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 988
    Top = 576
  end
  object RentTransactionSrc: TDataSource
    DataSet = netshop_rent_transaction
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
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    OnNewRecord = CarousselNewRecord
    Left = 1204
    Top = 264
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
    Left = 1204
    Top = 316
  end
  object SQLDSRentSchemes: TSQLDataSet
    CommandText = 
      'select * from netshop_rent_schemes where rent_scheme_location = ' +
      ':shopid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftSmallint
        Name = 'shopid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 1092
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
    object SQLDSRentSchemesrent_scheme_base_price: TFloatField
      FieldName = 'rent_scheme_base_price'
    end
    object SQLDSRentSchemesrent_scheme_extra_price: TFloatField
      FieldName = 'rent_scheme_extra_price'
    end
    object SQLDSRentSchemesrent_scheme_base_days: TShortintField
      FieldName = 'rent_scheme_base_days'
    end
    object SQLDSRentSchemesrent_scheme_default: TShortintField
      FieldName = 'rent_scheme_default'
    end
    object SQLDSRentSchemesrent_scheme_location: TShortintField
      FieldName = 'rent_scheme_location'
      Required = True
    end
  end
  object DPRentSchemes: TDataSetProvider
    DataSet = SQLDSRentSchemes
    Left = 1092
    Top = 540
  end
  object netshop_rent_schemes: TClientDataSet
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
        Name = 'rent_scheme_base_price'
        DataType = ftFloat
      end
      item
        Name = 'rent_scheme_extra_price'
        DataType = ftFloat
      end
      item
        Name = 'rent_scheme_base_days'
        DataType = ftShortint
      end
      item
        Name = 'rent_scheme_default'
        DataType = ftShortint
      end
      item
        Name = 'rent_scheme_location'
        Attributes = [faRequired]
        DataType = ftShortint
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
    OnNewRecord = netshop_rent_schemesNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 1092
    Top = 584
    object netshop_rent_schemesrent_scheme_id: TIntegerField
      FieldName = 'rent_scheme_id'
      Required = True
    end
    object netshop_rent_schemesrent_scheme_name: TStringField
      FieldName = 'rent_scheme_name'
      Size = 16
    end
    object netshop_rent_schemesrent_scheme_description: TStringField
      FieldName = 'rent_scheme_description'
      Size = 255
    end
    object netshop_rent_schemesrent_scheme_base_price: TFloatField
      FieldName = 'rent_scheme_base_price'
    end
    object netshop_rent_schemesrent_scheme_extra_price: TFloatField
      FieldName = 'rent_scheme_extra_price'
    end
    object netshop_rent_schemesrent_scheme_base_days: TShortintField
      FieldName = 'rent_scheme_base_days'
    end
    object netshop_rent_schemesrent_scheme_default: TShortintField
      FieldName = 'rent_scheme_default'
    end
    object netshop_rent_schemesrent_scheme_location: TShortintField
      FieldName = 'rent_scheme_location'
      Required = True
    end
  end
  object RentSchemesSRC: TDataSource
    DataSet = netshop_rent_schemes
    Left = 1084
    Top = 624
  end
  object InvoicesSrc: TDataSource
    DataSet = netshop_invoices
    Left = 912
    Top = 164
  end
  object SQLDSInvoices: TSQLDataSet
    SchemaName = 'gomedia'
    GetMetadata = False
    CommandText = 
      'select '#13#10'`invoices_date_time`, '#13#10'`invoices_paid_cash`, '#13#10'`invoic' +
      'es_paid_bct`, '#13#10'`invoices_paid_proton`, '#13#10'`invoices_paid_visa`, ' +
      #13#10'`invoices_paid_voucher`, '#13#10'`invoices_customer_id`, '#13#10'`invoices' +
      '_location`, '#13#10'`invoices_id`, '#13#10'`invoices_closed`, '#13#10'`invoices_co' +
      'mments`'#13#10' from netshop_invoices where invoices_location = :shopi' +
      'd and invoices_date_time > :datelimit'
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
  object netshop_invoices: TClientDataSet
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
    AfterOpen = netshop_invoicesAfterOpen
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    AfterRefresh = netshop_invoicesAfterOpen
    OnCalcFields = netshop_invoicesCalcFields
    OnNewRecord = netshop_invoicesNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 912
    Top = 116
    object netshop_invoicesinvoices_date_time: TFloatField
      FieldName = 'invoices_date_time'
      Required = True
    end
    object netshop_invoicesinvoices_paid_cash: TFMTBCDField
      FieldName = 'invoices_paid_cash'
      Precision = 10
      Size = 2
    end
    object netshop_invoicesinvoices_paid_bct: TFMTBCDField
      FieldName = 'invoices_paid_bct'
      Precision = 10
      Size = 2
    end
    object netshop_invoicesinvoices_paid_proton: TFMTBCDField
      FieldName = 'invoices_paid_proton'
      Precision = 10
      Size = 2
    end
    object netshop_invoicesinvoices_paid_visa: TFMTBCDField
      FieldName = 'invoices_paid_visa'
      Precision = 10
      Size = 2
    end
    object netshop_invoicesinvoices_paid_voucher: TFMTBCDField
      FieldName = 'invoices_paid_voucher'
      Precision = 10
      Size = 2
    end
    object netshop_invoicesinvoices_customer_id: TIntegerField
      FieldName = 'invoices_customer_id'
      Required = True
    end
    object netshop_invoicesinvoices_location: TIntegerField
      FieldName = 'invoices_location'
      Required = True
    end
    object netshop_invoicesinvoices_id: TIntegerField
      FieldName = 'invoices_id'
      Required = True
    end
    object netshop_invoicesinvoices_closed: TIntegerField
      FieldName = 'invoices_closed'
    end
    object netshop_invoicesinvoices_comments: TMemoField
      FieldName = 'invoices_comments'
      BlobType = ftMemo
      Size = 1
    end
    object netshop_invoicesinvoices_paid_totalttc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'invoices_paid_totalttc'
      Calculated = True
    end
    object netshop_invoicesinvoices_date_disp: TDateField
      FieldKind = fkCalculated
      FieldName = 'invoices_date_disp'
      Calculated = True
    end
  end
  object invoices_items_src: TDataSource
    DataSet = netshop_invoices_items
    Left = 1000
    Top = 168
  end
  object SQLDSInvoices_Items: TSQLDataSet
    SchemaName = 'gomedia'
    GetMetadata = False
    CommandText = 
      'select '#13#10'`invoices_items_id`, '#13#10'`invoices_items_location`, '#13#10'`in' +
      'voices_items_invoice_id`, '#13#10'`invoices_items_model`, '#13#10'`invoices_' +
      'items_name`, '#13#10'`invoices_items_quantity`, '#13#10'`invoices_items_pric' +
      'e_gross`, '#13#10'`invoices_items_price_catalog`, '#13#10'`invoices_items_pr' +
      'ice_tva`, '#13#10'`invoices_items_tva_rate`, '#13#10'`invoices_items_price_s' +
      'tock`, '#13#10'`invoices_items_owner_id`, '#13#10'`invoices_items_supplier_i' +
      'd`, '#13#10'`invoices_items_date_in`, '#13#10'`invoices_items_refunded` '#13#10'fr' +
      'om netshop_invoices_items where (invoices_items_location = :shop' +
      'id) and (((invoices_items_invoice_id >= :invoices_id_min))or(inv' +
      'oices_items_invoice_id = 0))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'shopid'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'invoices_id_min'
        ParamType = ptInput
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
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object SQLDSInvoices_Itemsinvoices_items_price_gross: TFMTBCDField
      FieldName = 'invoices_items_price_gross'
      Precision = 20
      Size = 4
    end
    object SQLDSInvoices_Itemsinvoices_items_price_catalog: TFMTBCDField
      FieldName = 'invoices_items_price_catalog'
      Precision = 20
      Size = 4
    end
    object SQLDSInvoices_Itemsinvoices_items_price_tva: TFMTBCDField
      FieldName = 'invoices_items_price_tva'
      Precision = 20
      Size = 4
    end
    object SQLDSInvoices_Itemsinvoices_items_tva_rate: TFMTBCDField
      FieldName = 'invoices_items_tva_rate'
      Precision = 20
      Size = 4
    end
    object SQLDSInvoices_Itemsinvoices_items_price_stock: TFMTBCDField
      FieldName = 'invoices_items_price_stock'
      Precision = 20
      Size = 4
    end
  end
  object DPInvoices_items: TDataSetProvider
    DataSet = SQLDSInvoices_Items
    UpdateMode = upWhereKeyOnly
    Left = 1004
    Top = 72
  end
  object netshop_invoices_items: TClientDataSet
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
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    OnCalcFields = netshop_invoices_itemsCalcFields
    OnNewRecord = netshop_invoices_itemsNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 1004
    Top = 120
    object netshop_invoices_itemsinvoices_items_id: TIntegerField
      FieldName = 'invoices_items_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object netshop_invoices_itemsinvoices_items_location: TIntegerField
      FieldName = 'invoices_items_location'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object netshop_invoices_itemsinvoices_items_invoice_id: TIntegerField
      FieldName = 'invoices_items_invoice_id'
      Required = True
    end
    object netshop_invoices_itemsinvoices_items_model: TStringField
      FieldName = 'invoices_items_model'
      Size = 15
    end
    object netshop_invoices_itemsinvoices_items_name: TStringField
      FieldName = 'invoices_items_name'
      Size = 32
    end
    object netshop_invoices_itemsinvoices_items_quantity: TIntegerField
      FieldName = 'invoices_items_quantity'
    end
    object netshop_invoices_itemsinvoices_items_owner_id: TIntegerField
      FieldName = 'invoices_items_owner_id'
      Required = True
    end
    object netshop_invoices_itemsinvoices_items_supplier_id: TIntegerField
      FieldName = 'invoices_items_supplier_id'
    end
    object netshop_invoices_itemsinvoices_items_date_in: TStringField
      FieldName = 'invoices_items_date_in'
      Size = 8
    end
    object netshop_invoices_itemsinvoices_items_refunded: TIntegerField
      FieldName = 'invoices_items_refunded'
    end
    object netshop_invoices_itemsinvoices_items_PTOTHT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'invoices_items_PTOTHT'
      Calculated = True
    end
    object netshop_invoices_itemsinvoices_items_PTOTTVA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'invoices_items_PTOTTVA'
      Calculated = True
    end
    object netshop_invoices_itemsinvoices_items_PTOTTTC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'invoices_items_PTOTTTC'
      Calculated = True
    end
    object netshop_invoices_itemsinvoices_items_price_gross: TFMTBCDField
      FieldName = 'invoices_items_price_gross'
      Precision = 20
      Size = 4
    end
    object netshop_invoices_itemsinvoices_items_price_catalog: TFMTBCDField
      FieldName = 'invoices_items_price_catalog'
      Precision = 20
      Size = 4
    end
    object netshop_invoices_itemsinvoices_items_price_tva: TFMTBCDField
      FieldName = 'invoices_items_price_tva'
      Precision = 20
      Size = 4
    end
    object netshop_invoices_itemsinvoices_items_tva_rate: TFMTBCDField
      FieldName = 'invoices_items_tva_rate'
      Precision = 20
      Size = 4
    end
    object netshop_invoices_itemsinvoices_items_price_stock: TFMTBCDField
      FieldName = 'invoices_items_price_stock'
      Precision = 20
      Size = 4
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
    DataSet = netshop_expenses
    Left = 1104
    Top = 188
  end
  object ProgressCreate: TJvProgressComponent
    OnShow = ProgressCreateModulebShow
    Left = 48
    Top = 152
  end
  object ProgressSync: TJvProgressComponent
    OnShow = ProgressSynchronisebShow
    Left = 48
    Top = 200
  end
  object ProgressSave: TJvProgressComponent
    OnShow = ProgressSaveModuleShow
    Left = 48
    Top = 248
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
  object SQLDSAlerts: TSQLDataSet
    SchemaName = 'gomedia'
    GetMetadata = False
    CommandText = 
      'SELECT '#13#10'customers_alerts_customers_nbr,'#13#10'customers_alerts_produ' +
      'cts_model,'#13#10'customers_alerts_products_name,'#13#10'customers_alerts_pr' +
      'oducts_cat,'#13#10'customers_alerts_date,'#13#10'customers_alerts_date_notif' +
      'ied,'#13#10'customers_alerts_quantity,'#13#10'customers_alerts_used,'#13#10'custom' +
      'ers_alerts_status,'#13#10'customers_alerts_attempts,'#13#10'customers_alerts' +
      '_message,'#13#10'customers_alerts_comment,'#13#10'customers_alerts_dwnpay'#13#10#13 +
      #10'FROM netshop_customers_alerts '#13#10#13#10'WHERE '#13#10'('#13#10'(customers_alerts_' +
      'customers_nbr>:minid)'#13#10'and'#13#10'(customers_alerts_customers_nbr<:max' +
      'id)'#13#10');'
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
  object netshop_customers_alerts: TClientDataSet
    Aggregates = <>
    FileName = 'database\alerts.cds'
    FieldDefs = <
      item
        Name = 'customers_alerts_customers_nbr'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'customers_alerts_products_model'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'customers_alerts_products_name'
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
        DataType = ftFloat
      end
      item
        Name = 'customers_alerts_date_notified'
        DataType = ftFloat
      end
      item
        Name = 'customers_alerts_quantity'
        DataType = ftInteger
      end
      item
        Name = 'customers_alerts_used'
        DataType = ftInteger
      end
      item
        Name = 'customers_alerts_status'
        DataType = ftInteger
      end
      item
        Name = 'customers_alerts_attempts'
        DataType = ftInteger
      end
      item
        Name = 'customers_alerts_message'
        DataType = ftString
        Size = 304
      end
      item
        Name = 'customers_alerts_comment'
        DataType = ftString
        Size = 128
      end
      item
        Name = 'customers_alerts_dwnpay'
        DataType = ftShortint
      end>
    IndexDefs = <
      item
        Name = 'AlertsIXCustomers'
        Fields = 'customers_alerts_customers_nbr'
      end
      item
        Name = 'AlertsIXModel'
        Fields = 'customers_alerts_products_model'
      end>
    Params = <>
    ProviderName = 'DPAlerts'
    StoreDefs = True
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    OnCalcFields = netshop_customers_alertsCalcFields
    OnNewRecord = netshop_customers_alertsNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 1200
    Top = 128
    object netshop_customers_alertscustomers_alerts_customers_nbr: TStringField
      FieldName = 'customers_alerts_customers_nbr'
      Required = True
      Size = 10
    end
    object netshop_customers_alertscustomers_alerts_products_model: TStringField
      FieldName = 'customers_alerts_products_model'
      Required = True
      Size = 14
    end
    object netshop_customers_alertscustomers_alerts_products_name: TStringField
      FieldName = 'customers_alerts_products_name'
      Required = True
      Size = 64
    end
    object netshop_customers_alertscustomers_alerts_products_cat: TStringField
      FieldName = 'customers_alerts_products_cat'
      Size = 32
    end
    object netshop_customers_alertscustomers_alerts_date: TFloatField
      FieldName = 'customers_alerts_date'
      Required = True
    end
    object netshop_customers_alertscustomers_alerts_quantity: TIntegerField
      FieldName = 'customers_alerts_quantity'
      Required = True
    end
    object netshop_customers_alertscustomers_alerts_used: TIntegerField
      FieldName = 'customers_alerts_used'
      Required = True
    end
    object netshop_customers_alertscustomers_alerts_status: TIntegerField
      FieldName = 'customers_alerts_status'
      Required = True
    end
    object netshop_customers_alertscustomers_alerts_attempts: TIntegerField
      FieldName = 'customers_alerts_attempts'
      Required = True
    end
    object netshop_customers_alertscustomers_alerts_message: TStringField
      FieldName = 'customers_alerts_message'
      Size = 160
    end
    object netshop_customers_alertscustomers_alerts_comment: TStringField
      FieldName = 'customers_alerts_comment'
      Size = 128
    end
    object netshop_customers_alertscustomers_alerts_date_disp: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'customers_alerts_date_disp'
      Calculated = True
    end
    object netshop_customers_alertscustomers_alerts_date_notified: TFloatField
      FieldName = 'customers_alerts_date_notified'
      Required = True
    end
    object netshop_customers_alertsalerts_date_notified_disp: TDateField
      FieldKind = fkCalculated
      FieldName = 'alerts_date_notified_disp'
      Calculated = True
    end
    object shrtntfld_customers_alertscustomers_alerts_dwnpay: TShortintField
      FieldName = 'customers_alerts_dwnpay'
    end
  end
  object AlertsSRC: TDataSource
    DataSet = netshop_customers_alerts
    Left = 1192
    Top = 176
  end
  object SQLDSAlertsExt: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT'#13#10'customers_alerts_customers_nbr,'#13#10'customers_alerts_produc' +
      'ts_model,'#13#10'customers_alerts_products_name,'#13#10'customers_alerts_pro' +
      'ducts_cat,'#13#10'customers_alerts_date,'#13#10'customers_alerts_quantity,'#13#10 +
      'customers_alerts_used'#13#10#13#10'FROM netshop_customers_alerts '#13#10#13#10'WHERE' +
      ' '#13#10'not ('#13#10'(customers_alerts_customers_nbr>:minid) and '#13#10'( custom' +
      'ers_alerts_customers_nbr<:maxid)'#13#10' );'
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
    Left = 1296
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
  object netshop_warranty: TClientDataSet
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
    object netshop_warrantywarranty_id: TIntegerField
      FieldName = 'warranty_id'
      Required = True
    end
    object netshop_warrantywarranty_validity: TSmallintField
      FieldName = 'warranty_validity'
      Required = True
    end
    object netshop_warrantywarranty_description: TStringField
      FieldName = 'warranty_description'
      Required = True
      Size = 64
    end
  end
  object WarrantySRC: TDataSource
    DataSet = netshop_warranty
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
    Left = 1176
    Top = 576
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
    Left = 1176
    Top = 616
  end
  object SQLDSExpenses: TSQLDataSet
    SchemaName = 'gomedia'
    GetMetadata = False
    CommandText = 
      'select '#13#10'`expenses_id`, '#13#10'`expenses_shop_id`, '#13#10'`expenses_date_t' +
      'ime`, '#13#10'`expenses_amount`, '#13#10'`expenses_description`'#13#10'  from `net' +
      'shop_expenses` where `expenses_shop_id` = :shopid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'shopid'
        ParamType = ptInput
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
  object netshop_expenses: TClientDataSet
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
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    OnCalcFields = netshop_expensesCalcFields
    OnNewRecord = netshop_expensesNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 1104
    Top = 136
  end
  object ProgressUpdate: TJvProgressComponent
    OnShow = ProgressUpdateShow
    Left = 64
    Top = 416
  end
  object SQLDSAllShops: TSQLDataSet
    SchemaName = 'gomedia'
    GetMetadata = False
    CommandText = 
      'Select '#13#10'`shops_id`, '#13#10'`shops_name`, '#13#10'`shops_customers_id`, '#13#10'`' +
      'shops_title`, '#13#10'`shops_adress_one`, '#13#10'`shops_postcode`, '#13#10'`shops' +
      '_adress_two`, '#13#10'`shops_phone`, '#13#10'`shops_manager_email`, '#13#10'`shops' +
      '_zone_id`, '#13#10'`shops_country_id`, '#13#10'`shops_group_id`, '#13#10'`shops_TV' +
      'A`, '#13#10'`shops_registry`, '#13#10'`shops_bank`, '#13#10'`shops_visible`, '#13#10'`sh' +
      'ops_cld_id`, '#13#10'`shops_region`, '#13#10'`shops_language_id`'#13#10' from nets' +
      'hop_shops'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 1368
    Top = 32
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
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 176
    Top = 305
  end
  object SQLDSCashClose: TSQLDataSet
    SchemaName = 'gomedia'
    GetMetadata = False
    CommandText = 
      'Select '#13#10'`cashclose_shopid`, '#13#10'`cashclose_amountleft`, '#13#10'`cashcl' +
      'ose_amountout`, '#13#10'`cashclose_datetime`, '#13#10'`cashclose_operator`,'#13 +
      #10'`cashclose_daytasks`'#13#10' from netshop_cashclose where cashclose_s' +
      'hopid = :shopid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
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
    object SQLDSCashClosecashclose_daytasks: TStringField
      FieldName = 'cashclose_daytasks'
      Required = True
      Size = 255
    end
  end
  object DPCashClose: TDataSetProvider
    DataSet = SQLDSCashClose
    Left = 1456
    Top = 88
  end
  object netshop_cashclose: TClientDataSet
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
      end
      item
        Name = 'cashclose_daytasks'
        Attributes = [faRequired]
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <
      item
        Name = 'CDSCashCloseIXDate'
        Fields = 'cashclose_datetime'
        Options = [ixDescending]
      end>
    IndexName = 'CDSCashCloseIXDate'
    Params = <>
    ProviderName = 'DPCashClose'
    StoreDefs = True
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    OnCalcFields = netshop_cashcloseCalcFields
    OnNewRecord = netshop_cashcloseNewRecord
    Left = 1456
    Top = 144
    object netshop_cashclosecashclose_shopid: TIntegerField
      FieldName = 'cashclose_shopid'
      Required = True
    end
    object netshop_cashclosecashclose_amountleft: TFMTBCDField
      FieldName = 'cashclose_amountleft'
      Required = True
      Precision = 10
      Size = 2
    end
    object netshop_cashclosecashclose_amountout: TFMTBCDField
      FieldName = 'cashclose_amountout'
      Required = True
      Precision = 10
      Size = 2
    end
    object netshop_cashclosecashclose_datetime: TFloatField
      FieldName = 'cashclose_datetime'
      Required = True
    end
    object netshop_cashclosecashclose_operator: TStringField
      FieldName = 'cashclose_operator'
      Required = True
      Size = 32
    end
    object netshop_cashclosecashclose_daytasks: TStringField
      FieldName = 'cashclose_daytasks'
      Required = True
      Size = 255
    end
    object netshop_cashclosecashclose_datedisp: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'cashclose_datedisp'
      Calculated = True
    end
  end
  object CashCloseSRC: TDataSource
    DataSet = netshop_cashclose
    Left = 1456
    Top = 192
  end
  object SQLUpdateProductsVelocity: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 176
    Top = 256
  end
  object DPQuery: TDataSetProvider
    DataSet = SQLQuery
    Left = 176
    Top = 360
  end
  object CDSQuery: TClientDataSet
    Tag = -1
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DPQuery'
    StoreDefs = True
    Left = 176
    Top = 416
  end
  object SQLDSWebOrders: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT '#13#10'  orders_status.orders_status_name,'#13#10'  orders_products.' +
      'products_quantity,'#13#10'  products.products_model,'#13#10'  products.produ' +
      'cts_root_category_name,'#13#10'  orders_products.products_name,'#13#10'  ord' +
      'ers_products.products_price,'#13#10'  orders.orders_id,'#13#10'  orders.cust' +
      'omers_company,'#13#10'  orders.customers_street_address,'#13#10'  orders.cus' +
      'tomers_suburb,'#13#10'  orders.customers_city,'#13#10'  orders.customers_pos' +
      'tcode,'#13#10'  orders.customers_id,'#13#10'  orders.customers_state,'#13#10'  ord' +
      'ers.customers_country,'#13#10'  orders.customers_telephone,'#13#10'  orders.' +
      'customers_email_address,'#13#10'  orders.orders_date_finished,'#13#10'  orde' +
      'rs.date_purchased,'#13#10'  orders_status.orders_status_id,'#13#10'  orders_' +
      'products.final_price,'#13#10'  orders_pickup.shop_id,'#13#10'  customers.cus' +
      'tomers_password,'#13#10'  customers.customers_dob,'#13#10'  customers.custom' +
      'ers_fax,'#13#10'  customers.customers_gender,'#13#10'  customers.customers_f' +
      'irstname,'#13#10'  customers.customers_lastname'#13#10'FROM'#13#10'  orders'#13#10'  INN' +
      'ER JOIN orders_status ON (orders.orders_status = orders_status.o' +
      'rders_status_id)'#13#10'  LEFT JOIN orders_products ON (orders.orders_' +
      'id = orders_products.orders_id)'#13#10'  INNER JOIN products ON (order' +
      's_products.products_id = products.products_id)'#13#10'  INNER JOIN ord' +
      'ers_pickup ON (orders.orders_id = orders_pickup.orders_id)'#13#10'  IN' +
      'NER JOIN customers ON (orders.customers_id = customers.customers' +
      '_id)WHERE'#13#10'  orders_status.orders_status_id = 10 and orders_stat' +
      'us.language_id=1 '#13#10'  AND  orders_pickup.shop_id=:shopid'#13#10'ORDER B' +
      'Y'#13#10'  orders.date_purchased DESC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'shopid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 928
    Top = 720
    object SQLDSWebOrdersorders_status_name: TStringField
      FieldName = 'orders_status_name'
      Required = True
      Size = 32
    end
    object SQLDSWebOrdersproducts_quantity: TIntegerField
      FieldName = 'products_quantity'
    end
    object SQLDSWebOrdersproducts_model: TStringField
      FieldName = 'products_model'
      Required = True
      Size = 15
    end
    object SQLDSWebOrdersproducts_root_category_name: TStringField
      FieldName = 'products_root_category_name'
      Size = 32
    end
    object SQLDSWebOrdersproducts_name: TStringField
      FieldName = 'products_name'
      Size = 64
    end
    object SQLDSWebOrdersproducts_price: TFMTBCDField
      FieldName = 'products_price'
      Precision = 17
      Size = 4
    end
    object SQLDSWebOrdersorders_id: TIntegerField
      FieldName = 'orders_id'
      Required = True
    end
    object SQLDSWebOrderscustomers_company: TStringField
      FieldName = 'customers_company'
      Size = 32
    end
    object SQLDSWebOrderscustomers_street_address: TStringField
      FieldName = 'customers_street_address'
      Size = 64
    end
    object SQLDSWebOrderscustomers_suburb: TStringField
      FieldName = 'customers_suburb'
      Size = 32
    end
    object SQLDSWebOrderscustomers_city: TStringField
      FieldName = 'customers_city'
      Size = 32
    end
    object SQLDSWebOrderscustomers_postcode: TStringField
      FieldName = 'customers_postcode'
      Size = 10
    end
    object SQLDSWebOrderscustomers_id: TIntegerField
      FieldName = 'customers_id'
    end
    object SQLDSWebOrderscustomers_state: TStringField
      FieldName = 'customers_state'
      Size = 32
    end
    object SQLDSWebOrderscustomers_country: TStringField
      FieldName = 'customers_country'
      Size = 32
    end
    object SQLDSWebOrderscustomers_telephone: TStringField
      FieldName = 'customers_telephone'
      Size = 32
    end
    object SQLDSWebOrderscustomers_email_address: TStringField
      FieldName = 'customers_email_address'
      Size = 96
    end
    object SQLDSWebOrdersorders_date_finished: TSQLTimeStampField
      FieldName = 'orders_date_finished'
    end
    object SQLDSWebOrdersdate_purchased: TSQLTimeStampField
      FieldName = 'date_purchased'
    end
    object SQLDSWebOrdersorders_status_id: TIntegerField
      FieldName = 'orders_status_id'
      Required = True
    end
    object SQLDSWebOrdersfinal_price: TFMTBCDField
      FieldName = 'final_price'
      Precision = 17
      Size = 4
    end
    object SQLDSWebOrdersshop_id: TIntegerField
      FieldName = 'shop_id'
      Required = True
    end
    object SQLDSWebOrderscustomers_password: TStringField
      FieldName = 'customers_password'
      Size = 40
    end
    object SQLDSWebOrderscustomers_dob: TDateField
      FieldName = 'customers_dob'
    end
    object SQLDSWebOrderscustomers_fax: TStringField
      FieldName = 'customers_fax'
      Size = 32
    end
    object SQLDSWebOrderscustomers_gender: TStringField
      FieldName = 'customers_gender'
      FixedChar = True
      Size = 1
    end
    object SQLDSWebOrderscustomers_firstname: TStringField
      FieldName = 'customers_firstname'
      Size = 32
    end
    object SQLDSWebOrderscustomers_lastname: TStringField
      FieldName = 'customers_lastname'
      Size = 32
    end
  end
  object DPWebOrders: TDataSetProvider
    DataSet = SQLDSWebOrders
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DPWebOrdersBeforeUpdateRecord
    Left = 928
    Top = 768
  end
  object WebOrders: TClientDataSet
    Aggregates = <>
    FileName = 'database\weborders.cds'
    Filter = 'orders_status_id=10'
    Filtered = True
    FieldDefs = <
      item
        Name = 'orders_status_name'
        Attributes = [faRequired]
        DataType = ftString
        Size = 32
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
        Name = 'products_root_category_name'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'products_name'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'products_price'
        DataType = ftFMTBcd
        Precision = 17
        Size = 4
      end
      item
        Name = 'orders_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'customers_company'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_street_address'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'customers_suburb'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_city'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_postcode'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'customers_id'
        DataType = ftInteger
      end
      item
        Name = 'customers_state'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_country'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_telephone'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'customers_email_address'
        DataType = ftString
        Size = 96
      end
      item
        Name = 'orders_date_finished'
        DataType = ftTimeStamp
      end
      item
        Name = 'date_purchased'
        DataType = ftTimeStamp
      end
      item
        Name = 'orders_status_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'final_price'
        DataType = ftFMTBcd
        Precision = 17
        Size = 4
      end
      item
        Name = 'shop_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'customers_password'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'customers_dob'
        DataType = ftDate
      end
      item
        Name = 'customers_fax'
        DataType = ftString
        Size = 32
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
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DPWebOrders'
    StoreDefs = True
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    Left = 928
    Top = 816
    object WebOrdersorders_status_name: TStringField
      FieldName = 'orders_status_name'
      Required = True
      Size = 32
    end
    object WebOrdersproducts_quantity: TIntegerField
      FieldName = 'products_quantity'
    end
    object WebOrdersproducts_model: TStringField
      FieldName = 'products_model'
      Required = True
      Size = 15
    end
    object WebOrdersproducts_root_category_name: TStringField
      FieldName = 'products_root_category_name'
      Size = 32
    end
    object WebOrdersproducts_name: TStringField
      FieldName = 'products_name'
      Size = 64
    end
    object WebOrdersproducts_price: TFMTBCDField
      FieldName = 'products_price'
      Precision = 17
      Size = 4
    end
    object WebOrdersorders_id: TIntegerField
      FieldName = 'orders_id'
      Required = True
    end
    object WebOrderscustomers_company: TStringField
      FieldName = 'customers_company'
      Size = 32
    end
    object WebOrderscustomers_street_address: TStringField
      FieldName = 'customers_street_address'
      Size = 64
    end
    object WebOrderscustomers_suburb: TStringField
      FieldName = 'customers_suburb'
      Size = 32
    end
    object WebOrderscustomers_city: TStringField
      FieldName = 'customers_city'
      Size = 32
    end
    object WebOrderscustomers_postcode: TStringField
      FieldName = 'customers_postcode'
      Size = 10
    end
    object WebOrderscustomers_id: TIntegerField
      FieldName = 'customers_id'
    end
    object WebOrderscustomers_state: TStringField
      FieldName = 'customers_state'
      Size = 32
    end
    object WebOrderscustomers_country: TStringField
      FieldName = 'customers_country'
      Size = 32
    end
    object WebOrderscustomers_telephone: TStringField
      FieldName = 'customers_telephone'
      Size = 32
    end
    object WebOrderscustomers_email_address: TStringField
      FieldName = 'customers_email_address'
      Size = 96
    end
    object WebOrdersorders_date_finished: TSQLTimeStampField
      FieldName = 'orders_date_finished'
    end
    object WebOrdersdate_purchased: TSQLTimeStampField
      FieldName = 'date_purchased'
    end
    object WebOrdersorders_status_id: TIntegerField
      FieldName = 'orders_status_id'
      Required = True
    end
    object WebOrdersfinal_price: TFMTBCDField
      FieldName = 'final_price'
      Precision = 17
      Size = 4
    end
    object WebOrdersshop_id: TIntegerField
      FieldName = 'shop_id'
      Required = True
    end
    object WebOrderscustomers_password: TStringField
      FieldName = 'customers_password'
      Size = 40
    end
    object WebOrderscustomers_dob: TDateField
      FieldName = 'customers_dob'
    end
    object WebOrderscustomers_fax: TStringField
      FieldName = 'customers_fax'
      Size = 32
    end
    object WebOrderscustomers_gender: TStringField
      FieldName = 'customers_gender'
      FixedChar = True
      Size = 1
    end
    object WebOrderscustomers_firstname: TStringField
      FieldName = 'customers_firstname'
      Size = 32
    end
    object WebOrderscustomers_lastname: TStringField
      FieldName = 'customers_lastname'
      Size = 32
    end
  end
  object WebOrdersSRC: TDataSource
    AutoEdit = False
    DataSet = WebOrders
    Left = 928
    Top = 864
  end
  object SQLDSTransferOut: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT'#13#10' * '#13#10'FROM '#13#10' netshop_transfer '#13#10'WHERE '#13#10'product_origin=:' +
      'shopid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'shopid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 912
    Top = 232
  end
  object DPTransferOut: TDataSetProvider
    DataSet = SQLDSTransferOut
    Left = 912
    Top = 280
  end
  object Transferout: TClientDataSet
    Aggregates = <>
    FileName = 'database\transferout.cds'
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
      end
      item
        Name = 'date_time'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DPTransferOut'
    StoreDefs = True
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    OnNewRecord = netshop_transferNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 912
    Top = 336
    object Transferoutid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object Transferoutproduct_model: TStringField
      FieldName = 'product_model'
      Size = 15
    end
    object Transferoutproduct_owner_id: TIntegerField
      FieldName = 'product_owner_id'
    end
    object Transferoutproduct_price_stock: TFMTBCDField
      FieldName = 'product_price_stock'
      Precision = 10
      Size = 2
    end
    object Transferoutproduct_origin: TIntegerField
      FieldName = 'product_origin'
    end
    object Transferoutproduct_destination: TIntegerField
      FieldName = 'product_destination'
    end
    object Transferoutproduct_quantity: TIntegerField
      FieldName = 'product_quantity'
    end
    object Transferoutproduct_supplier_id: TIntegerField
      FieldName = 'product_supplier_id'
    end
    object Transferoutproduct_date_in: TStringField
      FieldName = 'product_date_in'
      Size = 8
    end
    object Transferoutproduct_price_gross: TFMTBCDField
      FieldName = 'product_price_gross'
      Precision = 10
      Size = 2
    end
    object Transferoutdate_time: TFloatField
      FieldName = 'date_time'
      Required = True
    end
  end
  object SQLDSExtStock: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select product_model, '#13#10'product_quantity,'#13#10'product_location, '#13#10'p' +
      'roduct_supplier_id, '#13#10'product_owner_id, '#13#10'product_price_stock  '#13 +
      #10'from '#13#10'netshop_stock where product_location <> :shopid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'shopid'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = SQLConnection
    Left = 1304
    Top = 264
  end
  object DPExtStock: TDataSetProvider
    DataSet = SQLDSExtStock
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DPstockBeforeUpdateRecord
    Left = 1304
    Top = 312
  end
  object CDSExtStock: TClientDataSet
    Aggregates = <>
    FileName = 'database\extstock.cds'
    FieldDefs = <
      item
        Name = 'product_model'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'product_quantity'
        DataType = ftInteger
      end
      item
        Name = 'product_location'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'product_supplier_id'
        DataType = ftInteger
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
    IndexName = 'StockIXModelLocation'
    Params = <>
    ProviderName = 'DPExtStock'
    StoreDefs = True
    OnCalcFields = netshop_stockCalcFields
    OnNewRecord = netshop_stockNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 1304
    Top = 360
    object CDSExtStockproduct_model: TStringField
      FieldName = 'product_model'
      Required = True
      Size = 15
    end
    object CDSExtStockproduct_quantity: TIntegerField
      FieldName = 'product_quantity'
    end
    object CDSExtStockproduct_location: TIntegerField
      FieldName = 'product_location'
      Required = True
    end
    object CDSExtStockproduct_supplier_id: TIntegerField
      FieldName = 'product_supplier_id'
    end
    object CDSExtStockproduct_owner_id: TIntegerField
      FieldName = 'product_owner_id'
      Required = True
    end
    object CDSExtStockproduct_price_stock: TFMTBCDField
      FieldName = 'product_price_stock'
      Precision = 10
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = CDSExtStock
    Left = 1304
    Top = 408
  end
  object SQLConnection: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'DevartMySQLDirect'
    LoginPrompt = False
    Params.Strings = (
      'GetDriverFunc=getSQLDriverMySQLDirect'
      'LibraryName=dbexpmda40.dll'
      'VendorLib=not used'
      'BlobSize=-1'
      'HostName=sql.smartoys.be'
      'DataBase=c_smartoys'
      'User_Name='
      'Password='
      'IPVersion=IPv4'
      'ProductName=DevartMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver200.' +
        'bpl'
      
        'MetaDataPackageLoader=TDBXDevartMySqlMetaDataCommandFactory,DbxD' +
        'evartMySqlDriver200.bpl'
      'DriverUnit=DbxDevartMySql'
      'UseUnicode=False')
    Left = 40
    Top = 8
  end
  object DPOut: TDataSetProvider
    DataSet = SQLDataSetOUT
    UpdateMode = upWhereKeyOnly
    Left = 1480
    Top = 312
  end
  object DPIn: TDataSetProvider
    DataSet = SQLDataSetIN
    UpdateMode = upWhereKeyOnly
    Left = 1392
    Top = 304
  end
  object CDSOut: TClientDataSet
    Aggregates = <>
    FileName = 'database\RequestOut.cds'
    Params = <>
    ProviderName = 'DPOut'
    AfterPost = GenericAfterPost
    Left = 1488
    Top = 368
    object CDSOutid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOutproduct_model: TStringField
      FieldName = 'product_model'
      Size = 15
    end
    object CDSOutproduct_name: TStringField
      FieldName = 'product_name'
      Size = 64
    end
    object CDSOutproduct_root_category: TStringField
      FieldName = 'product_root_category'
      Size = 64
    end
    object CDSOutproduct_price_stock: TFMTBCDField
      FieldName = 'product_price_stock'
      Precision = 12
      Size = 4
    end
    object CDSOutproduct_origin: TIntegerField
      FieldName = 'product_origin'
    end
    object CDSOutproduct_destination: TIntegerField
      FieldName = 'product_destination'
    end
    object CDSOutproduct_quantity: TIntegerField
      FieldName = 'product_quantity'
    end
    object CDSOutproduct_supplier_id: TIntegerField
      FieldName = 'product_supplier_id'
    end
    object CDSOutproduct_owner_id: TIntegerField
      FieldName = 'product_owner_id'
    end
    object CDSOutdate_added: TDateField
      FieldName = 'date_added'
      Required = True
    end
  end
  object CDSIn: TClientDataSet
    Aggregates = <>
    FileName = 'database\RequestIn.cds'
    Params = <>
    ProviderName = 'DPIn'
    AfterPost = GenericAfterPost
    Left = 1400
    Top = 352
    object CDSInid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSInproduct_model: TStringField
      FieldName = 'product_model'
      Size = 15
    end
    object CDSInproduct_name: TStringField
      FieldName = 'product_name'
      Size = 64
    end
    object CDSInproduct_root_category: TStringField
      FieldName = 'product_root_category'
      Size = 64
    end
    object CDSInproduct_price_stock: TFMTBCDField
      FieldName = 'product_price_stock'
      Precision = 12
      Size = 4
    end
    object CDSInproduct_origin: TIntegerField
      FieldName = 'product_origin'
    end
    object CDSInproduct_destination: TIntegerField
      FieldName = 'product_destination'
    end
    object CDSInproduct_quantity: TIntegerField
      FieldName = 'product_quantity'
    end
    object CDSInproduct_supplier_id: TIntegerField
      FieldName = 'product_supplier_id'
    end
    object CDSInproduct_owner_id: TIntegerField
      FieldName = 'product_owner_id'
    end
    object CDSIndate_added: TDateField
      FieldName = 'date_added'
      Required = True
    end
  end
  object DSOut: TDataSource
    DataSet = CDSOut
    Left = 1488
    Top = 416
  end
  object DSIn: TDataSource
    DataSet = CDSIn
    Left = 1392
    Top = 400
  end
  object SQLDataSetIN: TSQLDataSet
    SchemaName = 'c_smartoys'
    CommandText = 
      'select * '#13#10'from `netshop_transfer_request` '#13#10'where product_desti' +
      'nation=:shopid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'shopid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 1392
    Top = 248
  end
  object SQLDataSetOUT: TSQLDataSet
    SchemaName = 'c_smartoys'
    CommandText = 
      'select * from `netshop_transfer_request` where product_origin=:s' +
      'hopid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'shopid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 1480
    Top = 256
  end
  object DSTransfer: TDataSource
    DataSet = netshop_transfer
    Left = 832
    Top = 376
  end
  object IdFTP: TIdFTP
    IPVersion = Id_IPv4
    TransferType = ftBinary
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 128
    Top = 864
  end
  object ProgressMidSync: TJvProgressComponent
    OnShow = ProgressMidSyncShow
    Left = 64
    Top = 472
  end
  object ProDescFRSRC: TDataSource
    DataSet = CDSProDescFR
    Left = 344
    Top = 380
  end
  object CDSProDescFR: TClientDataSet
    Aggregates = <>
    FileName = 'database\ProDescFR.cds'
    FieldDefs = <
      item
        Name = 'products_id'
        DataType = ftFMTBcd
        Precision = 20
        Size = 4
      end
      item
        Name = 'language_id'
        DataType = ftInteger
      end
      item
        Name = 'products_name'
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
      end
      item
        Name = 'products_bonus'
        DataType = ftMemo
      end
      item
        Name = 'products_msgticket'
        DataType = ftMemo
      end>
    IndexDefs = <>
    IndexFieldNames = 'products_id'
    Params = <>
    ProviderName = 'DPProDescFR'
    StoreDefs = True
    AfterPost = CDSProDescFRAfterPost
    AfterDelete = GenericAfterPost
    OnNewRecord = CDSProDescFRNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 344
    Top = 332
    object CDSProDescFRproducts_name: TStringField
      FieldName = 'products_name'
      Required = True
      OnChange = CDSProDescFRproducts_nameChange
      Size = 64
    end
    object CDSProDescFRproducts_name_ext: TStringField
      FieldName = 'products_name_ext'
      Size = 64
    end
    object CDSProDescFRproducts_description: TMemoField
      FieldName = 'products_description'
      BlobType = ftMemo
      Size = 1
    end
    object CDSProDescFRproducts_bonus: TMemoField
      FieldName = 'products_bonus'
      BlobType = ftMemo
      Size = 1
    end
    object CDSProDescFRlanguage_id: TIntegerField
      FieldName = 'language_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSProDescFRproducts_id: TFMTBCDField
      FieldName = 'products_id'
      Precision = 20
      Size = 0
    end
    object mfldCDSProDescFRproducts_msgticket: TMemoField
      FieldName = 'products_msgticket'
      BlobType = ftMemo
    end
  end
  object SQLDSProDescFR: TSQLDataSet
    SchemaName = 'gomedia'
    CommandText = 
      'SELECT products_id, '#13#10'language_id, '#13#10'products_name, '#13#10'products_n' +
      'ame_ext, '#13#10'products_description, '#13#10'products_bonus,'#13#10'products_msg' +
      'ticket'#13#10'  FROM products_description  WHERE (language_id =1)'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection
    Left = 344
    Top = 236
  end
  object DPProDescFR: TDataSetProvider
    DataSet = SQLDSProDescFR
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DPProDescFRBeforeUpdateRecord
    Left = 344
    Top = 284
  end
  object ProDescNLSRC: TDataSource
    DataSet = CDSProDescNL
    Left = 432
    Top = 380
  end
  object CDSProDescNL: TClientDataSet
    Aggregates = <>
    FileName = 'database\ProDescNL.cds'
    FieldDefs = <
      item
        Name = 'products_id'
        DataType = ftFMTBcd
        Precision = 20
        Size = 4
      end
      item
        Name = 'language_id'
        DataType = ftInteger
      end
      item
        Name = 'products_name'
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
      end
      item
        Name = 'products_bonus'
        DataType = ftMemo
      end
      item
        Name = 'products_msgticket'
        DataType = ftMemo
      end>
    IndexDefs = <>
    IndexFieldNames = 'products_id'
    Params = <>
    ProviderName = 'DPProDescNL'
    StoreDefs = True
    AfterPost = CDSProDescNLAfterPost
    AfterDelete = GenericAfterPost
    OnNewRecord = CDSProDescNLNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 432
    Top = 332
    object CDSProDescNLproducts_name: TStringField
      FieldName = 'products_name'
      Required = True
      OnChange = CDSProDescNLproducts_nameChange
      Size = 64
    end
    object StringField24: TStringField
      FieldName = 'products_name_ext'
      Size = 64
    end
    object MemoField3: TMemoField
      FieldName = 'products_description'
      BlobType = ftMemo
      Size = 1
    end
    object MemoField4: TMemoField
      FieldName = 'products_bonus'
      BlobType = ftMemo
      Size = 1
    end
    object CDSProDescNLlanguage_id: TIntegerField
      FieldName = 'language_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSProDescNLproducts_id: TFMTBCDField
      FieldName = 'products_id'
      Precision = 20
      Size = 0
    end
    object mfldCDSProDescNLproducts_msgticket: TMemoField
      FieldName = 'products_msgticket'
      BlobType = ftMemo
    end
  end
  object SQLDSProDescNL: TSQLDataSet
    SchemaName = 'gomedia'
    CommandText = 
      'SELECT products_id, '#13#10'language_id, '#13#10'products_name, '#13#10'products_n' +
      'ame_ext, '#13#10'products_description, '#13#10'products_bonus,'#13#10'products_msg' +
      'ticket'#13#10'  FROM products_description WHERE (`language_id`=:IDLGNL' +
      ')'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDLGNL'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 432
    Top = 236
  end
  object DPProDescNL: TDataSetProvider
    DataSet = SQLDSProDescNL
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DPProDescNLBeforeUpdateRecord
    Left = 432
    Top = 284
  end
  object SQLDSQuerries: TSQLDataSet
    CommandText = 'select * from netshop_querries'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection
    Left = 144
    Top = 16
    object SQLDSQuerriesid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object SQLDSQuerriesdescription: TStringField
      FieldName = 'description'
      Required = True
      Size = 32
    end
    object SQLDSQuerriessql_query: TMemoField
      FieldName = 'sql_query'
      Required = True
      BlobType = ftMemo
      Size = 1
    end
  end
  object DPQuerries: TDataSetProvider
    DataSet = SQLDSQuerries
    Left = 144
    Top = 72
  end
  object CDSQueries: TClientDataSet
    Aggregates = <>
    FileName = 'database\queries.cds'
    Params = <>
    ProviderName = 'DPQuerries'
    ReadOnly = True
    Left = 136
    Top = 120
    object CDSQueriesid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object CDSQueriesdescription: TStringField
      FieldName = 'description'
      Required = True
      Size = 32
    end
    object CDSQueriessql_query: TMemoField
      FieldName = 'sql_query'
      Required = True
      BlobType = ftMemo
      Size = 1
    end
  end
  object QuerySRC: TDataSource
    DataSet = CDSQuery
    Left = 172
    Top = 472
  end
  object SQLDSCoupons: TSQLDataSet
    SchemaName = 'gomedia'
    AfterOpen = SQLDSCouponsAfterOpen
    CommandText = 
      'SELECT c.coupon_id,'#13#10'c.coupon_code,'#13#10'c.coupon_amount,'#13#10'c.coupon_' +
      'minimum_order, '#13#10'CAST(c.restrict_to_customers AS CHAR(8)) AS res' +
      'trict_to_customers,'#13#10'c.coupon_active,'#13#10'c.coupon_start_date,'#13#10'c.c' +
      'oupon_expire_date,'#13#10'CAST(cd.coupon_description AS CHAR(64)) AS c' +
      'oupon_description '#13#10'FROM coupons c '#13#10'LEFT OUTER JOIN coupons_des' +
      'cription cd ON cd.language_id=1 AND cd.coupon_id=c.coupon_id '#13#10'W' +
      'HERE c.coupon_start_date<NOW() AND  '#13#10'c.coupon_expire_date>NOW()' +
      ' AND '#13#10'c.coupon_start_date>DATE_ADD(NOW(), INTERVAL -30 DAY) AND' +
      ' '#13#10'c.coupon_expire_date<DATE_ADD(NOW(), INTERVAL 8 DAY) AND '#13#10'c.' +
      'restrict_to_customers>:minid AND '#13#10'c.restrict_to_customers<=:max' +
      'id'
    MaxBlobSize = 1
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
    Left = 1416
    Top = 480
    object SQLDSCouponscoupon_code: TStringField
      FieldName = 'coupon_code'
      Required = True
      Size = 32
    end
    object SQLDSCouponscoupon_amount: TFMTBCDField
      FieldName = 'coupon_amount'
      Required = True
      Precision = 10
      Size = 4
    end
    object SQLDSCouponscoupon_minimum_order: TFMTBCDField
      FieldName = 'coupon_minimum_order'
      Required = True
      Precision = 10
      Size = 4
    end
    object SQLDSCouponsrestrict_to_customers: TStringField
      FieldName = 'restrict_to_customers'
      Size = 8
    end
    object SQLDSCouponscoupon_active: TStringField
      FieldName = 'coupon_active'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLDSCouponscoupon_start_date: TSQLTimeStampField
      FieldName = 'coupon_start_date'
      Required = True
    end
    object SQLDSCouponscoupon_expire_date: TSQLTimeStampField
      FieldName = 'coupon_expire_date'
      Required = True
    end
    object SQLDSCouponscoupon_description: TStringField
      FieldName = 'coupon_description'
      Size = 64
    end
    object SQLDSCouponscoupon_id: TIntegerField
      FieldName = 'coupon_id'
      Required = True
    end
  end
  object DPCoupons: TDataSetProvider
    DataSet = SQLDSCoupons
    BeforeUpdateRecord = DPCouponsBeforeUpdateRecord
    Left = 1416
    Top = 536
  end
  object CDSCoupons: TClientDataSet
    Aggregates = <>
    FileName = 'database\coupons.cds'
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'CouponsIXCustomers'
        Fields = 'restrict_to_customers'
      end>
    Params = <>
    ProviderName = 'DPCoupons'
    StoreDefs = True
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    Left = 1416
    Top = 592
    object CDSCouponscoupon_code: TStringField
      FieldName = 'coupon_code'
      Required = True
      Size = 32
    end
    object CDSCouponscoupon_amount: TFMTBCDField
      FieldName = 'coupon_amount'
      Required = True
      Precision = 10
      Size = 4
    end
    object CDSCouponscoupon_minimum_order: TFMTBCDField
      FieldName = 'coupon_minimum_order'
      Required = True
      Precision = 10
      Size = 4
    end
    object CDSCouponsrestrict_to_customers: TStringField
      FieldName = 'restrict_to_customers'
      Size = 8
    end
    object CDSCouponscoupon_active: TStringField
      FieldName = 'coupon_active'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCouponscoupon_start_date: TSQLTimeStampField
      FieldName = 'coupon_start_date'
      Required = True
    end
    object CDSCouponscoupon_expire_date: TSQLTimeStampField
      FieldName = 'coupon_expire_date'
      Required = True
    end
    object CDSCouponscoupon_description: TStringField
      FieldName = 'coupon_description'
      Size = 64
    end
    object CDSCouponscoupon_id: TIntegerField
      FieldName = 'coupon_id'
      Required = True
    end
  end
  object DSCoupons: TDataSource
    DataSet = CDSCoupons
    Left = 1416
    Top = 648
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
  object netshop_suppliers: TClientDataSet
    Aggregates = <>
    FileName = 'database\suppliers.cds'
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'netshop_suppliersIndex'
        Fields = 'Suppliers_id'
      end>
    IndexName = 'netshop_suppliersIndex'
    Params = <>
    ProviderName = 'DPSuppliers'
    StoreDefs = True
    Left = 808
    Top = 120
  end
  object DPSuppliers: TDataSetProvider
    DataSet = SQLDSSuppliers
    Left = 808
    Top = 64
  end
  object ProgressClose: TJvProgressComponent
    OnShow = ProgressCloseShow
    Left = 48
    Top = 304
  end
  object SQLDSStockReturned: TSQLDataSet
    SchemaName = 'gomedia'
    GetMetadata = False
    CommandText = 
      'SELECT '#9'id, '#13#10#9'product_model, '#13#10#9'product_name, '#13#10#9'product_owner_' +
      'id, '#13#10#9'product_price_stock, '#13#10#9'product_location, '#13#10#9'product_quan' +
      'tity, '#13#10#9'product_supplier_id, '#13#10#9'product_date_in, '#13#10#9'product_pri' +
      'ce_gross, '#13#10#9'product_isdefect, '#13#10#9'date_returned'#13#10#9' '#13#10#9'FROM '#13#10#9'ne' +
      'tshop_stock_returned '#13#10#13#10'where product_location = :shopid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'shopid'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = SQLConnection
    Left = 1584
    Top = 32
    object IntegerField1: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField4: TStringField
      FieldName = 'product_model'
      Required = True
      Size = 15
    end
    object StringField5: TStringField
      FieldName = 'product_name'
      Size = 32
    end
    object IntegerField2: TIntegerField
      FieldName = 'product_owner_id'
      Required = True
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'product_price_stock'
      Precision = 10
      Size = 2
    end
    object IntegerField3: TIntegerField
      FieldName = 'product_location'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'product_quantity'
    end
    object IntegerField5: TIntegerField
      FieldName = 'product_supplier_id'
    end
    object StringField6: TStringField
      FieldName = 'product_date_in'
      Size = 8
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'product_price_gross'
      Precision = 10
      Size = 2
    end
    object IntegerField6: TIntegerField
      FieldName = 'product_isdefect'
      Required = True
    end
    object SQLDSStockReturneddate_returned: TFloatField
      FieldName = 'date_returned'
      Required = True
    end
  end
  object DPStockReturned: TDataSetProvider
    DataSet = SQLDSStockReturned
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DPStockReturnedBeforeUpdateRecord
    Left = 1584
    Top = 80
  end
  object netshop_stock_returned: TClientDataSet
    Aggregates = <>
    FileName = 'database\stock_returned.cds'
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
      end
      item
        Name = 'date_returned'
        Attributes = [faRequired]
        DataType = ftFloat
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
    IndexFieldNames = 'product_owner_id'
    MasterFields = 'customers_nbr'
    MasterSource = CustomersSRC
    PacketRecords = 0
    Params = <>
    ProviderName = 'DPStockReturned'
    StoreDefs = True
    AfterPost = GenericAfterPost
    AfterDelete = GenericAfterPost
    OnCalcFields = netshop_stock_returnedCalcFields
    OnNewRecord = netshop_stockNewRecord
    OnReconcileError = GeneralReconcileError
    Left = 1584
    Top = 128
    object IntegerField7: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField7: TStringField
      FieldName = 'product_model'
      Required = True
      Size = 15
    end
    object StringField8: TStringField
      FieldName = 'product_name'
      Size = 32
    end
    object IntegerField8: TIntegerField
      FieldName = 'product_owner_id'
      Required = True
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'product_price_stock'
      DisplayFormat = '#,##0.00'
      currency = True
      Precision = 10
      Size = 2
    end
    object IntegerField9: TIntegerField
      FieldName = 'product_location'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField10: TIntegerField
      FieldName = 'product_quantity'
    end
    object IntegerField11: TIntegerField
      FieldName = 'product_supplier_id'
    end
    object StringField9: TStringField
      FieldName = 'product_date_in'
      Size = 8
    end
    object FMTBCDField4: TFMTBCDField
      FieldName = 'product_price_gross'
      Precision = 10
      Size = 2
    end
    object IntegerField12: TIntegerField
      FieldName = 'product_isdefect'
      Required = True
    end
    object FloatField1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'product_price_gross_total'
      Calculated = True
    end
    object DateTimeField1: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'product_date_in_display'
      Calculated = True
    end
    object FloatField2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'product_price_stock_total'
      DisplayFormat = '#,##0.00'
      currency = True
      Calculated = True
    end
    object netshop_stock_returneddate_returned: TFloatField
      FieldName = 'date_returned'
      Required = True
    end
    object netshop_stock_returneddate_returned_display: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'date_returned_display'
      Calculated = True
    end
  end
  object StockReturnedSRC: TDataSource
    DataSet = netshop_stock_returned
    Left = 1584
    Top = 176
  end
  object SQLDSActions: TSQLDataSet
    SchemaName = 'gomedia'
    CommandText = 
      'select '#13#10#13#10'`shops_id`, `datetime`, `action`'#13#10#13#10' from `netshop_ac' +
      'tions`'#13#10'where `shops_id`=:shopid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'shopid'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 1584
    Top = 248
  end
  object DPActions: TDataSetProvider
    DataSet = SQLDSActions
    Left = 1584
    Top = 304
  end
  object CDSActions: TClientDataSet
    Aggregates = <>
    FileName = 'database\actions.cds'
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'CDSActionsIndexDateTime'
        Fields = 'datetime'
        Options = [ixDescending]
      end>
    IndexName = 'CDSActionsIndexDateTime'
    Params = <>
    ProviderName = 'DPActions'
    StoreDefs = True
    OnNewRecord = CDSActionsNewRecord
    Left = 1584
    Top = 360
    object CDSActionsshops_id: TIntegerField
      FieldName = 'shops_id'
      Required = True
    end
    object CDSActionsdatetime: TSQLTimeStampField
      FieldName = 'datetime'
      Required = True
    end
    object CDSActionsaction: TStringField
      FieldName = 'action'
      Required = True
      Size = 64
    end
  end
  object SQLMonitor: TSQLMonitor
    FileName = 'sql.txt'
    SQLConnection = SQLConnection
    Left = 48
    Top = 112
  end
end
