unit ClientDMunitDBX;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, Menus,
  ComCtrls, DBCtrls, Mask, OleCtrls, DBCGrids, DBClient, MConnect,
  SConnect, Provider, FMTBcd, SqlExpr, variants, MidasLib,
  JvComponent, IdBaseComponent, IdComponent, IdRawBase,
  IdRawClient, IdIcmpClient,StrUtils, lbcipher, lbutils, WSDLIntf ,
  JvBaseDlg, JvProgressDialog, JvProgressComponent, JvComponentBase,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, IdMessage,
  IdAttachment, IdAttachmentFile, IdThreadComponent,
  IdExplicitTLSClientServerBase, IdSMTPBase, WideStrings;

type

  Catarray = array of integer;

  TDayCashierSummary = Record
   Open:Boolean;
   New:double;
   New6:double;
   New21:double;
   Return21:Double;
   Return6:Double;
   Invoice21:Double;
   Invoice6:Double;
   SH:double;
   SHDeposit:double;
   SHBought:double;
   NoMargin:double;
   Service:double;
   TotalNature:double;
   Cash:double;
   BCT:double;
   Voucher:double;
   Visa:double;
   Proton:double;
   TotalPay:double;
   Refunds:double;
   Returns:double;
   Expenses:double;
   ExpensesDesc:String;
  end;

  TRemoteDB = class(TDataModule)
    Tips: TClientDataSet;
    SQLDSRentStock: TSQLDataSet;
    DPRentStock: TDataSetProvider;
    RentStock: TClientDataSet;
    RentStockrent_stock_id: TIntegerField;
    RentStockrent_stock_condition: TSmallintField;
    RentStockrent_stock_count: TIntegerField;
    RentStockrent_stock_state: TSmallintField;
    RentStockrent_stock_date_added: TFloatField;
    RentStockrent_stock_last_rent: TFloatField;
    RentStockrent_stock_location: TSmallintField;
    RentStockSRC: TDataSource;
    SQLDSRentTransaction: TSQLDataSet;
    DPRentTransaction: TDataSetProvider;
    RentTransaction: TClientDataSet;
    RentTransactionSrc: TDataSource;
    Caroussel: TClientDataSet;
    Carousselid: TIntegerField;
    Carousselshop_id: TIntegerField;
    Carousselmachine_id: TIntegerField;
    Carousselslot_id: TIntegerField;
    Carousselmodel: TStringField;
    Carousselcustomer_nbr: TIntegerField;
    Carousselisroot: TBooleanField;
    Carousselnextid: TIntegerField;
    CarousselSRC: TDataSource;
    RentStockrent_stock_name: TStringField;
    InventoryErrorsproduct_price_gross_total: TFloatField;
    SQLDSRentSchemes: TSQLDataSet;
    DPRentSchemes: TDataSetProvider;
    RentSchemes: TClientDataSet;
    RentSchemesSRC: TDataSource;
    RentStockrent_stock_product_model: TStringField;
    RentStockrent_stock_date_added_disp: TDateField;
    RentStockrent_stock_last_rent_disp: TDateField;
    RentTransactionrent_transaction_id: TIntegerField;
    RentTransactionrent_transaction_location: TSmallintField;
    RentTransactionrent_transaction_product_model: TStringField;
    RentTransactionrent_transaction_customer_nbr: TIntegerField;
    RentTransactionrent_transaction_start_date: TFloatField;
    RentTransactionrent_transaction_due_date: TFloatField;
    RentTransactionrent_transaction_product_name: TStringField;
    Customerscustomers_id: TIntegerField;
    Customerscustomers_gender: TStringField;
    Customerscustomers_firstname: TStringField;
    Customerscustomers_lastname: TStringField;
    Customerscustomers_dob: TSQLTimeStampField;
    Customerscustomers_email_address: TStringField;
    Customerscustomers_default_address_id: TIntegerField;
    Customerscustomers_telephone: TStringField;
    Customerscustomers_fax: TStringField;
    Customerscustomers_password: TStringField;
    Customerscustomers_points: TIntegerField;
    Customerscustomers_nbr: TIntegerField;
    Customerscustomers_newsletter: TStringField;
    Customerscustomers_TVA: TStringField;
    Customerscustomers_identity: TStringField;
    RentTransactionrent_transaction_start_display: TDateField;
    RentTransactionrent_transaction_due_display: TDateField;
    RentTransactionrent_transaction_returned: TSmallintField;
    TipsTipsText: TMemoField;
    SQLDSRefundsrefunds_id: TIntegerField;
    SQLDSRefundsrefunds_amount: TFloatField;
    SQLDSRefundsrefunds_items_id: TIntegerField;
    SQLDSRefundsrefunds_date_time: TFloatField;
    SQLDSRefundsrefunds_customer_nbr: TIntegerField;
    SQLDSRefundsrefunds_nature: TStringField;
    SQLDSRefundsrefunds_shop_id: TIntegerField;
    Refundsrefunds_id: TIntegerField;
    Refundsrefunds_amount: TFloatField;
    Refundsrefunds_items_id: TIntegerField;
    Refundsrefunds_date_time: TFloatField;
    Refundsrefunds_customer_nbr: TIntegerField;
    Refundsrefunds_nature: TStringField;
    Refundsrefunds_shop_id: TIntegerField;
    Refundsrefunds_date_time_display: TDateTimeField;
    InvoicesSrc: TDataSource;
    SQLDSInvoices: TSQLDataSet;
    DPInvoices: TDataSetProvider;
    Invoices: TClientDataSet;
    invoices_items_src: TDataSource;
    SQLDSInvoices_Items: TSQLDataSet;
    DPInvoices_items: TDataSetProvider;
    Invoices_items: TClientDataSet;
    Invoices_itemsinvoices_items_id: TIntegerField;
    Invoices_itemsinvoices_items_location: TIntegerField;
    Invoices_itemsinvoices_items_invoice_id: TIntegerField;
    Invoices_itemsinvoices_items_model: TStringField;
    Invoices_itemsinvoices_items_name: TStringField;
    Invoices_itemsinvoices_items_quantity: TIntegerField;
    Invoices_itemsinvoices_items_owner_id: TIntegerField;
    Invoices_itemsinvoices_items_supplier_id: TIntegerField;
    Invoices_itemsinvoices_items_date_in: TStringField;
    Invoices_itemsinvoices_items_refunded: TIntegerField;
    SQLDSTax_rates: TSQLDataSet;
    DPTax_Rates: TDataSetProvider;
    Tax_Rates: TClientDataSet;
    Tax_RatesSEC: TDataSource;
    Tax_Ratestax_rates_id: TIntegerField;
    Tax_Ratestax_zone_id: TIntegerField;
    Tax_Ratestax_class_id: TIntegerField;
    Tax_Ratestax_priority: TIntegerField;
    Tax_Ratestax_description: TStringField;
    Tax_Rateslast_modified: TSQLTimeStampField;
    Tax_Ratesdate_added: TSQLTimeStampField;
    SQLDSTax_Zones: TSQLDataSet;
    DPTax_Zones: TDataSetProvider;
    Tax_Zones: TClientDataSet;
    Tax_ZonesSRC: TDataSource;
    Tax_Zonesgeo_zone_id: TIntegerField;
    Tax_Zonesgeo_zone_name: TStringField;
    Tax_Zonesgeo_zone_description: TStringField;
    Tax_Zoneslast_modified: TSQLTimeStampField;
    Tax_Zonesdate_added: TSQLTimeStampField;
    SQLDSCities: TSQLDataSet;
    DPCities: TDataSetProvider;
    Cities: TClientDataSet;
    CitiesSRC: TDataSource;
    CitiesPostcode: TIntegerField;
    CitiesName: TStringField;
    SQLDSLanguage: TSQLDataSet;
    DPLanguages: TDataSetProvider;
    Languages: TClientDataSet;
    Languageslanguages_id: TIntegerField;
    Languagesname: TStringField;
    Languagescode: TStringField;
    Languagesimage: TStringField;
    Languagesdirectory: TStringField;
    Languagessort_order: TIntegerField;
    LanguagesSRC: TDataSource;
    Invoices_itemsinvoices_items_PTOTHT: TFloatField;
    Invoices_itemsinvoices_items_PTOTTVA: TFloatField;
    Invoices_itemsinvoices_items_PTOTTTC: TFloatField;
    ExpensesSRC: TDataSource;
    ProgressCreate: TJvProgressComponent;
    ProgressSync: TJvProgressComponent;
    ProgressSave: TJvProgressComponent;
    ProgressCheckPID: TJvProgressComponent;
    Customerscustomers_bank_account: TStringField;
    Customerscustomers_isTVA: TStringField;
    Customerscustomers_issupplier: TStringField;
    Customerscustomers_defltpost: TStringField;
    Customerscustomers_paycode: TStringField;
    Customerscustomers_language_id: TIntegerField;
    SQLDSCountriesToVat: TSQLDataSet;
    DPCountries_To_Vat: TDataSetProvider;
    Countries_To_Vat: TClientDataSet;
    Countries_To_Vatcountries_to_vat_id: TIntegerField;
    Countries_To_Vatcountries_to_vat_iso: TStringField;
    Countries_To_Vatcountries_to_vat_mask: TStringField;
    Customerscustomers_htprice: TStringField;
    SQLDSShopsshops_id: TIntegerField;
    SQLDSShopsshops_name: TStringField;
    SQLDSShopsshops_customers_id: TIntegerField;
    SQLDSShopsshops_title: TStringField;
    SQLDSShopsshops_adress_one: TStringField;
    SQLDSShopsshops_adress_two: TStringField;
    SQLDSShopsshops_phone: TStringField;
    SQLDSShopsshops_map_url: TMemoField;
    SQLDSShopsshops_schedule_1: TStringField;
    SQLDSShopsshops_schedule_2: TStringField;
    SQLDSShopsshops_schedule_3: TStringField;
    SQLDSShopsshops_schedule_4: TStringField;
    SQLDSShopsshops_schedule_5: TStringField;
    SQLDSShopsshops_schedule_6: TStringField;
    SQLDSShopsshops_schedule_7: TStringField;
    SQLDSShopsshops_manager_name: TStringField;
    SQLDSShopsshops_manager_email: TStringField;
    SQLDSShopsshops_picture_url: TStringField;
    SQLDSShopsshops_zone_id: TIntegerField;
    SQLDSShopsshops_country_id: TIntegerField;
    SQLDSShopsshops_logo_url: TStringField;
    SQLDSShopsshops_group_id: TIntegerField;
    SQLDSShopsshops_details: TMemoField;
    SQLDSShopsshops_TVA: TStringField;
    SQLDSShopsshops_registry: TStringField;
    SQLDSShopsshops_bank: TStringField;
    Shopsshops_id: TIntegerField;
    Shopsshops_name: TStringField;
    Shopsshops_customers_id: TIntegerField;
    Shopsshops_title: TStringField;
    Shopsshops_adress_one: TStringField;
    Shopsshops_adress_two: TStringField;
    Shopsshops_phone: TStringField;
    Shopsshops_map_url: TMemoField;
    Shopsshops_schedule_1: TStringField;
    Shopsshops_schedule_2: TStringField;
    Shopsshops_schedule_3: TStringField;
    Shopsshops_schedule_4: TStringField;
    Shopsshops_schedule_5: TStringField;
    Shopsshops_schedule_6: TStringField;
    Shopsshops_schedule_7: TStringField;
    Shopsshops_manager_name: TStringField;
    Shopsshops_manager_email: TStringField;
    Shopsshops_picture_url: TStringField;
    Shopsshops_zone_id: TIntegerField;
    Shopsshops_country_id: TIntegerField;
    Shopsshops_logo_url: TStringField;
    Shopsshops_group_id: TIntegerField;
    Shopsshops_details: TMemoField;
    Shopsshops_TVA: TStringField;
    Shopsshops_registry: TStringField;
    Shopsshops_bank: TStringField;
    SQLConnection: TSQLConnection;
    Transferid: TIntegerField;
    Transferproduct_model: TStringField;
    Transferproduct_owner_id: TIntegerField;
    Transferproduct_origin: TIntegerField;
    Transferproduct_destination: TIntegerField;
    Transferproduct_quantity: TIntegerField;
    Transferproduct_supplier_id: TIntegerField;
    Transferproduct_date_in: TStringField;
    SQLDSAlerts: TSQLDataSet;
    DPAlerts: TDataSetProvider;
    Alerts: TClientDataSet;
    AlertsSRC: TDataSource;
    SQLDSAlertsExt: TSQLDataSet;
    DPAlertsExt: TDataSetProvider;
    AlertsExt: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    AlertsExtSRC: TDataSource;
    AlertsExtcustomers_alerts_products_cat: TStringField;
    RentTransactionrent_transaction_scheme_id: TIntegerField;
    Customerscustomers_rent_enabled: TStringField;
    RentTransactionrent_transaction_returned_date: TFloatField;
    SQLDSWarranty: TSQLDataSet;
    DPWarranty: TDataSetProvider;
    Warranty: TClientDataSet;
    WarrantySRC: TDataSource;
    Warrantywarranty_id: TIntegerField;
    Warrantywarranty_validity: TSmallintField;
    Warrantywarranty_description: TStringField;
    Rent_late: TClientDataSet;
    Rent_lateCustomer_Nbr: TIntegerField;
    Rent_lateProduct_Model: TStringField;
    Rent_lateDate_Out: TDateField;
    Rent_lateDate_Due: TDateField;
    Rent_lateOverdue_Days: TIntegerField;
    Rent_lateOverdue_Amont: TCurrencyField;
    RentLateSRC: TDataSource;
    Rent_lateProduct_Name: TStringField;
    SQLDSMan2Sup: TSQLDataSet;
    SQLDSMan2Supmanufactrers_id: TIntegerField;
    SQLDSMan2Supsuppliers_id: TIntegerField;
    Man2Sup: TClientDataSet;
    DPMan2Sup: TDataSetProvider;
    Man2Supmanufactrers_id: TIntegerField;
    Man2Supsuppliers_id: TIntegerField;
    SQLDSExpenses: TSQLDataSet;
    DPexpenses: TDataSetProvider;
    Expenses: TClientDataSet;
    Expensesexpenses_id: TIntegerField;
    Expensesexpenses_shop_id: TIntegerField;
    Expensesexpenses_date_time: TFloatField;
    Expensesexpenses_description: TStringField;
    Expensesexpenses_date_time_display: TDateTimeField;
    ProgressUpdate: TJvProgressComponent;
    RentTransactionrent_transaction_in_display: TDateTimeField;
    Items_Solditems_sold_price_stock_tot: TBCDField;
    Productsproducts_quantity: TIntegerField;
    Productsproducts_model: TStringField;
    Productsproducts_image: TStringField;
    Productsproducts_price: TFMTBCDField;
    Productsproducts_date_added: TSQLTimeStampField;
    Productsproducts_status: TSmallintField;
    Productsproducts_tax_class_id: TIntegerField;
    Productsmanufacturers_id: TIntegerField;
    Productsproducts_promo: TStringField;
    Productsproducts_stock_managed: TStringField;
    Productsproducts_date_available: TSQLTimeStampField;
    Productsproducts_last_modified: TSQLTimeStampField;
    Productsproducts_ordered: TIntegerField;
    Productsproducts_ispreview: TStringField;
    Productsproducts_root_category_name: TStringField;
    Productsproducts_isobsolete: TStringField;
    Productsproducts_warranty_id: TIntegerField;
    Productsproducts_name: TStringField;
    Productsproducts_name_ext: TStringField;
    Productsproducts_description: TMemoField;
    Productsproducts_url: TStringField;
    Productscategories_id: TIntegerField;
    Productsproducts_price_allin: TFloatField;
    Alertscustomers_alerts_customers_nbr: TStringField;
    Alertscustomers_alerts_products_model: TStringField;
    Alertscustomers_alerts_products_name: TStringField;
    Alertscustomers_alerts_products_cat: TStringField;
    Alertscustomers_alerts_used: TSmallintField;
    Alertscustomers_alerts_date_disp: TDateTimeField;
    Alertscustomers_alerts_date: TFloatField;
    SuppliersStockSRC: TDataSource;
    mesgMessage: TIdMessage;
    smtpSendMail: TIdSMTP;
    thrdMail: TIdThreadComponent;
    SQLDSRentStockrent_stock_id: TIntegerField;
    SQLDSRentStockrent_stock_product_model: TStringField;
    SQLDSRentStockrent_stock_condition: TSmallintField;
    SQLDSRentStockrent_stock_count: TIntegerField;
    SQLDSRentStockrent_stock_state: TSmallintField;
    SQLDSRentStockrent_stock_date_added: TFloatField;
    SQLDSRentStockrent_stock_last_rent: TFloatField;
    SQLDSRentStockrent_stock_location: TSmallintField;
    SQLDSRentStockrent_stock_name: TStringField;
    SQLDSRentTransactionrent_transaction_id: TIntegerField;
    SQLDSRentTransactionrent_transaction_location: TSmallintField;
    SQLDSRentTransactionrent_transaction_product_model: TStringField;
    SQLDSRentTransactionrent_transaction_customer_nbr: TIntegerField;
    SQLDSRentTransactionrent_transaction_start_date: TFloatField;
    SQLDSRentTransactionrent_transaction_due_date: TFloatField;
    SQLDSRentTransactionrent_transaction_product_name: TStringField;
    SQLDSRentTransactionrent_transaction_returned: TSmallintField;
    SQLDSRentTransactionrent_transaction_scheme_id: TIntegerField;
    SQLDSRentTransactionrent_transaction_returned_date: TFloatField;
    SQLDSAllShops: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField4: TStringField;
    IntegerField2: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    MemoField1: TMemoField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField19: TStringField;
    IntegerField5: TIntegerField;
    MemoField2: TMemoField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    DPAllShops: TDataSetProvider;
    AllShops: TClientDataSet;
    Customerscustomers_memo: TMemoField;
    SQLDSRentSchemesrent_scheme_id: TIntegerField;
    SQLDSRentSchemesrent_scheme_name: TStringField;
    SQLDSRentSchemesrent_scheme_description: TStringField;
    SQLDSRentSchemesrent_scheme_base_days: TSmallintField;
    SQLDSRentSchemesrent_scheme_base_price: TFloatField;
    SQLDSRentSchemesrent_scheme_extra_price: TFloatField;
    SQLDSRentSchemesrent_scheme_default: TSmallintField;
    SQLDSRentSchemesrent_scheme_location: TSmallintField;
    Productsproducts_street_block: TStringField;
    SQLQuery: TSQLDataSet;
    Transferproduct_price_stock: TFMTBCDField;
    Transferproduct_price_gross: TFMTBCDField;
    Salessales_paid_cash: TFMTBCDField;
    Salessales_paid_bct: TFMTBCDField;
    Salessales_paid_proton: TFMTBCDField;
    Salessales_paid_visa: TFMTBCDField;
    Salessales_paid_voucher: TFMTBCDField;
    SuppliersStocksuppliers_price: TFMTBCDField;
    SQLDSItemsSolditems_sold_price_gross: TFMTBCDField;
    SQLDSItemsSolditems_sold_price_ht: TFMTBCDField;
    SQLDSItemsSolditems_sold_price_catalog: TFMTBCDField;
    SQLDSItemsSolditems_sold_price_stock: TFMTBCDField;
    Items_Solditems_sold_price_gross: TFMTBCDField;
    Items_Solditems_sold_price_ht: TFMTBCDField;
    Items_Solditems_sold_price_catalog: TFMTBCDField;
    Items_Solditems_sold_price_stock: TFMTBCDField;
    PPricesPrice: TFMTBCDField;
    Items_Refundeditems_refunded_price_gross: TFMTBCDField;
    Items_Refundeditems_refunded_price_catalog: TFMTBCDField;
    Items_Refundeditems_refunded_price_stock: TFMTBCDField;
    Customerscustomers_credit: TFMTBCDField;
    Invoices_itemsinvoices_items_price_gross: TFMTBCDField;
    Invoices_itemsinvoices_items_price_catalog: TFMTBCDField;
    Invoices_itemsinvoices_items_price_tva: TFMTBCDField;
    Invoices_itemsinvoices_items_tva_rate: TFMTBCDField;
    Invoices_itemsinvoices_items_price_stock: TFMTBCDField;
    Tax_Ratestax_rate: TFMTBCDField;
    Expensesexpenses_amount: TFMTBCDField;
    Productsproducts_id: TFMTBCDField;
    Productsproducts_weight: TFMTBCDField;
    Stockid: TIntegerField;
    Stockproduct_model: TStringField;
    Stockproduct_name: TStringField;
    Stockproduct_owner_id: TIntegerField;
    Stockproduct_price_stock: TFMTBCDField;
    Stockproduct_location: TIntegerField;
    Stockproduct_quantity: TIntegerField;
    Stockproduct_supplier_id: TIntegerField;
    Stockproduct_date_in: TStringField;
    Stockproduct_price_gross: TFMTBCDField;
    Stockproduct_isdefect: TIntegerField;
    SQLDSStockid: TIntegerField;
    SQLDSStockproduct_model: TStringField;
    SQLDSStockproduct_name: TStringField;
    SQLDSStockproduct_owner_id: TIntegerField;
    SQLDSStockproduct_price_stock: TFMTBCDField;
    SQLDSStockproduct_location: TIntegerField;
    SQLDSStockproduct_quantity: TIntegerField;
    SQLDSStockproduct_supplier_id: TIntegerField;
    SQLDSStockproduct_date_in: TStringField;
    SQLDSStockproduct_price_gross: TFMTBCDField;
    SQLDSStockproduct_isdefect: TIntegerField;
    Invoicesinvoices_date_time: TFloatField;
    Invoicesinvoices_paid_cash: TFMTBCDField;
    Invoicesinvoices_paid_bct: TFMTBCDField;
    Invoicesinvoices_paid_proton: TFMTBCDField;
    Invoicesinvoices_paid_visa: TFMTBCDField;
    Invoicesinvoices_paid_voucher: TFMTBCDField;
    Invoicesinvoices_customer_id: TIntegerField;
    Invoicesinvoices_location: TIntegerField;
    Invoicesinvoices_id: TIntegerField;
    Invoicesinvoices_closed: TIntegerField;
    Invoicesinvoices_comments: TMemoField;
    Invoicesinvoices_paid_totalttc: TFloatField;
    Invoicesinvoices_date_disp: TDateTimeField;
    SQLDSInvoices_Itemsinvoices_items_id: TIntegerField;
    SQLDSInvoices_Itemsinvoices_items_location: TIntegerField;
    SQLDSInvoices_Itemsinvoices_items_invoice_id: TIntegerField;
    SQLDSInvoices_Itemsinvoices_items_model: TStringField;
    SQLDSInvoices_Itemsinvoices_items_name: TStringField;
    SQLDSInvoices_Itemsinvoices_items_quantity: TIntegerField;
    SQLDSInvoices_Itemsinvoices_items_price_gross: TFMTBCDField;
    SQLDSInvoices_Itemsinvoices_items_price_catalog: TFMTBCDField;
    SQLDSInvoices_Itemsinvoices_items_price_tva: TFMTBCDField;
    SQLDSInvoices_Itemsinvoices_items_tva_rate: TFMTBCDField;
    SQLDSInvoices_Itemsinvoices_items_price_stock: TFMTBCDField;
    SQLDSInvoices_Itemsinvoices_items_owner_id: TIntegerField;
    SQLDSInvoices_Itemsinvoices_items_supplier_id: TIntegerField;
    SQLDSInvoices_Itemsinvoices_items_date_in: TStringField;
    SQLDSInvoices_Itemsinvoices_items_refunded: TIntegerField;
    Stockproduct_price_gross_total: TFloatField;
    Stockproduct_date_in_display: TDateTimeField;
    Stockproduct_price_stock_total: TFloatField;
    SQLDSExpensesexpenses_id: TIntegerField;
    SQLDSExpensesexpenses_shop_id: TIntegerField;
    SQLDSExpensesexpenses_date_time: TFloatField;
    SQLDSExpensesexpenses_amount: TFMTBCDField;
    SQLDSExpensesexpenses_description: TStringField;
    SQLDSCashClose: TSQLDataSet;
    DPCashClose: TDataSetProvider;
    CDSCashClose: TClientDataSet;
    CDSCashClosecashclose_shopid: TIntegerField;
    CDSCashClosecashclose_amountleft: TFMTBCDField;
    CDSCashClosecashclose_amountout: TFMTBCDField;
    CDSCashClosecashclose_datetime: TFloatField;
    SQLDSCashClosecashclose_shopid: TIntegerField;
    SQLDSCashClosecashclose_amountleft: TFMTBCDField;
    SQLDSCashClosecashclose_amountout: TFMTBCDField;
    SQLDSCashClosecashclose_datetime: TFloatField;
    SQLDSCashClosecashclose_operator: TStringField;
    CDSCashClosecashclose_operator: TStringField;
    CashCloseSRC: TDataSource;
    Productsproducts_active: TBooleanField;
    procedure thrdMailRun(Sender: TIdThreadComponent);
    procedure AlertsNewRecord(DataSet: TDataSet);
    procedure AlertsCalcFields(DataSet: TDataSet);
    procedure ProductsAfterEdit(DataSet: TDataSet);
    procedure DPItemsSoldBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure SQLDSAlertsParseSelectSql(var FieldNames: TWideStrings;
      SQL: WideString; var TableName: WideString);
    procedure Items_SoldCalcFields(DataSet: TDataSet);
    procedure ProgressUpdateShow(Sender: TObject);
    procedure ExpensesCalcFields(DataSet: TDataSet);
    procedure CustomersBeforePost(DataSet: TDataSet);
    procedure Address_BookBeforePost(DataSet: TDataSet);
    procedure DPCustomersBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DPSalesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure SalesAfterOpen(DataSet: TDataSet);
    procedure RentStockNewRecord(DataSet: TDataSet);
    procedure RentTransactionNewRecord(DataSet: TDataSet);
    procedure CarousselNewRecord(DataSet: TDataSet);
    procedure InventoryErrorsCalcFields(DataSet: TDataSet);
    procedure RentSchemesNewRecord(DataSet: TDataSet);
    procedure RentTransactionCalcFields(DataSet: TDataSet);
    procedure RentStockCalcFields(DataSet: TDataSet);
    procedure InvoicesAfterOpen(DataSet: TDataSet);
    procedure InvoicesNewRecord(DataSet: TDataSet);
    procedure DPInvoicesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure Invoices_itemsNewRecord(DataSet: TDataSet);
    procedure InvoicesCalcFields(DataSet: TDataSet);
    procedure Invoices_itemsCalcFields(DataSet: TDataSet);
    procedure DPExpensesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure ExpensesNewRecord(DataSet: TDataSet);
    procedure Productscategories_idChange(Sender: TField);
    procedure DPRefundsBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure DPAlertsBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure DPSuppliersStockBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DPstockBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure CDSCashCloseNewRecord(DataSet: TDataSet);
    procedure Customerscustomers_email_addressSetText(Sender: TField;
      const Text: string);
    procedure Productsproducts_activeSetText(Sender: TField;
      const Text: string);
  private
    { Private declarations }
    DBIsUpdating:Boolean;
    FFrom: string;
    FMsg: string;
    FServer: string;
    FSubject: string;
    FTo: string;
    FFilename:String;
    function GetIsConnected: Boolean;
    function GetDBIsOnDisk: Boolean;
    function GetTodaysDate: string;
    function GetCurrentSalesDate :string;
    function GetNextEan(Dataset: TCustomClientDataset; const PrimaryKey: string): tbcd;
    function GetNextId(Dataset: TCustomClientDataset; const PrimaryKey: string): Integer;
    function GetNextSubIdDouble(Dataset: TCustomClientDataset; const MasterKey,PrimaryKey: string): Integer;
    function GetNextCustomersId(Dataset: TCustomClientDataset; const PrimaryKey: string): Integer;
    function GetNextSubIdSimple(Dataset: TCustomClientDataset; const PrimaryKey: string): Integer;
    procedure keepconnect;
    function SaveDataset(Dataset: TClientDataset;backup:boolean):boolean;
    function GetDatasetsCount: integer;
    function GetDatasetsAllBrowse: boolean;



  public
    { Public declarations }
    function GetRootCategory(Category_id: integer): integer;
    property IsUpdating:boolean read DBIsUpdating write DBIsUpdating;
    property DatasetsCount:integer read GetDatasetsCount;
    property DatasetsAllBrowse:boolean read GetDatasetsAllBrowse;
    property IsConnected:Boolean Read GetIsConnected;
    property DBIsOnDisk:Boolean read GetDBIsOnDisk;
    function MoveToArchives(Model: string):boolean;
    function EncodeMD5(Source: string):string;
    function RestoreFromArchives(Model: string):boolean;
    function IsInArchives(Model: string):boolean;
    function GetMotherCategory(Category_id:integer):integer;
    function GetPurchasePrice(ProductModel:string;Margin:integer):Double;
    function GetChildCategories (Category_id:integer):catarray;
    function GetStockNew(Model:string):integer;
    function GetStockOcc(Model:string):integer;
    function GetSold(Model: string; days: integer): Tpoint;
    function CheckField(DbName, FieldName: string; Value: Variant): boolean;
    function GetPriceHT(Model: string;PriceTTC:double): double;
    function GetPriceTTC(Model: string;PriceHT:double): double;
    function CalcDayCahsierSummary(startdate,enddate:integer):tdaycashiersummary;
    function CalcInvoiceTVA(TaxClassRate:integer): Double;
    function CalcInvoiceTVABase(TaxClassRate:integer): Double;
    function CheckExtStock(Model:String;Ingroup:Boolean):Integer;
    procedure Synchronise;
    procedure ApplyUpdates;
    procedure DeleteFromStock(product_model:string;product_owner_id, product_supplier_id, quantity:integer);
    procedure CheckCategories;
    procedure CheckProductsEan;
    procedure BuildProductsId;
    procedure FreeAlertsTo;
    procedure FreeProductsTo;
    procedure SetProductstoSuppliersStock;
    procedure SetAlertstoCustomers;
    Procedure SetItemsToCustomers;
    Procedure FreeItemsTo;
    procedure SetStockToCustomers;
    procedure FreeStockto;
    Procedure SetItemstoSales;
    procedure setsalestoCustomers;
    procedure FreeSalesTo;
    Procedure SetPPricestoProducts;
    Procedure FreePPricesTo;
    Procedure SetRepairToCustomers;
    Procedure FreeRepairTo;
    Procedure SetRefundsToCustomers;
    Procedure FreeRefundsTo;
    procedure FreeItemsRefundedTo;
    Procedure SetAddress_bookToCustomers;
    procedure FreeAddress_booktoCustomers;
    procedure SetRentToCustomers;
    procedure FreeRentTo;
    procedure SetInvoicesItemsToInvoices;
    procedure FreeInvoicesItems;
    procedure SetInvoicesToCustomers;
    procedure FreeInvoicesToCustomers;
    procedure SetProductPrice(Price:Double);
    procedure SetSupplierPrice(Price:Double;SupplierName,Model:string);
    function DBChangeCount:Integer;
    function GetWholeSalePrice(Model:String):Double;

  published
    ProductsSRC: TDataSource;
    ManufacturersSRC: TDataSource;
    Tax_ClassSRC: TDataSource;
    CountriesSRC: TDataSource;
    CategoriesSRC: TDataSource;
    ShopsSRC: TDataSource;
    SuppliersSRC: TDataSource;
    StockSRC: TDataSource;
    SalesSRC: TDataSource;
    Items_SoldSRC: TDataSource;
    Products: TClientDataSet;
    Manufacturers: TClientDataSet;
    Shops: TClientDataSet;
    Suppliers: TClientDataSet;
    Tax_Class: TClientDataSet;
    Countries: TClientDataSet;
    Stock: TClientDataSet;
    Manufacturersmanufacturers_id: TIntegerField;
    Manufacturersmanufacturers_name: TStringField;
    Manufacturersmanufacturers_image: TStringField;
    Manufacturersmanufacturers_url: TStringField;
    Manufacturersmanufacturers_ean_prefix: TStringField;
    SuppliersSuppliers_id: TIntegerField;
    SuppliersSuppliers_Name: TStringField;
    Countriescountries_id: TIntegerField;
    Countriescountries_name: TStringField;
    Countriescountries_iso_code_2: TStringField;
    Countriescountries_iso_code_3: TStringField;
    Countriesaddress_format_id: TIntegerField;
    Tax_Classtax_class_id: TIntegerField;
    Tax_Classtax_class_title: TStringField;
    Tax_Classtax_class_description: TStringField;
    Categories: TClientDataSet;
    DPcategories: TDataSetProvider;
    DPmanufacturers: TDataSetProvider;
    DPcountries: TDataSetProvider;
    DPsuppliers: TDataSetProvider;
    DPstock: TDataSetProvider;
    DPshops: TDataSetProvider;
    DPtax_class: TDataSetProvider;
    SQLDSCategories: TSQLDataSet;
    SQLDSManufacturers: TSQLDataSet;
    SQLDSShops: TSQLDataSet;
    SQLDSSuppliers: TSQLDataSet;
    SQLDSTax_Class: TSQLDataSet;
    SQLDSCountries: TSQLDataSet;
    Tax_Classlast_modified: TSQLTimeStampField;
    Tax_Classdate_added: TSQLTimeStampField;
    SQLDSTransfer: TSQLDataSet;
    DPTransfer: TDataSetProvider;
    Transfer: TClientDataSet;
    SQLDSProducts: TSQLDataSet;
    DPProducts: TDataSetProvider;
    CustomersSRC: TDataSource;
    SQLDSSales: TSQLDataSet;
    DPSales: TDataSetProvider;
    Sales: TClientDataSet;
    Salessales_date_time: TFloatField;
    Salessales_customer_id: TIntegerField;
    Salessales_location: TIntegerField;
    Salessales_id: TIntegerField;
    SQLDSSuppliersStock: TSQLDataSet;
    DPSuppliersStock: TDataSetProvider;
    SuppliersStock: TClientDataSet;
    SuppliersStocksuppliers_id: TIntegerField;
    SuppliersStockproducts_model: TStringField;
    Inventory: TClientDataSet;
    Inventoryproduct_model: TStringField;
    Inventoryproduct_owner_id: TIntegerField;
    Inventoryproduct_price_stock: TBCDField;
    Inventoryproduct_location: TIntegerField;
    Inventoryproduct_quantity: TIntegerField;
    InventorySRC: TDataSource;
    Inventoryinventory_id: TIntegerField;
    InventoryErrors: TClientDataSet;
    InventoryErrorsSRC: TDataSource;
    InventoryErrorsproduct_model: TStringField;
    InventoryErrorsproduct_owner_id: TIntegerField;
    InventoryErrorsproduct_price_stock: TBCDField;
    InventoryErrorsproduct_location: TIntegerField;
    InventoryErrorsproduct_quantity: TIntegerField;
    InventoryErrorsproduct_supplier_id: TIntegerField;
    InventoryErrorsproduct_date_in: TStringField;
    InventoryErrorsproduct_price_gross: TBCDField;
    Salessales_date_time_value: TDateTimeField;
    Salessales_paid_total: TCurrencyField;
    Salessales_paid_htva: TCurrencyField;
    Salessales_paid_tva: TCurrencyField;
    SQLDSItemsSold: TSQLDataSet;
    DPItemsSold: TDataSetProvider;
    Items_Sold: TClientDataSet;
    Items_Solditems_sold_id: TIntegerField;
    Items_Solditems_sold_sales_location: TIntegerField;
    Items_Solditems_sold_sales_id: TIntegerField;
    Items_Solditems_sold_model: TStringField;
    Items_Solditems_sold_name: TStringField;
    Items_Solditems_sold_quantity: TIntegerField;
    Items_Solditems_sold_owner_id: TIntegerField;
    Items_Solditems_sold_supplier_id: TIntegerField;
    Items_Solditems_sold_date_in: TStringField;
    Items_Solditems_refunded: TIntegerField;
    Inventoryproduct_price_gross: TFloatField;
    InventoryErrorsproduct_name: TStringField;
    Inventoryproduct_name: TStringField;
    TipsSRC: TDataSource;
    PPricesSRC: TDataSource;
    SQLDSPPrices: TSQLDataSet;
    DPPprices: TDataSetProvider;
    PPrices: TClientDataSet;
    SuppliersStockshop_group_id: TIntegerField;
    PPricesShopid: TIntegerField;
    PPricesModel: TStringField;
    SQLDSStock: TSQLDataSet;
    SQLDSItemsSolditems_sold_id: TIntegerField;
    SQLDSItemsSolditems_sold_sales_location: TIntegerField;
    SQLDSItemsSolditems_sold_sales_id: TIntegerField;
    SQLDSItemsSolditems_sold_model: TStringField;
    SQLDSItemsSolditems_sold_name: TStringField;
    SQLDSItemsSolditems_sold_quantity: TIntegerField;
    SQLDSItemsSolditems_sold_owner_id: TIntegerField;
    SQLDSItemsSolditems_sold_supplier_id: TIntegerField;
    SQLDSItemsSolditems_sold_date_in: TStringField;
    SQLDSItemsSolditems_refunded: TIntegerField;
    Inventoryproduct_price_gross_total: TFloatField;
    TimerSaveDB: TTimer;
    SQLDSRepair: TSQLDataSet;
    SQLDSRepairrepair_shop_id: TIntegerField;
    SQLDSRepairrepair_id: TIntegerField;
    SQLDSRepairrepair_customer_nbr: TIntegerField;
    SQLDSRepairrepair_products_model: TStringField;
    SQLDSRepairrepair_products_name: TStringField;
    SQLDSRepairrepair_products_serial: TStringField;
    SQLDSRepairrepair_products_problem: TStringField;
    SQLDSRepairrepair_price: TFloatField;
    SQLDSRepairrepair_fixed: TStringField;
    SQLDSRepairrepair_returned: TStringField;
    SQLDSRepairrepair_date_in: TFloatField;
    SQLDSRepairrepair_date_fixed: TFloatField;
    SQLDSRepairrepair_date_out: TFloatField;
    DPRepair: TDataSetProvider;
    Repair: TClientDataSet;
    RepairSRC: TDataSource;
    Repairrepair_shop_id: TIntegerField;
    Repairrepair_id: TIntegerField;
    Repairrepair_customer_nbr: TIntegerField;
    Repairrepair_products_model: TStringField;
    Repairrepair_products_name: TStringField;
    Repairrepair_products_serial: TStringField;
    Repairrepair_products_problem: TStringField;
    Repairrepair_price: TFloatField;
    Repairrepair_fixed: TStringField;
    Repairrepair_returned: TStringField;
    Repairrepair_date_in: TFloatField;
    Repairrepair_date_fixed: TFloatField;
    Repairrepair_date_out: TFloatField;
    Repairrepair_date_in_display: TDateField;
    Repairrepair_date_our_display: TDateField;
    Repairrepair_date_fixed_display: TDateField;
    SQLDSRefunds: TSQLDataSet;
    DPRefunds: TDataSetProvider;
    Refunds: TClientDataSet;
    RefundsSRC: TDataSource;
    SQLDSItemsRefunded: TSQLDataSet;
    DPItemsRefunded: TDataSetProvider;
    Items_Refunded: TClientDataSet;
    Items_refunded_SRC: TDataSource;
    Items_Refundeditems_refunded_id: TIntegerField;
    Items_Refundeditems_refunded_refunds_shop_id: TIntegerField;
    Items_Refundeditems_refunded_refunds_id: TIntegerField;
    Items_Refundeditems_refunded_model: TStringField;
    Items_Refundeditems_refunded_name: TStringField;
    Items_Refundeditems_refunded_quantity: TIntegerField;
    Items_Refundeditems_refunded_owner_id: TIntegerField;
    Items_Refundeditems_refunded_supplier_id: TIntegerField;
    Items_Refundeditems_refunded_date_in: TStringField;
    Items_Refundeditems_refunded_refunded: TIntegerField;
//    HTML_Template1: THTML_Template;
    Categoriescategories_id: TIntegerField;
    Categoriescategories_image: TStringField;
    Categoriesparent_id: TIntegerField;
    Categoriessort_order: TIntegerField;
    Categoriesdate_added: TSQLTimeStampField;
    Categorieslast_modified: TSQLTimeStampField;
    Categoriesshow_in_news: TStringField;
    Categoriescategories_icon_url: TStringField;
    Categorieslanguage_id: TIntegerField;
    Categoriescategories_name: TStringField;
    SQLDSCustomers: TSQLDataSet;
    SQLDSAddress_book: TSQLDataSet;
    DPCustomers: TDataSetProvider;
    Address_Book: TClientDataSet;
    Address_bookSRC: TDataSource;
    Address_Bookaddress_book_id: TIntegerField;
    Address_Bookcustomers_id: TIntegerField;
    Address_Bookentry_gender: TStringField;
    Address_Bookentry_company: TStringField;
    Address_Bookentry_firstname: TStringField;
    Address_Bookentry_lastname: TStringField;
    Address_Bookentry_street_address: TStringField;
    Address_Bookentry_suburb: TStringField;
    Address_Bookentry_postcode: TStringField;
    Address_Bookentry_city: TStringField;
    Address_Bookentry_state: TStringField;
    Address_Bookentry_country_id: TIntegerField;
    Address_Bookentry_zone_id: TIntegerField;
    DPAddress_book: TDataSetProvider;
    Customers: TClientDataSet;
    procedure CustomersoldNewRecord(DataSet: TDataSet);
    procedure ProductsNewRecord(DataSet: TDataSet);
    procedure Productsmanufacturers_idChange(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure StockNewRecord(DataSet: TDataSet);
    procedure Items_SoldNewRecord(DataSet: TDataSet);
    procedure SalesNewRecord(DataSet: TDataSet);
    procedure ProductsRebuildRootCatNames;
    procedure GeneralReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ProgressCreateModulebShow(Sender: TObject);
    procedure ProgressSynchronisebShow(Sender: TObject);
    procedure TransferNewRecord(DataSet: TDataSet);
    procedure SalesCalcFields(DataSet: TDataSet);
    procedure ProgressCheckCategoriesbShow(Sender: TObject);
    procedure TimerTestConnectionTimer(Sender: TObject);
    procedure PPricesNewRecord(DataSet: TDataSet);
    procedure StockCalcFields(DataSet: TDataSet);
    procedure SuppliersStockNewRecord(DataSet: TDataSet);
    procedure InventoryCalcFields(DataSet: TDataSet);
    procedure TimerSaveDBTimer(Sender: TObject);
    procedure RepairNewRecord(DataSet: TDataSet);
    procedure RepairCalcFields(DataSet: TDataSet);
    procedure RefundsNewRecord(DataSet: TDataSet);
    procedure RefundsCalcFields(DataSet: TDataSet);
    procedure ProductsCalcFields(DataSet: TDataSet);
    procedure ProductsAfterInsert(DataSet: TDataSet);
    procedure ProgressCheckPIDShow(Sender: TObject);
    procedure ProgressSaveModuleShow(Sender: TObject);
    procedure Productsproducts_modelChange(Sender: TField);
    procedure DPProductsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure Items_RefundedNewRecord(DataSet: TDataSet);
    procedure Address_BookNewRecord(DataSet: TDataSet);
    property Todaysdate: string read gettodaysdate;
    property CurrentSalesDate: string read getcurrentsalesdate;
    Procedure SendEmail(const AFrom, ATo, ASubject, AMsg, AFilename, AServer: string);
  end;


var
  RemoteDB: TRemoteDB;
const

  SOFTCONFIG='SMART';


implementation

uses ReconcileFRMunit,LoginFRMunit,DavidUtilsUnit,Threadsunit,GlobalsUnit,
  MainFRMUnit;

var TestConnection:Testinetconnection;
    ShopsInGroup:string;
    ShopsOutGroup:string;

const customers_fields: array [0..19] of string = (
         'customers_id',
         //'customers_gender',
         'customers_firstname',
         'customers_lastname',
         //'customers_dob',
         'customers_email_address',
         'customers_default_address_id',
         'customers_telephone',
         'customers_fax',
         'customers_password',
         'customers_credit',
         'customers_points',
         'customers_nbr',
         'customers_newsletter',
         'customers_TVA',
         'customers_identity',
         'customers_bank_account',
         'customers_isTVA',
         'customers_issupplier',
         'customers_defltpost',
         'customers_paycode',
         'customers_language_id'
         );

      address_book_fields: array [0..10] of string = (
         'address_book_id',
         'customers_id',
         //'entry_gender',
         'entry_company',
         'entry_firstname',
         'entry_lastname',
         'entry_street_address',
         //'entry_suburb',
         'entry_postcode',
         'entry_city',
         'entry_state',
         'entry_country_id',
         'entry_zone_id'
         );

      products_fields: array [0..19] of string = (
         'products_model',
         'products_id',
         'products_quantity',
         'products_image',
         'products_price',
         'products_date_added',
         'products_weight',
         'products_status',
         'products_tax_class_id',
         'manufacturers_id',
//         'products_category',
         'products_promo',
         'products_stock_managed',
         'products_date_available',
         'products_last_modified',
         'products_ordered',
         'products_ispreview',
         'products_root_category_name',
         'products_isobsolete',
         'products_warranty_id',
         'products_street_block'
         );

      products_description_fields: array [0..4] of string = (
         'products_id',
//         'language_id',
         'products_name',
         'products_name_ext',
         'products_description',
         'products_url'
//         'products_viewed'
         );

      products_to_categories_fields: array [0..1] of string = (
         'products_id',
         'categories_id'
         );


{$R *.DFM}
function TRemoteDB.GetNextCustomersId(Dataset: TCustomClientDataset; const PrimaryKey: string): Integer;
var
 CloneDS: TClientDataSet;
begin
 CloneDS:=TClientDataSet.Create(nil);
 try
  CloneDS.CloneCursor(Dataset, True);
  CloneDS.IndexFieldNames := PrimaryKey;
  CloneDS.Filter := FloatToStrF(CONNECTEDSHOP,fffixed,3,0)+'00000 < Customers_nbr and Customers_nbr < '+Floattostrf(CONNECTEDSHOP,fffixed,3,0)+'99999';
  CloneDS.Filtered := True;
  CloneDs.Last;
  if CloneDS.Eof and CloneDS.Bof then Result:=((CONNECTEDSHOP)*100000)+1
  else  Result:=CloneDs.fieldbyname('customers_nbr').Value+1;
 finally
  CloneDS.Free;
 end;
end;

function TRemoteDB.GetNextSubIdDouble(Dataset: TCustomClientDataset; const MasterKey,PrimaryKey: string): Integer;
var
 CloneDS: TClientDataSet;
begin
 CloneDS:=TClientDataSet.Create(nil);
 try
  CloneDS.CloneCursor(Dataset, True);
  CloneDS.IndexFieldNames := PrimaryKey;
  CloneDS.Filter := MasterKey + ' = ' + inttostr(CONNECTEDSHOP);
  CloneDS.Filtered := True;
  CloneDs.Last;
  if CloneDS.Eof and CloneDS.Bof then Result:=1
  else  Result:=CloneDs.fieldbyname(PrimaryKey).Value+1;
 finally
  CloneDS.Free;
 end;
end;

function TRemoteDB.GetNextSubIdSimple(Dataset: TCustomClientDataset;
  const PrimaryKey: string): Integer;
var
 CloneDS: TClientDataSet;
begin
 CloneDS:=TClientDataSet.Create(nil);
 try
  CloneDS.CloneCursor(Dataset, True);
  CloneDS.IndexFieldNames := PrimaryKey;
  CloneDS.Filter := FloatToStrF(CONNECTEDSHOP,fffixed,3,0)+'0000000 < '+PrimaryKey+' and '+PrimaryKey+'< '+Floattostrf(CONNECTEDSHOP,fffixed,3,0)+'9999999';
  CloneDS.Filtered := True;
  CloneDs.Last;
  if CloneDS.Eof and CloneDS.Bof then Result:=((CONNECTEDSHOP)*10000000)+1
  else  Result:=CloneDs.fieldbyname(PrimaryKey).Value+1;
 finally
  CloneDS.Free;
 end;
end;

function TRemoteDB.GetNextId(Dataset: TCustomClientDataset; const PrimaryKey: string): Integer;
var
 CloneDS: TClientDataSet;
begin
 CloneDS:=TClientDataSet.Create(nil);
 try
  CloneDS.CloneCursor(Dataset, False);
  CloneDS.IndexFieldNames := PrimaryKey;
  CloneDs.First;
  if CloneDS.FieldByName(PrimaryKey).AsInteger > 0 then result:=-1
  else Result:=CloneDS.FieldByName(PrimaryKey).AsInteger-1;
 finally
  CloneDS.Free;
 end;
end;

function TRemoteDB.GetNextEan(Dataset: TCustomClientDataset;
  const PrimaryKey: string): tBcd;
var
 CloneDS: TClientDataSet;
 filterlow,filterhigh,LastValue,PID,PRE: String;
 i,CheckSum:integer;
 InterValue:integer;
begin
 CloneDS:=TClientDataSet.Create(nil);
 try
  CloneDS.CloneCursor(Dataset, True);
  CloneDS.IndexFieldNames := PrimaryKey;
  Filterlow:='200';
  for i:=1 to 3-Length(inttostr(ConnectedShop)) do Filterlow:=Filterlow+'0';
  FilterLow:=FilterLow+inttostr(ConnectedShop);
  Filterhigh:=Filterlow+'9999999';
  Filterlow:=Filterlow+'0000000';
  CloneDS.Filter := FilterLow+' <  '+PrimaryKey+' and '+PrimaryKey+' < '+FilterHigh;
  CloneDS.Filtered := True;
  CloneDs.Last;
  if CloneDS.Eof and CloneDS.Bof then begin
   CheckSum:=ComputeEanCheck(FilterLow);
   delete(FilterLow,Length(FilterLow),1);
   FilterLow:=FilterLow+inttostr(CheckSum);
   Result:=strtobcd(FilterLow);
  end else begin
   LastValue:=BcdtoStr(CloneDs.fieldbyname(PrimaryKey).AsBcd);
   PRE:=MidStr(LastValue,1,6);
   PID:=MidStr(LastValue,7,6);
   InterValue:=StrToInt(PID)+1;
   LastValue:=PRE;
   for i:=1 to 6-Length(inttostr(InterValue)) do LastValue:=LastValue+'0';
   LastValue:=LastValue+IntToStr(InterValue);
   CheckSum:=ComputeEanCheck(LastValue+'0');
   Result:=StrTobcd(LastValue+IntToStr(CheckSum));
  end;
 finally
  CloneDS.Free;
 end;
end;



procedure TRemoteDB.DataModuleCreate(Sender: TObject);
var Error:boolean;
begin
  if floattostr(0.1)<>'0.1' then ShowMessage('Attention le separateur de decimale doit etre mis sur point');

 // Setting up local DB paths & filenames
  ChDir( ExtractFilePath(ParamStr(0)) );
  Error:=False;
  if not(DirectoryExists('database')) then begin
   CreateDir('database');
   Error:=True;
  end;
  if not(DirectoryExists('images')) then begin
   CreateDir('images');
   Error:=True;
  end;
  if not(DirectoryExists('html')) then begin
   CreateDir('html');
   Error:=True;
  end;
  if not(DirectoryExists('reports')) then begin
   CreateDir('reports');
   Error:=True;
  end;
  if not(DirectoryExists('export')) then begin
   CreateDir('export');
   Error:=True;
  end;
  ChDir( ExtractFilePath(ParamStr(0))+'/html' );
  if not(DirectoryExists('templates')) then begin
   CreateDir('templates');
   Error:=True;
  end;
  ChDir( ExtractFilePath(ParamStr(0))+'/database' );
  if not(DirectoryExists('backup')) then begin
   CreateDir('backup');
   Error:=True;
  end;
  ChDir( ExtractFilePath(ParamStr(0))+'/images' );
  if not(DirectoryExists('products')) then begin
   CreateDir('products');
   Error:=True;
  end;
  ChDir( ExtractFilePath(ParamStr(0))+'/images/products' );
  if not(DirectoryExists('covers')) then begin
   CreateDir('covers');
   Error:=True;
  end;
  ChDir( ExtractFilePath(ParamStr(0))+'/images/products' );
  if not(DirectoryExists('screens')) then begin
   CreateDir('screens');
   Error:=True;
  end;
  ChDir( ExtractFilePath(ParamStr(0))+'/reports' );
  if not(DirectoryExists('invoices')) then begin
   CreateDir('invoices');
   Error:=True;
  end;
  ChDir( ExtractFilePath(ParamStr(0))+'/export' );
  if not(DirectoryExists('backup')) then begin
   CreateDir('backup');
   Error:=True;
  end;
 if Error then messagedlg('Certains répertoires étaient manquants : structure recréée' ,mtwarning,[mbok],0);


 ChDir( ExtractFilePath(ParamStr(0)) );

// Testconnection:=TestInetconnection.Create('ns30406.ovh.net');
// TestConnection.Priority:=TPIdle;

 IsUpdating:=True;
 Application.CreateForm(Tloginform,LoginForm);
 LoginForm.ShowModal;
 try
  if IsPositiveResult(LoginForm.ModalResult) then begin
   DBOKTOLAUNCH:=True;
   SQLConnection.Params.Values['user_name']:=DBUSER;
   SQLConnection.Params.Values['PassWord']:=DBPWD;
   SQLConnection.Params.Values['HostName']:=DBHOSTNAME;
   SQLConnection.Params.Values['Database']:=DBNAME;
   IsUpdating:=False;
   ProgressCreate.Execute;
    //
    // Build Shop Lists
    //
    RemoteDB.AllShops.Filter:='shops_group_id = '+intToStr(SHOPGROUPID);
    RemoteDB.AllShops.Filtered:=True;
    ShopsInGroup:='';
    RemoteDB.AllShops.First;
    While Not AllShops.Eof do begin
      ShopsInGroup:=ShopsInGroup+Self.AllShops.FieldByName('shops_id').AsString+',';
      AllShops.Next;
    end;
    ShopsInGroup:=ShopsInGroup+'0';

    RemoteDB.AllShops.Filter:='shops_group_id <> '+intToStr(SHOPGROUPID);
    RemoteDB.AllShops.Filtered:=True;
    ShopsOutGroup:='';
    RemoteDB.AllShops.First;
    While Not AllShops.Eof do begin
      ShopsOutGroup:=ShopsOutGroup+Self.AllShops.FieldByName('shops_id').AsString+',';
      AllShops.Next;
    end;
    ShopsOutGroup:=ShopsOutGroup+'0';

    RemoteDB.AllShops.Filtered:=False;
    RemoteDB.AllShops.Filter:='';
  end else begin
   Application.Terminate;
   DBOKTOLAUNCH:=False;
  end;
 except
  Application.Terminate;
  DBOKTOLAUNCH:=False;
 end;
 LoginForm.Free;
 IsUpdating:=False;

 end;



procedure TRemoteDB.DataModuleDestroy(Sender: TObject);
begin
end;

procedure TRemoteDB.CustomersoldNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('Customers_Nbr').Value:=GetNextCustomersId(Dataset as TcustomClientDataset, 'Customers_nbr');
 Dataset.FieldByName('Customers_Id').Value:=Dataset.FieldByName('Customers_Nbr').Value;
 Dataset.FieldByName('Customers_Gender').AsString:='M';
// Dataset.FieldByName('Customers_DOB').AsDateTime:=0;
// Dataset.FieldByName('Customers_Zone_Id').AsInteger:=CONNECTEDSHOP;
 Dataset.FieldByName('Customers_Points').AsInteger:=0;
 Dataset.FieldByName('Customers_Credit').AsInteger:=0;
 Dataset.FieldByName('Customers_isTVA').AsString:='False';
 Dataset.FieldByName('Customers_htprice').AsString:='False';
 Dataset.FieldByName('Customers_rent_enabled').AsString:='False'; 
 Dataset.FieldByName('Customers_Language_id').AsInteger:=1;
 Address_book.Append;
 Dataset.FieldByName('Customers_default_address_id').AsInteger:=Address_book.fieldbyname('address_book_id').AsInteger;
 Address_book.FieldByName('entry_Country_Id').AsInteger:=21;

end;

procedure TRemoteDB.Address_BookNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('Address_book_id').Value:=GetNextSubIdSimple(Dataset as TcustomClientDataset, 'address_book_id');
 Dataset.FieldByName('Customers_Id').value:=Customers.FieldByName('Customers_Nbr').Value;
 Dataset.FieldByName('entry_country_id').AsString:='21';
end;

procedure TRemoteDB.AlertsCalcFields(DataSet: TDataSet);
begin
 Dataset.FieldByName('Customers_alerts_date_disp').AsFloat:=Dataset.FieldByName('Customers_alerts_date').AsFloat;
end;

procedure TRemoteDB.AlertsNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('Customers_alerts_date').asfloat:=now;
 Dataset.FieldByName('Customers_alerts_used').asfloat:=0;
end;

procedure TRemoteDB.Synchronise;
begin
  Categories.Filtered:=False;
  Customers.Filtered:=False;
  Products.Filtered:=False;
  Items_Sold.Filtered:=False;
  Manufacturers.Filtered:=False;
  Sales.Filtered:=False;
  Shops.Filtered:=False;
  Stock.Filtered:=False;
  Suppliers.Filtered:=False;
  Tax_Class.Filtered:=False;
  Countries.Filtered:=False;
  Transfer.Filtered:=False;
  ProgressSync.Execute;
end;

procedure TRemoteDB.thrdMailRun(Sender: TIdThreadComponent);
begin
  with mesgMessage do begin
    Clear;
    if FileExists(FFilename) then begin
     TIdAttachmentFile.Create(mesgMessage.MessageParts,FFilename);
    end;
    From.Text := FFrom;
    Recipients.Add.Text := FTo;
    Subject := FSubject;
    Body.Text := FMsg;
  end;
  with smtpSendMail do begin
    Host := FServer;
    Connect; try
      Send(mesgMessage);
    finally Disconnect; end;
  end;
  Sender.Stop;
end;

procedure TRemoteDB.ApplyUpdates;
var   i:integer;
      updatestatus:boolean;
begin
  Categories.Filtered:=False;
  Customers.Filtered:=False;
  Products.Filtered:=False;
  Items_Sold.Filtered:=False;
  Manufacturers.Filtered:=False;
  Sales.Filtered:=False;
  Shops.Filtered:=False;
  Stock.Filtered:=False;
  Suppliers.Filtered:=False;
  Tax_Class.Filtered:=False;
  Countries.Filtered:=False;
  Transfer.Filtered:=False;

 {
  AllowUpdate:=True;
  for i :=0 to self.ComponentCount-1 do begin
   if Self.Components[i].ClassType = TClientDataset then begin
    with TClientDataset(Self.Components[i]) do begin
     if TClientDataset(Self.Components[i]).State<>dsBrowse then begin
      AllowUpdate:=False;
     end;
    end;
   end;
  end;
 if AllowUpdate then ProgressUpdate.Execute;
 }

 ProgressSaveModuleShow(nil);
 // SqlConnection.AutoClone:=True;
 SQLConnection.CloseDataSets;
 SQLConnection.Close;
 SqlConnection.AutoClone:=False;
 // messagedlg(' '+SQLConnection.Params.Values['user_name']+' '+SQLConnection.Params.Values['database']+' '+SQLConnection.Params.Values['hostname']+' '+SQLConnection.Params.Values['password'],mtwarning,[mbok],0);

 try
  UpdateStatus:=Isupdating;
  if not isupdating then IsUpdating:=True;

  for i :=0 to self.ComponentCount-1 do begin
   if self.ProgressSync.Cancel then exit;
   if Self.Components[i].ClassType = TClientDataset then begin
    SaveDataset(TClientDataset(Self.Components[i]),True);
    with TClientDataset(Self.Components[i]) do begin
     try
      DisableConstraints;
      DisableControls;
      if TClientDataset(Self.Components[i]).ProviderName<>'' then begin
       if ApplyUpdates(-1)=0 then begin
        // Refresh;
       end;
      end;
     finally
      SaveDataset(TClientDataset(Self.Components[i]),False);
      EnableConstraints;
      EnableControls;
      // Close;
     end;
    end;
   end;
  end;
 finally
  SQLConnection.CloseDataSets;
  SQLConnection.Close;
  IsUpdating:=UpdateStatus;
 end;
end;

procedure TRemoteDB.ProductsNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('Products_date_added').AsDateTime:=trunc(now);
 Dataset.FieldByName('Products_last_modified').AsDateTime:=trunc(now);
 Dataset.FieldByName('Products_Status').Asinteger:=1;
 Dataset.FieldByName('Products_Weight').Asinteger:=150;
 Dataset.FieldByName('Products_Tax_class_id').Asinteger:=1;
 Dataset.FieldByName('Products_Quantity').Asinteger:=1;
 Dataset.FieldByName('Products_Model').Asinteger:=1;
 Dataset.FieldByName('Products_Image').Asstring:='products/default.gif';
 Dataset.FieldByName('Products_Stock_Managed').Asstring:='True';
 Dataset.FieldByName('Products_Promo').Asstring:='False';
 Dataset.FieldByName('Products_ordered').AsInteger:=0;
 Dataset.FieldByName('Products_ispreview').AsString:='False';
 Dataset.FieldByName('Products_isobsolete').AsString:='False';
 Dataset.FieldByName('Products_street_block').AsString:='True';
 Dataset.FieldByName('Products_warranty_id').Value:=1;
end;

procedure TRemoteDB.ProductsAfterEdit(DataSet: TDataSet);
begin
 Dataset.FieldByName('products_last_modified').AsDateTime:=trunc(now);
end;

procedure TRemoteDB.ProductsAfterInsert(DataSet: TDataSet);
begin
end;

procedure TRemoteDB.RentStockNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('rent_stock_id').AsInteger:=GetNextSubIdSimple(Dataset as TcustomClientDataset, 'rent_stock_id');
 Dataset.FieldByName('rent_stock_location').AsInteger:=CONNECTEDSHOP;
 Dataset.FieldByName('rent_stock_date_added').AsFloat:=Now;
 Dataset.FieldByName('rent_stock_last_rent').AsFloat:=0;
 Dataset.FieldByName('rent_stock_count').AsInteger:=0;
 Dataset.FieldByName('rent_stock_state').AsInteger:=1;
 Dataset.FieldByName('rent_stock_condition').AsInteger:=5;
end;

procedure TRemoteDB.RentSchemesNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('rent_scheme_id').AsInteger:=GetNextSubIdSimple(Dataset as TcustomClientDataset, 'rent_scheme_id');
 Dataset.FieldByName('rent_scheme_default').AsInteger:=0;
 Dataset.FieldByName('rent_scheme_location').AsInteger:=CONNECTEDSHOP;
end;

procedure TRemoteDB.RentTransactionNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('rent_transaction_id').AsInteger:=GetNextSubIdSimple(Dataset as TcustomClientDataset, 'rent_transaction_id');
 Dataset.FieldByName('rent_transaction_location').AsInteger:=CONNECTEDSHOP;
 Dataset.FieldByName('rent_transaction_start_date').AsFloat:=Now;
 Dataset.FieldByName('rent_transaction_returned').Asinteger:=0;
end;

procedure TRemoteDB.StockNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('id').AsInteger:=GetNextSubIdSimple(Dataset as TcustomClientDataset, 'id');
 Dataset.FieldByName('Product_Location').AsInteger:=CONNECTEDSHOP;
 Dataset.FieldByName('Product_price_gross').AsInteger:=0;
 Dataset.FieldByName('Product_price_stock').AsInteger:=0;
 Dataset.FieldByName('Product_isdefect').AsInteger:=0;
 Dataset.FieldByName('Product_Date_In').AsString:=Formatdatetime('yyyymmdd',Now);
end;

procedure TRemoteDB.Items_SoldCalcFields(DataSet: TDataSet);
begin
 Dataset.FieldByName('items_sold_price_stock_tot').Value:=Dataset.FieldByName('items_sold_price_stock').Value*Dataset.FieldByName('items_sold_quantity').Value;
end;

procedure TRemoteDB.Items_SoldNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('items_sold_id').AsInteger:=GetNextSubIdSimple(Dataset as TcustomClientDataset, 'items_sold_id');
 Dataset.FieldByName('items_sold_sales_location').Value:=Sales.FieldByName('sales_location').Value;
 Dataset.FieldByName('items_sold_sales_id').Value:=Sales.FieldByName('sales_id').Value;
 Dataset.FieldByName('items_refunded').Value:=0;
end;

procedure TRemoteDB.Items_RefundedNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('items_refunded_id').AsInteger:=GetNextSubIdSimple(Dataset as TcustomClientDataset, 'items_refunded_id');
 Dataset.FieldByName('items_refunded_refunds_shop_id').Value:=Refunds.FieldByName('refunds_shop_id').Value;
 Dataset.FieldByName('items_refunded_refunds_id').Value:=Refunds.FieldByName('refunds_id').Value;
end;

procedure TRemoteDB.RefundsNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('refunds_shop_id').Value:=CONNECTEDSHOP;
 Dataset.FieldByName('refunds_id').AsInteger:=GetNextSubIdDouble(Dataset as TcustomClientDataset, 'refunds_shop_id','refunds_id');
 Dataset.FieldByName('refunds_date_time').Value:=Now;
end;

procedure TRemoteDB.SalesNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('sales_id').Value:=GetNextSubIdDouble(Dataset as TcustomClientDataset, 'sales_location','sales_id');
 Dataset.FieldByName('sales_location').Value:=CONNECTEDSHOP;
 Dataset.FieldByName('sales_date_time').Value:=Now;
end;

procedure TRemoteDB.RepairNewRecord(DataSet: TDataSet);
begin
 DataSet.FieldByName('repair_id').Value:=GetNextSubIdDouble(Dataset as TcustomClientDataset, 'repair_shop_id','repair_id');
 DataSet.FieldByName('repair_shop_id').Value:=CONNECTEDSHOP;
 DataSet.FieldByName('repair_date_in').Value:=Now;
 DataSet.FieldByName('repair_returned').Value:='false';
 DataSet.FieldByName('repair_fixed').Value:='false';
 Dataset.FieldByName('repair_price').Value:=0;
end;



procedure TRemoteDB.TransferNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('id').AsInteger:=GetNextId(Dataset as TcustomClientDataset, 'id');
end;



procedure TRemoteDB.Productsproducts_activeSetText(Sender: TField;
  const Text: string);
begin
 if Text='true' then
  Products.FieldByName('products_status').Value:=1 else Products.FieldByName('products_status').Value:=0;

end;

procedure TRemoteDB.Productsproducts_modelChange(Sender: TField);
begin
  if CheckEan(products.FieldByName('Products_Model').AsString) then begin
   products.FieldByName('Products_id').AsBCD:=products.FieldByName('Products_Model').AsBCD;
  end else begin
   products.FieldByName('Products_id').AsBCD:=GetNextEan(products as TcustomClientDataset,'Products_Id');
  end;
end;

procedure TRemoteDB.Productsmanufacturers_idChange(Sender: TField);
begin
  if Manufacturers.Locate('Manufacturers_Id',ProductsManufacturers_id.Value,[locaseinsensitive]) then
  ProductsProducts_url.Value:=ManufacturersManufacturers_url.Value;
end;

procedure TRemoteDB.GeneralReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 Action:=HandleReconcileError(Dataset, UpdateKind, E);
{ if (UpdateKind=ukinsert) and  (E.ErrorCode=1) then begin
  ShowMessage('Reconcile Error: ' + E.Message+' '+ inttostr(E.ErrorCode));
  Action:=raRefresh;
 end else begin
  Action:=HandleReconcileError(Dataset, UpdateKind, E);
 end;}
end;

/////
/////
///// Apply Updates handling Methods
/////
/////
procedure TRemoteDB.keepconnect;
begin
 SqlConnection.Close;
 SqlConnection.Open;
end;

procedure TRemoteDB.SetAlertstoCustomers;
begin
 with Alerts do begin
  if not ((MasterSource=CustomersSRC) and (IndexName='AlertsIXCustomers') and (MasterFields='customers_nbr')) then begin
    DisableControls;
    MasterFields:='';
    IndexFieldNames:='';
    MasterSource:=CustomersSRC;
    IndexName:='AlertsIXCustomers';
    MasterFields:='customers_nbr';
    EnableControls;
  end;
 end;
end;

procedure TRemoteDB.SetProductstoSuppliersStock;
begin
 with Products do begin
  if not ((MasterSource=SuppliersStockSRC) and (IndexName='ProductsIXModel') and (MasterFields='products_model')) then begin
    DisableControls;
    MasterFields:='';
    IndexFieldNames:='';
    MasterSource:=SuppliersStockSRC;
    IndexName:='ProductsIXModel';
    MasterFields:='products_model';
    EnableControls;
  end;
 end;
end;

procedure TRemoteDB.SetSalestoCustomers;
begin
 with Sales do begin
   if not ((MasterSource=CustomersSRC) and (IndexName='SalesIXCustomers') and (MasterFields='customers_nbr')) then begin
     DisableControls;
     MasterFields:='';
     IndexFieldNames:='';
     MasterSource:=CustomersSRC;
     IndexName:='SalesIXCustomers';
     MasterFields:='customers_nbr';
     EnableControls;
   end;
 end;
end;

procedure TRemoteDB.SetItemsToCustomers;
begin
 with Items_Sold do begin
   if not ((MasterSource=CustomersSRC) and (IndexName='ItemsIXOwnerId') and (MasterFields='customers_nbr')) then begin
    DisableControls;
    MasterFields:='';
    IndexFieldNames:='';
    MasterSource:=CustomersSRC;
    IndexName:='ItemsIXOwnerId';
    MasterFields:='customers_nbr';
    EnableControls;
   end;
 end;
end;

procedure TRemoteDB.SetItemstoSales;
begin
 with Items_Sold do begin
   if not ((MasterSource=SalesSRC) and (IndexName='ItemsIXLocationId') and (MasterFields='sales_location;sales_id')) then begin
     DisableControls;
     MasterFields:='';
     IndexFieldNames:='';
     MasterSource:=SalesSRC;
     IndexName:='ItemsIXLocationId';
     MasterFields:='sales_location;sales_id';
     EnableControls;
   end;
 end;
end;

procedure TRemoteDB.SetStockToCustomers;
begin
 with Stock do begin
   if not ((MasterSource=CustomersSRC) and (IndexName='StockIXOwner') and (MasterFields='customers_nbr')) then begin
     DisableControls;
     MasterFields:='';
     IndexFieldNames:='';
     MasterSource:=CustomersSRC;
     IndexName:='StockIXOwner';
     MasterFields:='customers_nbr';
     EnableControls;
   end;
 end;
end;

procedure TRemoteDB.SetSupplierPrice(Price: Double; SupplierName,Model: string);
begin
   /// Vérification des prix fournisseurs
    if RemoteDB.Suppliers.Locate('suppliers_name',SupplierName,[locaseinsensitive]) then begin
     if RemoteDB.SuppliersStock.Locate('suppliers_id;Products_model',Vararrayof([RemoteDB.Suppliers.FieldByName('suppliers_id').value,Model]),[locaseinsensitive]) then begin
      if (Round(RemoteDB.SuppliersStockSuppliers_price.AsFloat*100)/100)<>(Round(Price*100)/100) then begin
       if messagedlg('Remplacer le prix fournisseur de :'+floattostr(RemoteDB.SuppliersStockSuppliers_price.AsFloat)+' par : '+ FloatToStr(Price) ,mtwarning,[mbok,mbCancel],0)=mrOk then begin
        RemoteDB.SuppliersStock.Edit;
        RemoteDB.SuppliersStockSuppliers_price.AsFloat:=Price;
        RemoteDB.SuppliersStock.Post;
       end;
      end;
     end // Endif enregistrement déjà présent dans la table fournisseur stock
     else begin  // Ajouter un enregistrement dans la table des prix fournisseurs

       RemoteDB.SuppliersStock.Append;
       RemoteDB.SuppliersStock.FieldByName('products_model').Value:=Model;
       RemoteDB.SuppliersStock.FieldByName('suppliers_price').Value:=Price;
       RemoteDB.SuppliersStock.FieldByName('suppliers_id').Value:=RemoteDB.Suppliers.FieldByName('suppliers_id').value;
       RemoteDB.SuppliersStock.Post;

     end; // Fin ajout d'un prix fournisseur stock
    end; /// Fin Si supplier Existe
end;

procedure TRemoteDB.SQLDSAlertsParseSelectSql(var FieldNames: TWideStrings;
  SQL: WideString; var TableName: WideString);
begin
 showmessage(SQL);
end;

procedure TRemoteDB.SetPPricestoProducts;
begin
 with PPrices do begin
   if not ((MasterSource=ProductsSRC) and (IndexName='PpricesIXModel') and (MasterFields='products_model')) then begin
     DisableControls;
     MasterFields:='';
     IndexFieldNames:='';
     MasterSource:=ProductsSRC;
     IndexName:='PpricesIXModel';
     MasterFields:='products_model';
     EnableControls;
   end;
 end;
end;

procedure TRemoteDB.SetRepairToCustomers;
begin
  with Repair do begin
    if not ((MasterSource=CustomersSRC) and (IndexName='RepairIXCustomer') and (MasterFields='customers_nbr')) then begin
     DisableControls;
     MasterFields:='';
     IndexFieldNames:='';
     MasterSource:=CustomersSRC;
     IndexName:='RepairIXCustomer';
     MasterFields:='customers_nbr';
     EnableControls;
    end;
  end;
end;

procedure TRemoteDB.SetRefundsToCustomers;
begin
 with Refunds do begin
   if not ((MasterSource=CustomersSRC) and (IndexName='RefundsIXCustomer') and (MasterFields='customers_nbr')) then begin
     DisableControls;
     MasterFields:='';
     IndexFieldNames:='';
     MasterSource:=CustomersSRC;
     IndexName:='RefundsIXCustomer';
     MasterFields:='customers_nbr';
     EnableControls;
   end;
 end;
end;



procedure TRemoteDB.SendEmail(const AFrom, ATo, ASubject, AMsg, Afilename,
  AServer: string);
begin
  FFrom := AFrom;
  FTo := ATo;
  FSubject := ASubject;
  FMsg := AMsg;
  FServer := Aserver;
  FFilename := AFilename;
  //
  thrdMail.Active := True;
end;

procedure TRemoteDB.SetAddress_bookToCustomers;
begin
 with Address_Book do begin
   if not ((MasterSource=CustomersSRC) and (IndexName='Address_bookIXCustomer') and (MasterFields='customers_nbr')) then begin
     DisableControls;
     MasterFields:='';
     IndexFieldNames:='';
     MasterSource:=CustomersSRC;
     IndexName:='Address_bookIXCustomer';
     MasterFields:='customers_nbr';
     EnableControls;
   end;
 end;
end;

procedure TRemoteDB.SetRentToCustomers;
begin
  with RentTransaction do begin
     if not ((MasterSource=CustomersSRC) and (IndexName='RentTransactionIXCustomer') and (MasterFields='customers_nbr')) then begin
     DisableControls;
     MasterFields:='';
     IndexName:='';
     MasterSource:=CustomersSRC;
     IndexName:='RentTransactionIXCustomer';
     MasterFields:='customers_nbr';
     EnableControls;
    end;
  end;
end;

procedure TRemoteDB.SetInvoicesItemsToInvoices;
begin
 with Invoices_Items do begin
  if not ((MasterSource=InvoicesSRC) and (IndexName='ItemsIXLocationId') and (MasterFields='invoices_location;invoices_id')) then begin
    DisableControls;
    MasterFields:='';
    IndexName:='';
    MasterSource:=InvoicesSRC;
    IndexName:='ItemsIXLocationId';
    MasterFields:='invoices_location;invoices_id';
    EnableControls;
  end;
 end;
end;

procedure TRemoteDB.SetInvoicesToCustomers;
begin
 with Invoices do begin
   if not ((MasterSource=CustomersSRC) and (IndexName='InvoicesIXCustomers') and (MasterFields='customers_nbr')) then begin
    DisableControls;
    MasterFields:='';
    IndexName:='';
    MasterSource:=CustomersSRC;
    IndexName:='InvoicesIXCustomers';
    MasterFields:='customers_nbr';
    EnableControls;
   end;
 end;
end;


procedure TRemoteDB.FreeItemsRefundedTo;
begin
 if not ((Items_refunded.MasterSource=nil) and (Items_refunded.MasterFields='') and (Items_refunded.IndexName='ItemsRefundedIXShopId')) then begin
   Items_refunded.DisableControls;
   Items_refunded.MasterSource:=nil;
   Items_refunded.MasterFields:='';
   Items_refunded.IndexName:='ItemsRefundedIXShopId';
   Items_refunded.EnableControls;
 end;
end;

procedure TRemoteDB.FreeItemsTo;
begin
 if not ((Items_Sold.MasterSource=nil) and (Items_Sold.MasterFields='') and (Items_Sold.IndexName='ItemsIXId')) then begin
  items_Sold.DisableControls;
  Items_Sold.MasterSource:=nil;
  Items_Sold.MasterFields:='';
  Items_Sold.IndexName:='ItemsIXId';
  Items_Sold.EnableControls;
 end;
end;

procedure TRemoteDB.FreeAlertsTo;
begin
 if not ((Alerts.MasterSource=nil) and (Alerts.MasterFields='')) then begin
  Alerts.DisableControls;
  Alerts.MasterSource:=nil;
  Alerts.MasterFields:='';
  Alerts.EnableControls;
 end;
end;


procedure TRemoteDB.FreeStockTo;
begin
 if not ((stock.MasterSource=nil) and (stock.MasterFields='') and (stock.IndexName='StockIXId')) then begin
  stock.DisableControls;
  stock.MasterSource:=nil;
  stock.MasterFields:='';
  stock.IndexName:='StockIXId';
  stock.EnableControls;
 end;
end;

procedure TRemoteDB.FreeSalesTo;
begin
 if not ((sales.MasterSource=nil) and (sales.MasterFields='') and (sales.IndexName='SalesIXLocationId')) then begin
  sales.DisableControls;
  sales.MasterSource:=nil;
  sales.MasterFields:='';
  sales.IndexName:='SalesIXLocationId';
  sales.EnableControls;
 end;
end;

procedure TRemoteDB.FreePPricesTo;
begin
 if not ((pprices.MasterSource=nil) and (pprices.MasterFields='') and (pprices.IndexName='PpricesIXShopModel')) then begin
  pprices.DisableControls;
  pprices.MasterSource:=nil;
  pprices.MasterFields:='';
  pprices.IndexName:='PpricesIXShopModel';
  pprices.EnableControls;
 end;
end;

procedure TRemoteDB.FreeRepairTo;
begin
 if not (( Repair.MasterSource=nil) and (Repair.MasterFields='') and (Repair.IndexName='RepairIXId')) then begin
  Repair.DisableControls;
  Repair.MasterSource:=nil;
  Repair.MasterFields:='';
  Repair.IndexName:='RepairIXId';
  Repair.EnableControls;
 end;
end;

procedure TRemoteDB.FreeRefundsTo;
begin
 if not ((Refunds.MasterSource=nil) and (Refunds.MasterFields='') and (Refunds.IndexName='RefundsIXShopId')) then begin
  Refunds.DisableControls;
  Refunds.MasterSource:=nil;
  Refunds.MasterFields:='';
  Refunds.IndexName:='RefundsIXShopId';
  Refunds.EnableControls;
 end;
end;

procedure TRemoteDB.FreeAddress_booktoCustomers;
begin
 if not ((Address_book.MasterSource=nil) and (Address_book.MasterFields='') and (Address_book.IndexName='Address_bookIXId')) then begin
  Address_book.DisableControls;
  Address_book.MasterSource:=nil;
  Address_book.MasterFields:='';
  Address_book.IndexName:='Address_bookIXId';
  Address_book.EnableControls;
 end;
end;

procedure TRemoteDB.FreeRentTo;
begin
 with RentTransaction do begin
  DisableControls;
  MasterSource:=nil;
  MasterFields:='';
  IndexName:='RentTransactionIXId';
  EnableControls;
 end;
end;

procedure TRemoteDB.FreeInvoicesItems;
begin
 with Invoices_items do begin
  if not ((MasterSource=nil) and (MasterFields='') and (IndexName='ItemsIXId')) then begin
   DisableControls;
   MasterSource:=nil;
   MasterFields:='';
   IndexName:='ItemsIXId';
   EnableControls;
  end;
 end;
end;

procedure TRemoteDB.FreeInvoicesToCustomers;
begin
 with Invoices do begin
  if not ((MasterSource=nil) and (MasterFields='') and (IndexName='InvoicesIXLocationId')) then begin
   DisableControls;
   MasterSource:=nil;
   MasterFields:='';
   IndexName:='InvoicesIXLocationId';
   EnableControls;
  end;
 end;
end;

procedure TRemoteDB.FreeProductsTo;
begin
 with Products do begin
  DisableControls;
  MasterSource:=nil;
  MasterFields:='';
  IndexName:='ProductsIXModel';
  EnableControls;
 end;
end;





procedure TRemoteDB.SalesCalcFields(DataSet: TDataSet);
begin
   SalesSales_Paid_Total.AsFloat:=SalesSales_paid_cash.AsFloat+SalesSales_paid_bct.AsFloat+SalesSales_paid_Proton.AsFloat+SalesSales_paid_Visa.AsFloat+SalesSales_paid_Voucher.AsFloat;
   salesSales_Paid_Htva.AsFloat:=Round(SalesSales_Paid_total.AsFloat/1.21*100)/100;
   salesSales_Paid_tva.AsFloat:=SalesSales_Paid_Total.AsFloat-salesSales_Paid_Htva.AsFloat;
   if SalesSales_Date_time.Value<1000000 then SalesSales_Date_time_Value.Value:=SalesSales_Date_time.Value;
end;



procedure TRemoteDB.CheckCategories;
begin
end;

function TRemoteDB.CheckExtStock(Model: String; Ingroup: Boolean): Integer;
begin
  Self.SQLQuery.Close;
  if Ingroup then
   Self.SQLQuery.CommandText:='Select count(*) as stock from netshop_stock where ((product_model='+quotedstr(Model)+' )and( product_location  in ( '+ShopsInGroup+')))'
  else   Self.SQLQuery.CommandText:='Select count(*) as stock from netshop_stock where ((product_model='+quotedstr(Model)+' )and( product_location  in ( '+ShopsOutGroup+')))';
  // ShowMessage(Self.SQLQuery.CommandText);
  Self.SQLQuery.Open;
  Result:=Self.SQLQuery.FieldByName('stock').AsInteger;
end;

procedure TRemoteDB.ProgressCheckCategoriesbShow(Sender: TObject);
begin

end;

procedure TRemoteDB.TimerTestConnectionTimer(Sender: TObject);
begin
end;



procedure TRemoteDB.PPricesNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('shopid').Value:=ConnectedShop;
end;



procedure TRemoteDB.StockCalcFields(DataSet: TDataSet);
begin
 if Dataset.FieldbyName('product_date_in').Value <> null then
 Dataset.FieldByName('product_date_in_display').Value:=OSCToVCLDate(Dataset.FieldbyName('product_date_in').Value);
 if ((Dataset.FieldByName('product_price_stock').Value<>Null) and (Dataset.FieldByName('product_price_gross').Value<>Null) and (Dataset.FieldByName('product_quantity').Value<>Null)) then begin
  Dataset.FieldByName('product_price_stock_total').AsFloat:=Dataset.FieldByName('product_quantity').Value*Dataset.FieldByName('product_price_stock').AsFloat;
  Dataset.FieldByName('product_price_gross_total').AsFloat:=Dataset.FieldByName('product_quantity').Value*Dataset.FieldByName('product_price_gross').AsFloat;
 end;
end;

procedure TRemoteDB.RentTransactionCalcFields(DataSet: TDataSet);
begin
 Dataset.FieldByName('rent_transaction_due_display').Value:=Dataset.FieldbyName('rent_transaction_due_date').Value;
 Dataset.FieldByName('rent_transaction_start_display').Value:=Dataset.FieldbyName('rent_transaction_start_date').Value;
 if Dataset.FieldbyName('rent_transaction_returned_date').Value <> Null then
 Dataset.FieldByName('rent_transaction_in_display').Value:=Dataset.FieldbyName('rent_transaction_returned_date').Value;
end;

procedure TRemoteDB.RentStockCalcFields(DataSet: TDataSet);
begin
 Dataset.FieldByName('rent_stock_date_added_disp').Value:=Dataset.FieldbyName('rent_stock_date_added').Value;
 Dataset.FieldByName('rent_stock_last_rent_disp').Value:=Dataset.FieldbyName('rent_stock_last_rent').Value;
end;

procedure TRemoteDB.SuppliersStockNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('Shop_Group_id').Value:=ShopGroupId;
end;

procedure TRemoteDB.InventoryCalcFields(DataSet: TDataSet);
begin
 Dataset.FieldByName('product_price_gross_total').Value:=dataset.fieldbyname('product_quantity').Value*dataset.fieldbyname('product_price_gross').Value;
end;

procedure TRemoteDB.InventoryErrorsCalcFields(DataSet: TDataSet);
begin
 Dataset.FieldByName('product_price_gross_total').Value:=dataset.fieldbyname('product_quantity').Value*dataset.fieldbyname('product_price_gross').Value;
end;

procedure TRemoteDB.RepairCalcFields(DataSet: TDataSet);
begin
 Dataset.FieldByName('repair_date_in_display').Value:=Dataset.FieldByName('repair_date_in').Value;
 Dataset.FieldByName('repair_date_out_display').Value:=Dataset.FieldByName('repair_date_out').Value;
 Dataset.FieldByName('repair_date_fixed_display').Value:=Dataset.FieldByName('repair_date_fixed').Value;
end;



procedure TRemoteDB.RefundsCalcFields(DataSet: TDataSet);
begin
 Dataset.FieldByName('refunds_date_time_display').Value:=Dataset.FieldByName('refunds_date_time').Value;
end;

procedure TRemoteDB.ProductsCalcFields(DataSet: TDataSet);
begin
// Dataset.FieldByName('products_date_added_display').Value:=OSCToVCLDate(Dataset.Fieldbyname('products_date_added').Value);
 if Tax_Zones.Active and Tax_Class.Active and Tax_Rates.Active then begin
  Tax_Zones.FindKey([18]);
  Tax_Class.FindKey([RemoteDB.Productsproducts_tax_class_id.Value]);
  Tax_Rates.FindKey([Tax_Zones.FieldByName('Geo_Zone_id').Value,Tax_Class.FieldByName('Tax_Class_Id').Value]);
  Dataset.FieldByName('products_price_allin').Value:=Round(Dataset.FieldbyName('products_price').AsFloat*(1+Tax_Rates.FieldByName('Tax_Rate').AsFloat/100)*100)/100;
 if Dataset.FieldByName('products_status').Value=1 then
  Dataset.FieldByName('products_active').Value:=true else Dataset.FieldByName('products_active').Value:=false

 end;
// if RemoteDB.Categories.Active then Dataset.FieldByName('products_root_category_id').Value:=GetMotherCategory(Dataset.Fieldbyname('categories_id').AsInteger);
end;


procedure TRemoteDB.CheckProductsEan;
var modelstring:string;
begin
 Products.IndexName:='ProductsIXModel';
 Products.DisableConstraints;
 Products.DisableControls;
 try
 Products.First;
 While not Products.Eof do begin
  ModelString:=Products.FieldByName('products_model').AsString;
  if not ValidateModel(modelstring) then begin
     messagedlg('Erreur dans produit :'+Products.FieldByName('products_name').AsString ,mtwarning,[mbok],0);
  end;
  Products.Next;
  ModelString:='';
 end;
 finally
 Products.EnableConstraints;
 Products.EnableControls;
 end;
end;


procedure TRemoteDB.BuildProductsId;
begin
 ProgressCheckPiD.Execute;
end;

procedure TRemoteDB.ProgressCheckPIDShow(Sender: TObject);
var isnumber:boolean;
    productModel:string;
    counter:integer;
begin
 ProgressCheckPID.InfoLabel:='Préparation de la base de données';
 ProgressCheckPID.ProgressPosition:=1;
 ProgressCheckPID.ProgressMax:=Products.RecordCount;
 Application.ProcessMessages;
 Products.IndexName:='ProductsIXModel';
 Products.DisableConstraints;
 Products.DisableControls;
 try
 Products.First;
 While not Products.Eof do begin
  IsNumber:=True;
  ProductModel:=Products.FieldByName('Products_Model').AsString;
  for counter:=1 to length(productmodel) do begin
   if (productmodel[counter]<'0') or (productmodel[counter]>'9') then isnumber:=False;
  end;
  if IsNumber and CheckEan(ProductModel) then begin
   Products.Edit;
   Products.FieldByName('Products_id').asBcd:=Products.FieldByName('Products_Model').AsBCD;
   Products.Post;
  end else begin
   Products.Edit;
   products.FieldByName('Products_id').AsBCD:=GetNextEan(Products as TcustomClientDataset,'Products_Id');
   Products.Post;
  end;
  Products.Next;
  ProgressCheckPID.ProgressPosition:=ProgressCheckPID.ProgressPosition+1;
  ProgressCheckPID.InfoLabel:='Enregistrement N°: '+Products.FieldByName('Products_Model').AsString;
  Application.ProcessMessages;
  ProductModel:='';
 end;
 finally
 Products.EnableConstraints;
 Products.EnableControls;
 end;
end;




function TRemoteDB.DBChangeCount: Integer;
var i:integer;
begin
 Result:=0;
 for i :=0 to self.ComponentCount-1 do begin
  if Self.Components[i].ClassType = TClientDataset then begin
   with TClientDataset(Self.Components[i]) do begin
     Result:=Result+ChangeCount;
   end;
  end;
 end;
end;



procedure TRemoteDB.DeleteFromStock(product_model: string; product_owner_id,
  product_supplier_id, quantity: integer);
var stocklocated : boolean;
    internalq : integer;
begin
internalq:=quantity;
if Products.Locate('Products_model',product_model,[]) then begin
     if Productsproducts_stock_managed.Value='True' then repeat
        if product_supplier_id > 99999 then begin
            Stock.Filter:='product_supplier_id = '+inttostr(product_supplier_id);
            Stock.Filtered:=True;
         end else begin
            Stock.Filter:='product_supplier_id < 99999';
            Stock.Filtered:=True;
         end;

            Stock.IndexName:='StockIXModelOwner';
            Stock.SetKey;
            Stockproduct_model.AsString:=product_model;
            Stockproduct_owner_id.AsInteger:=product_owner_id;

            if Stock.GotoKey then begin
               if StockProduct_Quantity.Value>internalq then begin
                   Stock.Edit;
                   StockProduct_Quantity.Value:=StockProduct_Quantity.Value-internalq;
                   internalq:=0;
                   Stock.Post;
               end;
               if StockProduct_Quantity.Value=internalq then begin
                 Stock.delete;
                 internalq:=0;
               end;
               if StockProduct_Quantity.Value<internalq then begin
                 internalq:=internalq-StockProduct_Quantity.Value;
                 Stock.delete;
               end;
               stocklocated:=True;
            end else stocklocated:=False;

     until (internalq=0) or (not stocklocated);
    end else begin
     ShowMessage('Produit Inexistant');
    end;
    Stock.Filtered:=False;
    Stock.Filter:='';
end;

procedure TRemoteDB.ProgressSynchronisebShow(Sender: TObject);
var   i:integer;
      updatestatus:boolean;
begin
 {
  AllowUpdate:=True;
  for i :=0 to self.ComponentCount-1 do begin
   if Self.Components[i].ClassType = TClientDataset then begin
    with TClientDataset(Self.Components[i]) do begin
     if TClientDataset(Self.Components[i]).State<>dsBrowse then begin
      AllowUpdate:=False;
     end;
    end;
   end;
  end;
 if AllowUpdate then ProgressUpdate.Execute;
 }

 ProgressSaveModuleShow(nil);

 SqlConnection.AutoClone:=True;
 SQLConnection.CloseDataSets;
 SQLConnection.Close;

 ProgressSync.Caption:='Synchronisation de la base de données';
 ProgressSync.ProgressMax:=DatasetsCount+1;
 ProgressSync.ProgressPosition:=ProgressSync.Progressmin;

 // messagedlg(' '+SQLConnection.Params.Values['user_name']+' '+SQLConnection.Params.Values['database']+' '+SQLConnection.Params.Values['hostname']+' '+SQLConnection.Params.Values['password'],mtwarning,[mbok],0);

 try
  UpdateStatus:=Isupdating;
  if not isupdating then IsUpdating:=True;

  for i :=0 to self.ComponentCount-1 do begin
   if self.ProgressSync.Cancel then exit;
   if Self.Components[i].ClassType = TClientDataset then begin
    ProgressSync.InfoLabel:='Mise à jour de la table : '+Self.Components[i].Name;
    ProgressSync.ProgressPosition:=ProgressSync.ProgressPosition+1;
    Application.ProcessMessages;
    SaveDataset(TClientDataset(Self.Components[i]),True);
    with TClientDataset(Self.Components[i]) do begin
     try
      DisableConstraints;
      DisableControls;
      if TClientDataset(Self.Components[i]).ProviderName<>'' then begin
       if ApplyUpdates(-1)=0 then begin
        Refresh;
       end;
      end;
     finally
      SQLConnection.CloseDataSets;
      SQLConnection.Close;
      SaveDataset(TClientDataset(Self.Components[i]),False);
      EnableConstraints;
      EnableControls;
      // Close;
     end;
    end;
   end;
  end;
 finally
  IsUpdating:=UpdateStatus;
 end;
end;

procedure TRemoteDB.ProgressUpdateShow(Sender: TObject);
var   i:integer;
      updatestatus:boolean;
begin
 ProgressSync.Caption:='Update de la base de données';
 ProgressSync.ProgressMax:=DatasetsCount+1;
 ProgressSync.ProgressPosition:=ProgressSync.Progressmin;

 try
  UpdateStatus:=Isupdating;
  if not IsUpdating then IsUpdating:=True;
  for i :=0 to self.ComponentCount-1 do begin
   if self.ProgressSync.Cancel then exit;
   if Self.Components[i].ClassType = TClientDataset then begin
    ProgressSync.InfoLabel:='Mise à jour de la table : '+Self.Components[i].Name;
    ProgressSync.ProgressPosition:=ProgressSync.ProgressPosition+1;
    Application.ProcessMessages;

    if TClientDataset(Self.Components[i]).ChangeCount > 0 then begin

      SaveDataset(TClientDataset(Self.Components[i]),True);
      with TClientDataset(Self.Components[i]) do begin
       try
        if TClientDataset(Self.Components[i]).ProviderName<>'' then begin
         if ApplyUpdates(-1)=0 then begin
         end;
        end;
       finally
        SaveDataset(TClientDataset(Self.Components[i]),False);
       end;
      end;

    end;
   end;
  end;
 finally
  IsUpdating:=UpdateStatus;
 end;
end;

procedure TRemoteDB.ProgressCreateModulebShow(Sender: TObject);
var i:integer;
    SQL:string;
    UpdateStatus:boolean;
    myFile : TextFile;
    text   : string;
begin
 //
 // Setting Parameters
 //

 SQLDSRentStock.Params.ParamByName('shopid').Value:=CONNECTEDSHOP;
 SQLDSRentTransaction.Params.ParamByName('shopid').Value:=CONNECTEDSHOP;
 SQLDSRentSchemes.Params.ParamByName('shopid').Value:=CONNECTEDSHOP;
 SQLDSItemsSold.Params.ParamByName('shopid').Value:=CONNECTEDSHOP;
 SQLDSSales.Params.ParamByName('shopid').Value:=CONNECTEDSHOP;
 SQLDSSales.Params.ParamByName('datelimit').Value:=Trunc(Now-365);
 SQLDSInvoices_items.Params.ParamByName('shopid').Value:=CONNECTEDSHOP;
 SQLDSInvoices.Params.ParamByName('shopid').Value:=CONNECTEDSHOP;
 SQLDSInvoices.Params.ParamByName('datelimit').Value:=Trunc(Now-(5*365));
 SQLDSStock.Params.ParamByName('shopid').Value:=CONNECTEDSHOP;
 SQLDSRepair.Params.ParamByName('shopid').Value:=CONNECTEDSHOP;
 SQLDSTransfer.Params.ParamByName('shopid').Value:=CONNECTEDSHOP;
 SQLDSRefunds.Params.ParamByName('shopid').Value:=CONNECTEDSHOP;
 SQLDSExpenses.Params.ParamByName('shopid').Value:=CONNECTEDSHOP;
 SQLDSItemsRefunded.Params.ParamByName('shopid').Value:=CONNECTEDSHOP;
 SQLDSShops.Params.ParamByName('shopgroupid').Value:=SHOPGROUPID;
 SQLDSPPrices.Params.ParamByName('shopid').Value:=CONNECTEDSHOP;
 SQLDSSuppliersStock.Params.ParamByName('shopid').Value:=SHOPGROUPID;
 SQLDSCustomers.Params.ParamByName('shopid').Value:=CONNECTEDSHOP;
 SQLDSCashClose.Params.ParamByName('shopid').Value:=CONNECTEDSHOP;
 SQLDSCustomers.Params.ParamByName('maxid').Value:=(CONNECTEDSHOP+1)*100000;
 SQLDSCustomers.Params.ParamByName('minid').Value:=(CONNECTEDSHOP)*100000;
 SQLDSAlerts.Params.ParamByName('maxid').Value:=(CONNECTEDSHOP+1)*100000;
 SQLDSAlerts.Params.ParamByName('minid').Value:=(CONNECTEDSHOP)*100000;
 SQLDSAlertsExt.Params.ParamByName('maxid').Value:=(CONNECTEDSHOP+1)*100000;
 SQLDSAlertsExt.Params.ParamByName('minid').Value:=(CONNECTEDSHOP)*100000;
 SQLDSAddress_book.Params.ParamByName('shopid').Value:=CONNECTEDSHOP;
 SQLDSAddress_book.Params.ParamByName('maxid').Value:=(CONNECTEDSHOP+1)*100000;
 SQLDSAddress_book.Params.ParamByName('minid').Value:=(CONNECTEDSHOP)*100000;

 //
 // Building queries
 //

 // Products
 // Attention debut du array a 0 pour la table principale puis 1 pour les sous tables evider double champs
 SQL:='SELECT DISTINCT';
 for i:=0 to high(products_fields) do SQL:=SQL+' p.'+products_fields[i]+',';
 for i:=1 to high(products_description_fields) do SQL:=SQL+' pd.'+products_description_fields[i]+',';
 for i:=1 to high(products_to_categories_fields) do SQL:=SQL+' p2c.'+products_to_categories_fields[i]+',';
 SQL:=LeftStr(SQL,length(SQL)-1);
 SQL:=SQL+' FROM products p, products_description pd, products_to_categories p2c WHERE (p.products_id = pd.products_id) and (p.products_id=p2c.products_id) and (pd.language_id = 1)';
 RemoteDB.SQLDSProducts.CommandText:=SQL;
{
 SQL:='SELECT DISTINCT';
 for i:=0 to high(products_fields) do SQL:=SQL+' p.'+products_fields[i]+',';
 for i:=0 to high(products_description_fields) do SQL:=SQL+' pd.'+products_description_fields[i]+',';
// for i:=0 to high(products_to_categories_fields) do SQL:=SQL+' p2c.'+products_to_categories_fields[i]+',';
 SQL:=LeftStr(SQL,length(SQL)-1);
 SQL:=SQL+' FROM products p, products_description pd WHERE (p.products_id = pd.products_id) and (pd.language_id = 1)';
 RemoteDB.SQLDSProducts.CommandText:=SQL;
}

 ProgressCreate.Caption:='Chargement de la base de données';
 ProgressCreate.InfoLabel:='Connection au serveur';
 ProgressCreate.ProgressPosition:=ProgressCreate.ProgressMin;
 ProgressCreate.ProgressMax:=DataSetsCount+1;
 Application.ProcessMessages;


 if DBIsOnDisk=false then SqlConnection.Open;

 // ShowMessage(SQLDSStock.CommandText);

 try
   // Try to open the Test.txt file for writing to
   ChDir( ExtractFilePath(ParamStr(0)));
   AssignFile(myFile, 'dataload.txt');
   ReWrite(myFile);

   // Write a couple of well known words to this file
   WriteLn(myFile, 'Trying to load the DB');




  UpdateStatus:=Isupdating;
  if not isupdating then IsUpdating:=True;
  for i :=0 to self.ComponentCount-1 do begin
   if Self.Components[i].ClassType = TClientDataset then begin
    ProgressCreate.InfoLabel:='Chargement de la table : '+Self.Components[i].Name;
    ProgressCreate.ProgressPosition:=ProgressCreate.ProgressPosition+1;
    Application.ProcessMessages;
    with TClientDataset(Self.Components[i]) do begin
     ChDir( ExtractFilePath(ParamStr(0)));
     if FileExists(Filename) then begin
      WriteLn(myFile, 'Loading :'+Filename);
      LoadfromFile;
      Open;
     end else begin
      if ProviderName='' then begin
       if DatasetField=nil then begin
        CreateDataset;
       end;
      end else begin
       Open;
      end;
     end;
     SaveDataset(TClientDataset(Self.Components[i]),True);
    end;
    if DBIsOnDisk=false then KeepConnect;
   end;
  end;
 finally
  // Close the file
  WriteLn(myFile, 'DB successfuly loaded');
  CloseFile(myFile);
  IsUpdating:=UpdateStatus;
 end;
end;

procedure TRemoteDB.TimerSaveDBTimer(Sender: TObject);
begin
 if DatasetsAllBrowse and not IsUpdating then begin
  try
   ProgressSaveModuleShow(Nil);
  finally
  end;
 end else begin
  //  messagedlg('DB non sauvée car dsEdit',mtwarning,[mbok],0)
 end;
end;


procedure TRemoteDB.ProgressSaveModuleShow(Sender: TObject);
Var i:integer;
    UpdateStatus:Boolean;
begin
  UpdateStatus:=Isupdating;
  if not isupdating then IsUpdating:=True;

 ProgressSave.Caption:='Sauvegarde de la base de données';
 ProgressSave.ProgressPosition:=ProgressSave.ProgressMin;
 ProgressSave.ProgressMax:=DataSetsCount+1;
 Application.ProcessMessages;

 for i :=0 to self.ComponentCount-1 do begin
  if Self.Components[i].ClassType = TClientDataset then begin
//   TClientDataset(Self.Components[i]).MasterSource:=nil;
//   TClientDataset(Self.Components[i]).MasterFields:='';
   ProgressSave.InfoLabel:='Enregistrement de la table : '+Self.Components[i].Name;
   ProgressSave.ProgressPosition:=ProgressSave.ProgressPosition+1;
   Application.ProcessMessages;
   if (TClientDataset(Self.Components[i]).ChangeCount) >0 then SaveDataset(TClientDataset(Self.Components[i]),True);
   // TClientDataset(Self.Components[i]).Close;
  end;
 end;

 IsUpdating:=UpdateStatus;
end;

function TRemoteDB.SaveDataset(Dataset: TClientDataset;Backup:Boolean):Boolean;
var
 DatasetDeleted:Boolean;
 DatasetSaved:Boolean;
 Originalfilename,Backupfilename:String;
begin
 DataSet.DisableConstraints;
 DataSet.DisableControls;
 try
  OriginalFileName:=ExtractFileName(Dataset.FileName);
  BackupFileName:='database/backup/'+ChangeFileExt(OriginalFileName, '.bak');
  OriginalFileName:='database/'+OriginalFileName;

  DatasetDeleted:=True;
  DatasetSaved:=True;

  if (dataset.state=dsEdit) or (dataset.state=dsinsert) then Dataset.Post;

  ChDir( ExtractFilePath(ParamStr(0)) );
  if not(DirectoryExists('database')) then begin
   CreateDir('database');
  end;
  ChDir( ExtractFilePath(ParamStr(0))+'/database' );
  if not(DirectoryExists('backup')) then begin
   CreateDir('backup');
  end;

  ChDir( ExtractFilePath(ParamStr(0)) );
  try
   if Backup then begin
    // Removing old backup
    if FileExists(BackupFileName) then begin
     DeleteFile(BackupFileName);
    end;
    // Creating New backup
    if FileExists(OriginalFileName) then
    if not (FileExists(BackupFileName)) then begin
     if not (RenameFile(OriginalFileName,BackupFileName)) then  begin
      DatasetDeleted:=False;
      Messagedlg('Erreur durant la création du backup de : '+OriginalFileName+'. Impossible de renommer',mtwarning,[mbOk],0);
     end;
    end else begin
      Messagedlg('Erreur durant la création du backup de : '+OriginalFileName+'. Fichier existant',mtwarning,[mbOk],0);
    end;
   end;
   // Saving New File
   ChDir( ExtractFilePath(ParamStr(0)) );
   DataSet.SaveToFile(OriginalFileName);
   if not (FileExists(OriginalFileName)) then begin
    DatasetSaved:=False;
    Messagedlg('Erreur durant la sauvegarde de : '+OriginalFileName,mtwarning,[mbOk],0);
   end;
  except
  end;

 finally
  DataSet.EnableControls;
  DataSet.EnableConstraints;
 end;
 Result:=DatasetSAved and DatasetDeleted;
end;



procedure TRemoteDB.DPProductsBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
var
Connection:TSQLConnection;
SQL:String;
i,j:integer;
IdResult:variant;
product_date_added,product_date_available,Id:string;
PreExist,insertion,modified:boolean;
IdQuery:TSqlDataset;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;

  case UpdateKind of
    ukInsert:
     begin
      ID := DeltaDS.FieldByName('products_id').AsString;

      // Delete from products_description
      SQL := Format('DELETE FROM products_description WHERE products_id = %s', [ID]);
      Connection.Execute(SQL, nil, nil);

      // Delete from products
      SQL := Format('DELETE FROM products WHERE products_id = %s', [ID]);
      Connection.Execute(SQL, nil, nil);

      // Delete from products
      SQL := Format('DELETE FROM products WHERE products_model = %s', [QuotedStr(DeltaDS.FieldByName('products_model').AsString)] );
      Connection.Execute(SQL, nil, nil);

      // Delete from products_to_categories
      SQL := Format('DELETE FROM products_to_categories WHERE products_id = %s', [ID]);
      Connection.Execute(SQL, nil, nil);

//      DeltaDs.FieldByName('products_id').NewValue:=UnAssigned;

      // Insertion des valeurs dans la table produits
      SQL:='INSERT INTO products (';
      for i:=0 to high(products_fields) do SQL:=SQL+products_fields[i]+',';
      SQL:=LeftStr(SQL,length(SQL)-1);
      SQL:=SQL+') VALUES (';
      for i:=0 to high(products_fields) do begin
       if DeltaDS.FieldByName(products_fields[i]).DataType=ftTimeStamp then begin
        SQL:=SQL+QuotedStr(Formatdatetime('YYYY-MM-DD HH:MM:SS',(DeltaDs.FieldByName(products_fields[i]).AsDateTime)))+',';
       end else begin
        SQL:=SQL+QuotedStr(vartostr(DeltaDs.FieldByName(products_fields[i]).NewValue))+',';
       end;
      end;
      SQL:=LeftStr(SQL,length(SQL)-1);
      SQL:=SQL+')';
      Connection.Execute(SQL, nil, nil);

      {
      IdQuery:=TSQLDataset.Create(nil);
      IdQuery.SQLConnection:=Connection;
      IdQuery.CommandType:=ctquery;
      IdQuery.CommandText:='select last_insert_id()';
      idQuery.Open;

      if idQuery<>nil then begin
       IdResult:=idQuery.FieldByName('last_insert_id()').value;
       if isinteger(idresult.asstring) then begin
        DeltaDS.FieldByName('products_id').NewValue:=IdResult.AsInteger;
       end;
      end;

      IdQuery.Close;
      IdQuery.Free;
      }

      // Insertion des valuers dans le table produits_description
      Languages.First;
      While not languages.Eof do begin
       SQL:='INSERT INTO products_description (';
       for i:=0 to high(products_description_fields) do SQL:=SQL+products_description_fields[i]+',';
       SQL:=LeftStr(SQL,length(SQL)-1);
       SQL:=SQL+') VALUES (';
       for i:=0 to high(products_description_fields) do begin
        if products_description_fields[i]='language_id' then  SQL:=SQL+QuotedStr(vartostr(RemoteDB.Languageslanguages_id.Value))+',' else
        if DeltaDS.FieldByName(products_description_fields[i]).DataType=ftTimeStamp then begin
         SQL:=SQL+QuotedStr(Formatdatetime('YYYY-MM-DD HH:MM:SS',(DeltaDs.FieldByName(products_description_fields[i]).AsDateTime)))+',';
        end else begin
         SQL:=SQL+QuotedStr(vartostr(DeltaDs.FieldByName(products_description_fields[i]).NewValue))+',';
        end;
       end;
       SQL:=LeftStr(SQL,length(SQL)-1);
       SQL:=SQL+')';
       Connection.Execute(SQL, nil, nil);
       Languages.Next
      end;


      //
      // Insertion dans le table poducts_to_categories
      //
      SQL:='INSERT INTO products_to_categories (';
      for i:=0 to high(products_to_categories_fields) do SQL:=SQL+products_to_categories_fields[i]+',';
      SQL:=LeftStr(SQL,length(SQL)-1);
      SQL:=SQL+') VALUES (';
      for i:=0 to high(products_to_categories_fields) do begin
       if DeltaDS.FieldByName(products_to_categories_fields[i]).DataType=ftTimeStamp then begin
        SQL:=SQL+QuotedStr(Formatdatetime('YYYY-MM-DD HH:MM:SS',(DeltaDs.FieldByName(products_to_categories_fields[i]).AsDateTime)))+',';
       end else begin
        SQL:=SQL+QuotedStr(vartostr(DeltaDs.FieldByName(products_to_categories_fields[i]).NewValue))+',';
       end;
      end;
      SQL:=LeftStr(SQL,length(SQL)-1);
      SQL:=SQL+')';
      Connection.Execute(SQL, nil, nil);
     end;

    ukModify:
     begin
      // Update table products,
      for i:=0 to high(products_fields) do begin
       if not VarIsEmpty(DeltaDS.FieldbyName(products_fields[i]).NewValue) then begin
          if SQL <> '' then SQL := SQL + ', ';
          if DeltaDS.FieldByName(products_fields[i]).DataType=ftTimeStamp then begin
           SQL := SQL + Format(Products_fields[i]+' = %s',
            [QuotedStr(Formatdatetime('YYYY-MM-DD HH:MM:SS',(DeltaDs.FieldByName(products_fields[i]).AsDateTime)))]);
          end else begin
           SQL := SQL + Format(Products_fields[i]+' = %s',
            [QuotedStr(vartostr(DeltaDS.Fieldbyname(products_fields[i]).NewValue))]);
          end;
       end;
      end;

      if SQL <> '' then begin
        ID := vartostr(DeltaDS.FieldByName('products_id').OldValue);
        SQL := Format('UPDATE products SET %s ' +
          'WHERE products_id = %s', [SQL, ID]);
        Connection.Execute(SQL, nil, nil);
      end;

      // Update table products_description
      Languages.First;
      While not languages.Eof do begin
      SQL:='';
       for i:=0 to high(products_description_fields) do begin
        if not VarIsEmpty(DeltaDS.FieldbyName(products_description_fields[i]).NewValue) then begin
           if SQL <> '' then SQL := SQL + ', ';
           if products_description_fields[i]<>'language_id' then
           if DeltaDS.FieldByName(products_description_fields[i]).DataType=ftTimeStamp then begin
            SQL := SQL + Format(products_description_fields[i]+' = %s',
             [QuotedStr(Formatdatetime('YYYY-MM-DD HH:MM:SS',(DeltaDs.FieldByName(products_description_fields[i]).AsDateTime)))]);
           end else begin
            SQL := SQL + Format(products_description_fields[i]+' = %s',
             [QuotedStr(vartostr(DeltaDS.Fieldbyname(products_description_fields[i]).NewValue))]);
           end;
        end;
       end;

       if SQL <> '' then begin
         ID := vartostr(DeltaDS.FieldByName('products_id').OldValue);
         SQL := Format('UPDATE products_description SET %s ' +
           'WHERE products_id = %s and language_id = %s', [SQL, ID, RemoteDB.Languageslanguages_id.AsString]);
         Connection.Execute(SQL, nil, nil);
       end;
       Languages.Next;
      end;


      //
      // Update Products_to_categories
      //
      SQL:='';
      for i:=0 to high(products_to_categories_fields) do begin
       if not VarIsEmpty(DeltaDS.FieldbyName(products_to_categories_fields[i]).NewValue) then begin
          if SQL <> '' then SQL := SQL + ', ';
          if DeltaDS.FieldByName(products_to_categories_fields[i]).DataType=ftTimeStamp then begin
           SQL := SQL + Format(products_to_categories_fields[i]+' = %s',
            [QuotedStr(Formatdatetime('YYYY-MM-DD HH:MM:SS',(DeltaDs.FieldByName(products_to_categories_fields[i]).AsDateTime)))]);
          end else begin
           SQL := SQL + Format(products_to_categories_fields[i]+' = %s',
            [QuotedStr(vartostr(DeltaDS.Fieldbyname(products_to_categories_fields[i]).NewValue))]);
          end;
       end;
      end;

      if SQL <> '' then begin
        ID := vartostr(DeltaDS.FieldByName('products_id').OldValue);
        SQL := Format('UPDATE products_to_categories SET %s ' +
          'WHERE products_id = %s', [SQL, ID]);
        Connection.Execute(SQL, nil, nil);
      end;
     end;


    ukDelete:
     begin
      ID := DeltaDS.FieldByName('products_id').AsString;

      // Delete from products_description
      SQL := Format('DELETE FROM products_description WHERE products_id = %s', [ID]);
      Connection.Execute(SQL, nil, nil);

      // Delete from products
      SQL := Format('DELETE FROM products WHERE products_id = %s', [ID]);
      Connection.Execute(SQL, nil, nil);


      // delete from products_to_categories
      SQL := Format('DELETE FROM products_to_categories WHERE products_id = %s', [ID]);
      Connection.Execute(SQL, nil, nil);

    end;
  end;

  Applied := True;
end;

procedure TRemoteDB.DPRefundsBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
Connection:TSQLConnection;
SQL,ID, LOC:String;
i:integer;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
  case UpdateKind of

    ukDelete: begin
        LOC := vartostr(DeltaDS.FieldByName('refunds_shop_id').OldValue);
        ID := vartostr(DeltaDS.FieldByName('refunds_id').OldValue);
        SQL := Format('DELETE FROM netshop_refunds '+
          'WHERE (refunds_shop_id = %s) and (refunds_id = %s)', [LOC, ID]);
        Connection.Execute(SQL, nil, nil);
        Applied := True;
    end;

    ukModify: begin
      SQL := '';
      for i:=0 to DeltaDS.FieldCount-1 do begin
       if not VarIsEmpty(DeltaDS.Fields[i].NewValue) then begin
        if SQL <> '' then SQL := SQL + ', ';
          SQL := SQL + Format(DeltaDS.Fields[i].FieldName+' = %s',
            [QuotedStr(vartostr(DeltaDS.Fields[i].NewValue))]);
       end;
      end;
      if SQL <> '' then begin
        LOC := vartostr(DeltaDS.FieldByName('refunds_shop_id').OldValue);
        ID := vartostr(DeltaDS.FieldByName('refunds_id').OldValue);
        SQL := Format('UPDATE netshop_refunds SET %s ' +
          'WHERE (refunds_shop_id = %s) and (refunds_id = %s)', [SQL, LOC, ID]);
        Connection.Execute(SQL, nil, nil);
      end;
      Applied := True;
    end;
  end;
end;

function TRemoteDB.GetDatasetsCount: integer;
var i:integer;
begin
 Result:=0;
 for i :=0 to self.ComponentCount-1 do begin
   if Self.Components[i].ClassType = TClientDataset then begin
    Result:=Result+1;
   end;
  end;
end;

function TRemoteDB.GetDatasetsAllBrowse: boolean;
var i:integer;
begin
 Result:=True;
 for i :=0 to self.ComponentCount-1 do begin
   if Self.Components[i].ClassType = TClientDataset then begin
    if TClientDataset(Self.Components[i]).State<>dsBrowse then Result:=False;
   end;
  end;
end;

function TRemoteDB.GetIsConnected: Boolean;
begin
 Result:=DynaLink_InternetGetConnectedState(nil,0)
end;

function TRemoteDB.GetDBIsOnDisk: Boolean;
var i:integer;
begin
 Result:=True;
 for i :=0 to self.ComponentCount-1 do begin
  if Self.Components[i].ClassType = TClientDataset then begin
   with TClientDataset(Self.Components[i]) do begin
    if TClientDataset(Self.Components[i]).ProviderName<>'' then begin
     ChDir( ExtractFilePath(ParamStr(0)));
     if not(FileExists(Filename)) then begin
      //ShowMessage(FileName);
      Result:=False;
     end;
    end;
   end;
  end;
 end;
end;

function TRemoteDB.GetTodaysDate: string;
begin
 result:=datetostr(now);
end;

function TRemoteDB.GetWholeSalePrice(Model: String): Double;
begin
 RemoteDB.SuppliersStock.Filter:='suppliers_id = 6';
 RemoteDB.SuppliersStock.Filtered:=True;
 if RemoteDB.SuppliersStock.Locate('products_model',model,[locaseinsensitive]) then begin
   result:=RemoteDB.SuppliersStocksuppliers_price.AsFloat;

 end;
 RemoteDB.SuppliersStock.Filtered:=False;
end;

function TRemoteDB.GetCurrentSalesDate: string;
begin
 if sales.FieldbyName('sales_date_time').Value <> Null then
 result:=formatdatetime('dddd dd/mm/yy',sales.FieldbyName('sales_date_time').Value);
end;



procedure TRemoteDB.CustomersBeforePost(DataSet: TDataSet);
begin
 if address_book.State<>dsbrowse then address_book.Post;
end;

procedure TRemoteDB.Customerscustomers_email_addressSetText(Sender: TField;
  const Text: string);
var ANotifyServer:TNotifyServer;
begin
  if Text<>'' then begin
         if MainForm.Parameter['WebNotifyEnabled']='TRUE' then begin
          ANotifyServer:=TNotifyServer.Create('welcome',Text,Mainform.Parameter['WebNotifyUrl']);
         end;
  end;
  Sender.AsString:=Text;  
end;

procedure TRemoteDB.Address_BookBeforePost(DataSet: TDataSet);
begin
 Dataset.FieldByName('Entry_gender').value:=Customers.FieldByName('Customers_gender').Value;
 Dataset.FieldByName('Entry_firstname').value:=Customers.FieldByName('Customers_firstname').Value;
 Dataset.FieldByName('Entry_lastname').value:=Customers.FieldByName('Customers_lastname').Value;
end;

function TRemoteDB.MoveToArchives(Model: string):boolean;
var catpath: array of string;
    NewcatId,ArchiveId, i,j:Integer;
    PathName:String;
begin
 if IsInArchives(Model) then begin
  Result:=False;
  Exit;
 end;
 i:=1;
 SetLength(CatPath, 20);
 Products.Locate('products_model',Model,[]);
 if Categories.Locate('categories_id',Products.FieldbyName('categories_id').AsInteger,[]) then begin
  while Categories.FieldByName('parent_id').AsInteger<>0 do begin
   CatPath[i]:=Categories.FieldByName('categories_name').Asstring;
   Categories.Locate('categories_id',categories.Fieldbyname('parent_id').AsInteger,[]);
   i:=i+1;
  end;
  CatPath[i]:=Categories.FieldByName('categories_name').Asstring;
 end else begin
  Result:=False;
  Exit;
  // Catégorie Inexistante
 end;
 Categories.Locate('categories_name','archives',[locaseinsensitive]);
 ArchiveId:=Categories.FieldByName('categories_id').AsInteger;
 Categories.Filtered:=True;
 PathName:='';
 for j:=i downto 1 do begin
  Categories.Filter:='parent_id='+inttostr(ArchiveId);
  if categories.Locate('categories_name',CatPath[j],[locaseinsensitive]) then begin
   PathName:=Pathname+' - '+RemoteDB.Categoriescategories_name.Value;
   ArchiveId:=Categories.FieldByName('categories_id').AsInteger;
   Categories.Filter:='parent_id='+inttostr(ArchiveId);
  end else begin
   if ((Uppercase(catpath[j])<>'MANGA') or (Uppercase(catpath[j])<>'DVD') or (Uppercase(catpath[j])<>'LIVRES')) then begin
//    ShowMessage('Categorie inexistante dans les archives : '+PathName+CatPath[j]);
    Categories.Filtered:=False;
    Result:=False;
    Exit;
   end;
  end
 end;
 Categories.Filtered:=False;
 Products.Edit;
 Products.FieldByName('categories_id').AsInteger:=ArchiveId;
 Products.Post;
 Result:=True;

end;

function TRemoteDB.IsInArchives(Model: string): boolean;
var
 CloneDS: TClientDataSet;
begin
 CloneDS:=TClientDataSet.Create(nil);
 try
  CloneDS.CloneCursor(Products, True);
  Result:=False;
  if CloneDS.Locate('products_model',Model,[]) then begin
   if Categories.Locate('categories_id',Products.FieldbyName('categories_id').AsInteger,[]) then begin
    while Categories.FieldByName('parent_id').AsInteger<>0 do begin
     Categories.Locate('categories_id',categories.Fieldbyname('parent_id').AsInteger,[]);
    end;
    if Uppercase(Categories.FieldByName('categories_name').asString)='ARCHIVES' then Result:=True;
   end;
  end;
 finally
  CloneDS.Free;
 end;
end;

function TRemoteDB.RestoreFromArchives(Model: string): boolean;
var catpath: array of string;
    NewcatId,ArchiveId, i,j:Integer;
begin
 if Not IsInArchives(Model) then begin
  Result:=False;
  Exit;
 end;
 i:=1;
 SetLength(CatPath, 20);
 Products.Locate('products_model',Model,[]);
 if Categories.Locate('categories_id',Products.FieldbyName('categories_id').AsInteger,[]) then begin
  while Categories.FieldByName('parent_id').AsInteger<>0 do begin
   CatPath[i]:=Categories.FieldByName('categories_name').Asstring;
   Categories.Locate('categories_id',categories.Fieldbyname('parent_id').AsInteger,[]);
   i:=i+1;
  end;
  CatPath[i]:=Categories.FieldByName('categories_name').Asstring;
 end else begin
  // Catégorie Inexistante
  Result:=False;
  Exit;
 end;
 ArchiveId:=0;
 Categories.Filtered:=True;
 for j:=i-1 downto 1 do begin
  Categories.Filter:='parent_id='+inttostr(ArchiveId);
  if categories.Locate('categories_name',CatPath[j],[locaseinsensitive]) then begin
   ArchiveId:=Categories.FieldByName('categories_id').AsInteger;
   Categories.Filter:='parent_id='+inttostr(ArchiveId);
  end else begin
   Categories.Filtered:=False;
   Result:=False;
   Exit;
  end;
 end;
 Categories.Filtered:=False;
 Products.Edit;
 Products.FieldByName('categories_id').AsInteger:=ArchiveId;
 Products.Post;
 Result:=True;
end;



procedure TRemoteDB.DPAlertsBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
Connection:TSQLConnection;
SQL, NBR, MODEL:String;
i:integer;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
  case UpdateKind of

    ukDelete: begin
        MODEL := vartostr(DeltaDS.FieldByName('customers_alerts_products_model').OldValue);
        NBR := vartostr(DeltaDS.FieldByName('customers_alerts_customers_nbr').OldValue);
        SQL := Format('DELETE FROM netshop_customers_alerts '+
          'WHERE (customers_alerts_products_model = %s) and (customers_alerts_customers_nbr = %s)', [QuotedStr(MODEL), NBR]);
        Connection.Execute(SQL, nil, nil);
        Applied := True;
    end;

    ukModify: begin
      SQL := '';
      for i:=0 to DeltaDS.FieldCount-1 do begin
       if not VarIsEmpty(DeltaDS.Fields[i].NewValue) then begin
        if SQL <> '' then SQL := SQL + ', ';
          SQL := SQL + Format(DeltaDS.Fields[i].FieldName+' = %s',
            [QuotedStr(vartostr(DeltaDS.Fields[i].NewValue))]);
       end;
      end;
      if SQL <> '' then begin
        MODEL := vartostr(DeltaDS.FieldByName('customers_alerts_products_model').OldValue);
        NBR := vartostr(DeltaDS.FieldByName('customers_alerts_customers_nbr').OldValue);
        SQL := Format('UPDATE netshop_customers_alerts SET %s ' +
          'WHERE (customers_alerts_products_model = %s) and (customers_alerts_customers_nbr = %s)', [SQL, QuotedStr(MODEL), NBR]);
        Connection.Execute(SQL, nil, nil);
      end;
      Applied := True;
    end;
  end;
end;


procedure TRemoteDB.DPCustomersBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
var
Connection:TSQLConnection;
SQL,ID:String;
i:integer;
begin
  // Obtain a pointer to the connection from the source dataset
  case UpdateKind of
    ukModify: begin
      Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
      // Update table customers
      SQL := '';
      for i:=0 to DeltaDS.FieldCount-1 do begin
       if not VarIsEmpty(DeltaDS.Fields[i].NewValue) then begin
        if SQL <> '' then SQL := SQL + ', ';
          SQL := SQL + Format(DeltaDS.Fields[i].FieldName+' = %s',
            [QuotedStr(vartostr(DeltaDS.Fields[i].NewValue))]);
       end;
      end;
      if SQL <> '' then begin
        ID := vartostr(DeltaDS.FieldByName('customers_nbr').OldValue);
        SQL := Format('UPDATE customers SET %s ' +
          'WHERE customers_nbr = %s', [SQL, ID]);
        Connection.Execute(SQL, nil, nil);
      end;
      Applied := True;
    end;
  end;
end;

procedure TRemoteDB.DPSalesBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
var
Connection:TSQLConnection;
SQL,ID, LOC:String;
IdQuery:TSQLDataset;
i:integer;
match:boolean;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
  case UpdateKind of
    ukInsert: begin
      {
      SQL:= Format('select * from netshop_sales where sales_id = %s and sales_location = %s',[DeltaDS.FieldByName('sales_id').NewValue,DeltaDS.FieldByName('sales_location').NewValue]);
      IdQuery:=TSQLDataset.Create(nil);
      IdQuery.SQLConnection:=Connection;
      IdQuery.CommandType:=ctquery;
      IdQuery.CommandText:=SQL;
      idQuery.Open;

      if idQuery<>nil then begin
       match:=True;
       for i:=0 to deltaDS.FieldCount-1 do begin
        if DeltaDS.Fields[i].NewValue<>idQuery.FieldByName(DeltaDS.Fields[i].FieldName).value then Match:=False;
       end;
       if match then Applied:=True;
      end;

      IdQuery.Close;
      IdQuery.Free;
      }
    end;
    ukModify: begin
      SQL := '';
      for i:=0 to DeltaDS.FieldCount-1 do begin
       if not VarIsEmpty(DeltaDS.Fields[i].NewValue) then begin
        if SQL <> '' then SQL := SQL + ', ';
          SQL := SQL + Format(DeltaDS.Fields[i].FieldName+' = %s',
            [QuotedStr(vartostr(DeltaDS.Fields[i].NewValue))]);
       end;
      end;
      if SQL <> '' then begin
        LOC := vartostr(DeltaDS.FieldByName('sales_location').OldValue);
        ID := vartostr(DeltaDS.FieldByName('sales_id').OldValue);
        SQL := Format('UPDATE netshop_sales SET %s ' +
          'WHERE (sales_location = %s) and (sales_id = %s)', [SQL, LOC, ID]);
        Connection.Execute(SQL, nil, nil);
      end;
      Applied := True;
    end;
  end;
end;

procedure TRemoteDB.DPstockBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
Connection:TSQLConnection;
SQL,ID, LOC:String;
IdQuery:TSQLDataset;
i:integer;
match:boolean;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
  case UpdateKind of
    ukInsert: begin
    end;

    ukModify: begin
      SQL := '';
      for i:=0 to DeltaDS.FieldCount-1 do begin
       if not VarIsEmpty(DeltaDS.Fields[i].NewValue) then begin
        if SQL <> '' then SQL := SQL + ', ';
          SQL := SQL + Format(DeltaDS.Fields[i].FieldName+' = %s',
            [QuotedStr(vartostr(DeltaDS.Fields[i].NewValue))]);
       end;
      end;
      if SQL <> '' then begin
        LOC := vartostr(DeltaDS.FieldByName('product_location').OldValue);
        ID := vartostr(DeltaDS.FieldByName('id').OldValue);
        SQL := Format('UPDATE netshop_stock SET %s ' +
          'WHERE (product_location = %s) and (id = %s)', [SQL, LOC, ID]);
        Connection.Execute(SQL, nil, nil);
      end;
      Applied := True;
    end;

    ukDelete: begin
        LOC := vartostr(DeltaDS.FieldByName('product_location').OldValue);
        ID := vartostr(DeltaDS.FieldByName('id').OldValue);
        SQL := Format('DELETE FROM netshop_stock '+
          'WHERE (product_location = %s) and (id = %s)', [LOC, ID]);
        Connection.Execute(SQL, nil, nil);
        Applied := True;
    end;
  end;
end;

procedure TRemoteDB.DPSuppliersStockBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
Connection:TSQLConnection;
SQL,ID, LOC:String;
IdQuery:TSQLDataset;
i:integer;
match:boolean;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
  case UpdateKind of
    ukInsert: begin
      SQL:= Format('delete from netshop_suppliers_stock where suppliers_id = %s and shop_group_id = %s and products_model = %s',[DeltaDS.FieldByName('suppliers_id').NewValue,DeltaDS.FieldByName('shop_group_id').NewValue,QuotedStr(DeltaDS.FieldByName('products_model').NewValue)]);
      Connection.Execute(SQL, nil, nil);
    end;
    ukModify: begin

    end;
  end;
end;

function TRemoteDB.EncodeMD5(Source: string): string;
var
  MD5Digest  : TMD5Digest;
  i:integer;
  key,salt:string;
begin
 key:='';
 randomize;
 for i:=1 to 10 do begin
 key:=key+inttostr(random(10));
 end;
 StringHashMD5(MD5Digest, key);
 salt:=leftstr(BufferToHex(MD5Digest, SizeOf(MD5Digest)),2);
 StringHashMD5(MD5Digest, salt+source);
 result := BufferToHex(MD5Digest, SizeOf(MD5Digest))+':'+salt;
end;

procedure TRemoteDB.SalesAfterOpen(DataSet: TDataSet);
Var FirstVal:Integer;
begin
 Dataset.First;
 FirstVal:=dataset.fieldbyname('sales_id').AsInteger;
 Dataset.Next;
 if dataset.fieldbyname('sales_id').AsInteger = FirstVal+1 then Dataset.First;

 if dataset.fieldbyname('sales_id').Value <> NULL then
  SQLDSItemsSold.Params.ParamByName('sales_id_min').Value:=dataset.fieldbyname('sales_id').Value
 else SQLDSItemsSold.Params.ParamByName('sales_id_min').Value:=0;
end;



procedure TRemoteDB.CarousselNewRecord(DataSet: TDataSet);
begin
 RemoteDB.Caroussel.FieldByName('id').Value:=GetNextSubIdSimple(Dataset as Tcustomclientdataset,'id');
 RemoteDB.Caroussel.FieldByName('shop_id').Value:=CONNECTEDSHOP;
end;




procedure TRemoteDB.CDSCashCloseNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('cashclose_datetime').Value:=Now;
 Dataset.FieldByName('cashclose_shopid').Value:=CONNECTEDSHOP;
end;

function TRemoteDB.GetSold(Model: string; days: integer): Tpoint;
var
 CloneDS1,CloneDS2: TClientDataSet;
begin
 CloneDS1:=TClientDataSet.Create(nil);
 CloneDS2:=TClientDataSet.Create(nil);
 try
  Result.X:=0;
  Result.Y:=0;
  CloneDS1.CloneCursor(sales, True);
  CloneDS2.CloneCursor(items_sold, True);
  CloneDS1.IndexFieldNames:='sales_date_time';
  CloneDS2.IndexFieldNames:='items_sold_sales_id';
  CloneDS1.Filter:='sales_date_time > '+floattostr(trunc(now-days));
  CloneDS1.Filtered:=True;
  CloneDS1.First;
  CloneDS2.Filter:='(items_sold_sales_id > '+CloneDS1.Fieldbyname('sales_id').AsString+') and (items_sold_model = '+quotedstr(Model)+')';
  CloneDS2.Filtered:=True;
  CloneDS2.First;
  While not CloneDS2.Eof do begin
   if CloneDS2.FieldByName('items_sold_owner_id').Value=CONNECTEDSHOP then begin
    Result.X:=Result.Y+CloneDS2.FieldByName('items_sold_quantity').Value;
   end else begin
    Result.Y:=Result.Y+CloneDS2.FieldByName('items_sold_quantity').Value;
   end;
   CloneDS2.Next;
  end;
 finally
  CloneDS1.Free;
  CloneDS2.Free;
 end;
end;


function TRemoteDB.GetStockNew(Model: string): integer;
var
 CloneDS: TClientDataSet;
begin
 CloneDS:=TClientDataSet.Create(nil);
 try
  Result:=0;
  CloneDS.CloneCursor(Stock, True);
  CloneDS.IndexFieldNames:='product_model;product_owner_id';
  if CloneDS.FindKey([Model,CONNECTEDSHOP]) then
  While ((not CloneDS.eof) and (CloneDS.FieldByName('product_model').Value=Model) and (CloneDS.FieldByName('product_owner_id').Value=CONNECTEDSHOP)) do begin
   Result:=Result+CloneDS.FieldByName('product_quantity').Value;
   CloneDS.Next;
  end;
 finally
  CloneDS.Free;
 end;
end;

function TRemoteDB.GetStockOcc(Model: string): integer;
var
 CloneDS: TClientDataSet;
begin
 CloneDS:=TClientDataSet.Create(nil);
 try
  Result:=0;
  CloneDS.CloneCursor(Stock, True);
  CloneDS.IndexFieldNames:='product_model;product_owner_id';
  if CloneDS.FindKey([Model]) then
  While ((not CloneDS.eof) and (CloneDS.FieldByName('product_model').Value=Model)) do begin
   if CloneDS.FieldByName('product_owner_id').Value<>CONNECTEDSHOP then Result:=Result+CloneDS.FieldByName('product_quantity').Value;
   CloneDS.Next;
  end;
 finally
  CloneDS.Free;
 end;
end;

function TRemoteDB.CheckField(DbName,FieldName: string;Value:Variant): boolean;
var
 CloneDS: TClientDataSet;
begin
 CloneDS:=TClientDataSet.Create(nil);
 try
  CloneDS.CloneCursor(TClientDataset(Self.FindComponent(DBName)), True);
  if CloneDS.Locate(FieldName,Value,[]) then result:=True else result:=False;
 finally
  CloneDS.Free;
 end;
end;


procedure TRemoteDB.InvoicesAfterOpen(DataSet: TDataSet);
begin
 Dataset.First;
 if dataset.fieldbyname('invoices_id').Value <> NULL then
  SQLDSInvoices_items.Params.ParamByName('invoices_id_min').Value:=dataset.fieldbyname('invoices_id').Value
 else SQLDSInvoices_items.Params.ParamByName('invoices_id_min').Value:=0;
end;

procedure TRemoteDB.InvoicesNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('invoices_id').Value:=GetNextSubIdDouble(Dataset as TcustomClientDataset, 'invoices_location','invoices_id');
 Dataset.FieldByName('invoices_location').Value:=CONNECTEDSHOP;
 Dataset.FieldByName('invoices_date_time').Value:=Now;
 Dataset.FieldByName('invoices_closed').Value:=0;
 Dataset.FieldByName('invoices_paid_cash').AsInteger:=0;
 Dataset.FieldByName('invoices_paid_bct').AsInteger:=0;
 Dataset.FieldByName('invoices_paid_proton').AsInteger:=0;
 Dataset.FieldByName('invoices_paid_visa').AsInteger:=0;
 Dataset.FieldByName('invoices_paid_voucher').AsInteger:=0;
end;

procedure TRemoteDB.DPInvoicesBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
var
Connection:TSQLConnection;
SQL,ID, LOC:String;
i:integer;
begin
  // Obtain a pointer to the connection from the source dataset
  case UpdateKind of
    ukModify: begin
      Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
      SQL := '';
      for i:=0 to DeltaDS.FieldCount-1 do begin
       if not VarIsEmpty(DeltaDS.Fields[i].NewValue) then begin
        if SQL <> '' then SQL := SQL + ', ';
          SQL := SQL + Format(DeltaDS.Fields[i].FieldName+' = %s',
            [QuotedStr(vartostr(DeltaDS.Fields[i].NewValue))]);
       end;
      end;
      if SQL <> '' then begin
        LOC := vartostr(DeltaDS.FieldByName('invoices_location').OldValue);
        ID := vartostr(DeltaDS.FieldByName('invoices_id').OldValue);
        SQL := Format('UPDATE netshop_invoices SET %s ' +
          'WHERE (invoices_location = %s) and (invoices_id = %s)', [SQL, LOC, ID]);
        Connection.Execute(SQL, nil, nil);
      end;
      Applied := True;
    end;


    ukDelete: begin
      Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
      SQL := '';
      LOC := vartostr(DeltaDS.FieldByName('invoices_location').OldValue);
      ID := vartostr(DeltaDS.FieldByName('invoices_id').OldValue);
      SQL := Format('DELETE from netshop_invoices WHERE (invoices_location = %s) and (invoices_id = %s)', [LOC, ID]);
      Connection.Execute(SQL, nil, nil);
      Applied := True;
    end;
  end;
end;

procedure TRemoteDB.DPItemsSoldBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
{
  case UpdateKind of
    ukInsert:
     begin
      DeltaDS.FieldByName('items_sold_id').NewValue:=DeltaDS.FieldByName('items_sold_id').NewValue+11724;
     end;
  end;
}
end;

procedure TRemoteDB.Invoices_itemsNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('invoices_items_id').AsInteger:=GetNextSubIdSimple(Dataset as TcustomClientDataset, 'invoices_items_id');
 Dataset.FieldByName('invoices_items_location').Value:=invoices.FieldByName('invoices_location').Value;
 Dataset.FieldByName('invoices_items_invoice_id').Value:=invoices.FieldByName('invoices_id').Value;
 Dataset.FieldByName('invoices_items_refunded').Value:=0;
end;

procedure TRemoteDB.SetProductPrice(Price:Double);
Var DBState:TdatasetState;
begin
 DBState:=Products.State;
 if Tax_Zones.Active and Tax_Class.Active and Tax_Rates.Active then begin
  Tax_Zones.FindKey([18]);
  Tax_Class.FindKey([RemoteDB.Productsproducts_tax_class_id.Value]);
  Tax_Rates.FindKey([Tax_Zones.FieldByName('Geo_Zone_id').Value,Tax_Class.FieldByName('Tax_Class_Id').Value]);
  if DBState=dsBrowse then Products.Edit;
  Products.FieldByName('products_price').Value:=Round(Price/(1+Tax_Rates.FieldByName('Tax_Rate').AsFloat/100)*1000)/1000;
  if DBState=dsBrowse then Products.Post;
 end;
end;

procedure TRemoteDB.InvoicesCalcFields(DataSet: TDataSet);
begin
 Dataset.FieldByName('invoices_date_disp').Value:=Dataset.FieldByName('invoices_date_time').Value;
 Dataset.FieldByName('Invoices_paid_TotalTTC').AsFloat:=Dataset.FieldByName('invoices_paid_Cash').AsFloat+Dataset.FieldByName('invoices_paid_bct').AsFloat+Dataset.FieldByName('invoices_paid_proton').AsFloat+Dataset.FieldByName('invoices_paid_visa').AsFloat+Dataset.FieldByName('invoices_paid_voucher').AsFloat;
end;

function TRemoteDB.GetPriceHT(Model: string;PriceTTC:double): double;
var
 Cproducts,Ctax_class,Ctax_rates: TClientDataSet;
begin
 Cproducts:=TClientDataSet.Create(nil);
 Ctax_class:=TClientDataSet.Create(nil);
 Ctax_rates:=TClientDataSet.Create(nil);
 try
  Cproducts.CloneCursor(products, True);
  Ctax_class.CloneCursor(tax_class, True);
  Ctax_rates.CloneCursor(tax_rates, True);
  if Cproducts.Locate('products_model',Model,[]) then begin
   if Ctax_class.Locate('tax_class_id',Cproducts.FieldValues['products_tax_class_id'],[]) then begin
    if Ctax_rates.Locate('tax_class_id;tax_zone_id',vararrayof([Cproducts.FieldValues['products_tax_class_id'],18]),[]) then begin
     Result:=round(PriceTTC/(1+(Ctax_rates.FieldValues['tax_rate']/100))*1000)/1000;
    end else   messagedlg('Configuration TVA non Valide',mtwarning,[mbok],0);
   end else messagedlg('Configuration TVA non Valide',mtwarning,[mbok],0);
  end;
 finally
  Cproducts.free;
  CTax_Class.free;
  CTax_Rates.free;
 end;
end;

function TRemoteDB.GetPriceTTC(Model: string; PriceHT: double): double;
var
 Cproducts,Ctax_class,Ctax_rates: TClientDataSet;
begin
 Cproducts:=TClientDataSet.Create(nil);
 Ctax_class:=TClientDataSet.Create(nil);
 Ctax_rates:=TClientDataSet.Create(nil);
 try
  Cproducts.CloneCursor(products, True);
  Ctax_class.CloneCursor(tax_class, True);
  Ctax_rates.CloneCursor(tax_rates, True);
  if Cproducts.Locate('products_model',Model,[]) then begin
   if Ctax_class.Locate('tax_class_id',Cproducts.FieldValues['products_tax_class_id'],[]) then begin
    if Ctax_rates.Locate('tax_class_id;tax_zone_id',vararrayof([Cproducts.FieldValues['products_tax_class_id'],18]),[]) then begin
     Result:=round(PriceHT*(1+(Ctax_rates.FieldValues['tax_rate']/100))*1000)/1000;
    end else   messagedlg('Configuration TVA non Valide',mtwarning,[mbok],0);
   end else messagedlg('Configuration TVA non Valide',mtwarning,[mbok],0);
  end;
 finally
  Cproducts.free;
  CTax_Class.free;
  CTax_Rates.free;
 end;
end;

procedure TRemoteDB.Invoices_itemsCalcFields(DataSet: TDataSet);
begin
 Dataset.FieldByName('invoices_items_PTOTHT').Value:=Dataset.fieldByName('invoices_items_quantity').Value*Dataset.fieldByName('invoices_items_price_catalog').Value;
 Dataset.FieldByName('invoices_items_PTOTTVA').Value:=Dataset.fieldByName('invoices_items_quantity').Value*Dataset.fieldByName('invoices_items_price_TVA').Value;
 Dataset.FieldByName('invoices_items_PTOTTTC').Value:=Dataset.fieldByName('invoices_items_PTOTHT').Value+Dataset.fieldByName('invoices_items_PTOTTVA').Value;
end;

function TRemoteDB.GetChildCategories(Category_id: integer): catarray;
var
 Cat:TclientDataset;
 Child:catarray;
 i:integer;
begin
 Cat:=TClientDataSet.Create(nil);
 Try
 i:=(Length(Result))+1;
 SetLength(Result,i);
 Result[High(Result)]:=category_id;
 Cat.CloneCursor(Categories,True);
 Cat.Filter:='parent_id = '+inttostr(category_id);
 Cat.Filtered:=True;
 Cat.First;
 While not Cat.Eof do begin
  i:=(Length(Result))+1;
  SetLength(Result,i);
  Result[High(Result)]:=Cat.fieldbyname('categories_id').AsInteger;
  Child:=GetChildCategories(Cat.fieldbyname('categories_id').AsInteger);
  For i := Low(Child) to high(Child) do begin
   SetLength(Result,High(Result)+1);
   Result[High(Result)]:=Child[i];
  end;
  Cat.Next;
 end
 finally
  Cat.Free
 end;
end;

procedure TRemoteDB.DPExpensesBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
var
Connection:TSQLConnection;
SQL,ID, LOC:String;
i:integer;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
  case UpdateKind of
    ukModify: begin
      // Update table customers
      SQL := '';
      for i:=0 to DeltaDS.FieldCount-1 do begin
       if not VarIsEmpty(DeltaDS.Fields[i].NewValue) then begin
        if SQL <> '' then SQL := SQL + ', ';
          SQL := SQL + Format(DeltaDS.Fields[i].FieldName+' = %s',
            [QuotedStr(vartostr(DeltaDS.Fields[i].NewValue))]);
       end;
      end;
      if SQL <> '' then begin
        LOC := vartostr(DeltaDS.FieldByName('expenses_shop_id').OldValue);
        ID := vartostr(DeltaDS.FieldByName('expenses_id').OldValue);
        SQL := Format('UPDATE netshop_expenses SET %s ' +
          'WHERE (expenses_shop_id = %s) and (expenses_id = %s)', [SQL, LOC, ID]);
        Connection.Execute(SQL, nil, nil);
      end;
      Applied := True;
    end;
    ukDelete: begin
      LOC := vartostr(DeltaDS.FieldByName('expenses_shop_id').OldValue);
      ID := vartostr(DeltaDS.FieldByName('expenses_id').OldValue);
      // Delete from the first table
      SQL := Format('DELETE FROM netshop_expenses WHERE (expenses_shop_id = %s) and (expenses_id = %s)', [LOC,ID]);
      Connection.Execute(SQL, nil, nil);
      Applied:=True
    end;
  end;
end;

procedure TRemoteDB.ExpensesCalcFields(DataSet: TDataSet);
begin
// Dataset.FieldByName('expenses_date_time_display').Value:=Dataset.FieldByName('expenses_date_time').Value;
end;

procedure TRemoteDB.ExpensesNewRecord(DataSet: TDataSet);
begin
 Dataset.FieldByName('expenses_id').Value:=GetNextSubIdDouble(Dataset as TcustomClientDataset, 'expenses_shop_id','expenses_id');
 Dataset.FieldByName('expenses_shop_id').Value:=CONNECTEDSHOP;
 Dataset.FieldByName('expenses_date_time').Value:=Now;
 Dataset.FieldByName('expenses_amount').Value:=0;
end;

function TRemoteDB.CalcDayCahsierSummary(startdate,
  enddate: integer): tdaycashiersummary;
var
    CurrentSaleSubTot, ActualSaleSubTot:Currency;
    VatProcessed,LowMargin:boolean;
    StempIndex,ITempIndex:string;

begin

 STempIndex:=RemoteDB.Sales.IndexName;
 ITempIndex:=RemoteDB.Items_Sold.IndexName;
 RemoteDB.Sales.IndexName:='SalesIXLocationId';
 RemoteDB.Items_Sold.IndexName:='ItemsIXLocationId';
 RemoteDB.Items_Sold.DisableControls;
 RemoteDB.Products.IndexName:='ProductsIXModel';
 RemoteDB.Products.DisableControls;
 RemoteDB.Products.Filtered:=False;

 with Result do begin
  Open:=False;
  New:=0;
  New6:=0;
  New21:=0;
  Invoice6:=0;
  Invoice21:=0;
  Return21:=0;
  Return6:=0;
  SH:=0;
  SHDeposit:=0;
  SHBought:=0;
  NoMargin:=0;
  Service:=0;
  TotalNature:=0;
  Cash:=0;
  BCT:=0;
  Voucher:=0;
  Visa:=0;
  Proton:=0;
  TotalPay:=0;
  Refunds:=0;
  Returns:=0;
  Expenses:=0;
  ExpensesDesc:='';

  ///
  ///  Analyse des Factures
  ///
  RemoteDB.Invoices.Filter:='('+floattostr(startdate)+'< invoices_date_time and invoices_date_time < '+floattostr(enddate+1)+')' ;
  RemoteDB.Invoices.Filtered:=True;
  RemoteDB.Invoices.First;
  while not invoices.eof do begin
    Invoices_items.First;
    while not Invoices_items.Eof do begin
      if Invoices_items.FieldByName('invoices_items_tva_rate').Value=21 then Invoice21:=Invoice21+Invoices_items.FieldByName('invoices_items_PTOTTTC').AsFloat;
      if Invoices_items.FieldByName('invoices_items_tva_rate').Value=6 then Invoice6:=Invoice6+Invoices_items.FieldByName('invoices_items_PTOTTTC').AsFloat;
      Invoices_Items.Next;
    end;
    Invoices.Next;
  end;

  ///
  ///    Analyse Ventes
  ///
  RemoteDB.Sales.Filter:='('+floattostr(startdate)+'< sales_date_time and sales_date_time < '+floattostr(enddate+1)+') and (sales_location = '+inttoSTR(CONNECTEDSHOP)+')' ;
  RemoteDB.Sales.Filtered:=True;
  RemoteDB.Sales.First;
  While Not RemoteDB.Sales.Eof do begin
   Open:=True;
   if (True) then begin
    ///
    /// Analyse des moyens de payment
    ///
    Cash:=Cash+RemoteDB.Salessales_paid_cash.AsFloat;
    Proton:=Proton+RemoteDB.Salessales_paid_Proton.AsFloat;
    BCT:=BCT+RemoteDB.Salessales_paid_BCT.AsFloat;
    Visa:=Visa+RemoteDB.Salessales_paid_Visa.AsFloat;
    Voucher:=Voucher+RemoteDB.Salessales_paid_Voucher.AsFloat;
    TotalPay:=Cash+BCT+Proton+Visa+Voucher;
    RemoteDB.Items_sold.First;
    CurrentSaleSubTot:=0;
    While Not RemoteDB.Items_sold.Eof do begin
     ///
     ///  Analyse de la nature des produits
     ///
     if (RemoteDB.Items_Sold.FieldByName('items_sold_owner_id').Value < 100000) and (RemoteDB.Items_Sold.FieldByName('items_sold_supplier_id').Value < 100000) then begin
        VatProcessed:=False;
        if RemoteDB.Products.Findkey([RemoteDB.items_sold.Fieldbyname('items_sold_model').Value]) then begin

          if RemoteDB.Products.FieldByName('products_promo').asstring<>'True' then LowMargin:=False else LowMargin:=True;

          // Ventilation par TVA
          if RemoteDB.Productsproducts_tax_class_id.Value=1 then begin
            New21:=New21+RemoteDB.items_sold.Fieldbyname('items_sold_price_Stock').Value*RemoteDB.items_sold.Fieldbyname('items_sold_quantity').Value;
            VatProcessed:=True;
          end;
          if RemoteDB.Productsproducts_tax_class_id.Value=2 then begin
            New6:=New6+RemoteDB.items_sold.Fieldbyname('items_sold_price_Stock').Value*RemoteDB.items_sold.Fieldbyname('items_sold_quantity').Value;
            Vatprocessed:=True;
          end;

        end;
        if Not VatProcessed then begin
          New21:=New21+RemoteDB.items_sold.Fieldbyname('items_sold_price_Stock').Value*RemoteDB.items_sold.Fieldbyname('items_sold_quantity').Value;
        end;




        if not lowmargin then begin
          New:=New+RemoteDB.items_sold.Fieldbyname('items_sold_price_Stock').Value*RemoteDB.items_sold.Fieldbyname('items_sold_quantity').Value;
         end else begin
          NoMargin:=NoMargin+RemoteDB.items_sold.Fieldbyname('items_sold_price_Stock').Value*RemoteDB.items_sold.Fieldbyname('items_sold_quantity').Value;
        end;

     end else begin
      SH:=SH+RemoteDB.items_sold.Fieldbyname('items_sold_price_Stock').Value*RemoteDB.items_sold.Fieldbyname('items_sold_quantity').Value;
      if (RemoteDB.Items_Sold.FieldByName('items_sold_owner_id').Value >= 100000) then
       SHDeposit:=SHDeposit+RemoteDB.items_sold.Fieldbyname('items_sold_price_Stock').Value*RemoteDB.items_sold.Fieldbyname('items_sold_quantity').Value;
      if (RemoteDB.Items_Sold.FieldByName('items_sold_owner_id').Value < 100000) and (RemoteDB.Items_Sold.FieldByName('items_sold_supplier_id').Value >= 100000) then
       SHBought:=SHBought+RemoteDB.items_sold.Fieldbyname('items_sold_price_Stock').Value*RemoteDB.items_sold.Fieldbyname('items_sold_quantity').Value;
     end;

     ///
     /// Analyse concordance Montants Items et Sales
     ///
     CurrentSaleSubTot:=CurrentSaleSubTot+RemoteDB.items_sold.Fieldbyname('items_sold_price_Stock').Value*RemoteDB.items_sold.Fieldbyname('items_sold_quantity').Value;
     Application.ProcessMessages;
     RemoteDB.Items_sold.Next;
    end;
   end;
   ActualSaleSubTot:=RemoteDB.Salessales_paid_total.AsFloat;
   if Not(CurrentSaleSubTot = ActualSaleSubTot) then begin
    messagedlg('La Vente '+RemoteDB.Salessales_id.AsString+' pose problème. Sous total produits = '+floattostr(CurrentSaleSubTot)+' <> Total Vente = '+RemoteDB.Salessales_paid_total.AsString,mtwarning,[mbyes,mbNo],0)
   end;
   RemoteDB.Sales.Next;
  end;

  ///
  /// Analyse Retours
  ///
  RemoteDB.Refunds.Filter:='('+floattostr(startdate)+'< refunds_date_time and refunds_date_time < '+floattostr(enddate+1)+') and (refunds_shop_id = '+inttoSTR(CONNECTEDSHOP)+') and (refunds_nature = '+Quotedstr('Retour')+')' ;
  RemoteDB.Refunds.Filtered:=True;
  RemoteDB.Refunds.First;
  VatProcessed:=False;
  While Not RemoteDB.Refunds.Eof do begin
   Open:=True;
        if RemoteDB.Products.Findkey([RemoteDB.Refundsrefunds_items_id.Value]) then begin
          // Ventilation par TVA
          if RemoteDB.Productsproducts_tax_class_id.Value=1 then begin
            Return21:=Return21+RemoteDB.Refundsrefunds_amount.Value;
            VatProcessed:=True;
          end;
          if RemoteDB.Productsproducts_tax_class_id.Value=2 then begin
            Return6:=Return6+RemoteDB.Refundsrefunds_amount.Value;
            Vatprocessed:=True;
          end;

        end;
        if Not VatProcessed then begin
          Return21:=Return21+RemoteDB.Refundsrefunds_amount.Value;
        end;

   Returns:=Returns+RemoteDB.Refundsrefunds_amount.Value;
   RemoteDB.Refunds.Next;
  end;
  RemoteDB.Refunds.Filter:='';
  RemoteDB.Refunds.Filtered:=False;

  ///
  /// Analyse Rembours
  ///
  RemoteDB.Refunds.Filter:='('+floattostr(startdate)+'< refunds_date_time and refunds_date_time < '+floattostr(enddate+1)+') and (refunds_shop_id = '+inttoSTR(CONNECTEDSHOP)+') and (refunds_nature = '+Quotedstr('Retrait')+')' ;
  RemoteDB.Refunds.Filtered:=True;
  RemoteDB.Refunds.First;
  While Not RemoteDB.Refunds.Eof do begin
   Open:=True;
   Refunds:=Refunds-RemoteDB.Refundsrefunds_amount.Value;
   RemoteDB.Refunds.Next;
  end;

  ///
  /// Analyse Achats
  ///
  RemoteDB.Refunds.Filter:='('+floattostr(StartDate)+'< refunds_date_time and refunds_date_time < '+floattostr(enddate+1)+') and (refunds_shop_id = '+inttoSTR(CONNECTEDSHOP)+') and (refunds_nature = '+Quotedstr('Achat')+')' ;
  RemoteDB.Refunds.Filtered:=True;
  RemoteDB.Refunds.First;
  While Not RemoteDB.Refunds.Eof do begin
   Open:=True;
   Refunds:=Refunds+RemoteDB.Refundsrefunds_amount.Value;
   RemoteDB.Refunds.Next;
  end;

  ///
  /// Anayse Dépenses
  ///
  RemoteDB.Expenses.Filter:='('+floattostr(StartDate)+'< expenses_date_time and expenses_date_time < '+floattostr(enddate+1)+') and (expenses_shop_id = '+inttoSTR(CONNECTEDSHOP)+')' ;
  RemoteDB.Expenses.Filtered:=True;
  RemoteDB.Expenses.First;
  While Not RemoteDB.Expenses.Eof do begin
   Open:=True;
   Expenses:=Expenses+RemoteDB.Expensesexpenses_amount.asFloat;
   if ExpensesDesc<>'' then ExpensesDesc:=ExpensesDesc+' - ';
   ExpensesDesc:=ExpensesDesc+RemoteDB.Expensesexpenses_description.AsString;
   RemoteDB.Expenses.Next;
  end;

  TotalNature:=New+Nomargin+SH+Service+Returns;
  TotalPay:=Cash-Refunds+Returns-expenses;
 end;

  RemoteDB.Items_sold.Filter:='';
  RemoteDB.Items_sold.Filtered:=False;
  RemoteDB.Items_sold.IndexName:=ITempIndex;
  RemoteDB.Items_Sold.EnableControls;

  RemoteDB.Sales.Filter:='';
  RemoteDB.Sales.Filtered:=False;
  RemoteDB.Sales.IndexName:=STempIndex;
  RemoteDB.Sales.EnableControls;

  RemoteDB.Refunds.Filter:='';
  RemoteDB.Refunds.Filtered:=False;

  RemoteDB.Products.EnableControls;
end;



function TRemoteDB.CalcInvoiceTVA(TaxClassRate:integer): Double;
begin
 result:=0;
 with RemoteDB.Invoices_items do begin
  First;
  while not eof do begin
   if fieldByName('invoices_items_tva_rate').Value=TaxClassRate then begin
    result:=result+(fieldbyname('invoices_items_price_tva').Value*fieldbyname('invoices_items_quantity').Value);
   end;
   next;
  end;
 end;
end;

function TRemoteDB.CalcInvoiceTVABase(TaxClassRate: integer): Double;
begin
 result:=0;
 with RemoteDB.Invoices_items do begin
  First;
  while not eof do begin
   if fieldByName('invoices_items_tva_rate').Value=TaxClassRate then begin
    result:=result+(fieldbyname('invoices_items_price_catalog').Value*fieldbyname('invoices_items_quantity').Value);
   end;
   next;
  end;
 end;
end;

function TRemoteDB.GetMotherCategory(Category_id: integer): integer;
var
 CloneDS: TClientDataSet;
begin
 CloneDS:=TClientDataSet.Create(nil);
 try
  CloneDS.CloneCursor(Categories, True);
  CloneDS.IndexFieldNames:='categories_id';
  CloneDS.FindKey([Category_id]);
  While not((CloneDS.FieldByName('parent_id').Value=0) or (CloneDS.FieldByName('parent_id').Value=116))  do begin
   CloneDS.FindKey([CloneDS.FieldByName('parent_id').Value]);
  end;
  Result:=CloneDS.FieldByName('categories_id').Value
 finally
  CloneDS.Free;
 end;
end;

function TRemoteDB.GetRootCategory(Category_id: integer): integer;
var
 CloneDS: TClientDataSet;
begin
 CloneDS:=TClientDataSet.Create(nil);
 try
  CloneDS.CloneCursor(Categories, True);
  CloneDS.IndexFieldNames:='categories_id';
  CloneDS.FindKey([Category_id]);
  While not((CloneDS.FieldByName('parent_id').Value=0))  do begin
   CloneDS.FindKey([CloneDS.FieldByName('parent_id').Value]);
  end;
  Result:=CloneDS.FieldByName('categories_id').Value
 finally
  CloneDS.Free;
 end;
end;

procedure TRemoteDB.ProductsRebuildRootCatNames;
Var CatName:String;
begin
 Products.DisableControls;
 Categories.DisableControls;
 Try
 Products.First;
 While Not Products.Eof do begin
  CatName:='';
  if RemoteDB.Categories.Locate('categories_id',RemoteDB.GetMotherCategory(Products.fieldByName('categories_id').Value),[]) then
  begin
   CatName:=RemoteDB.Categoriescategories_name.AsString;
   Products.Edit;
   Products.FieldByName('products_root_category_name').AsString:=CatName;
   Products.Post
  end;
  Products.Next;
 end;
 finally
  Products.EnableControls;
  Categories.EnableControls;
 end;
end;

procedure TRemoteDB.Productscategories_idChange(Sender: TField);
Var CatName:String;
begin
  if RemoteDB.Categories.Locate('categories_id',RemoteDB.GetMotherCategory(Products.fieldByName('categories_id').Value),[]) then
  begin
   CatName:=RemoteDB.Categoriescategories_name.AsString;
//   Products.Edit;
   Products.FieldByName('products_root_category_name').AsString:=CatName;
//   Products.Post
  end;
end;

function TRemoteDB.GetPurchasePrice(ProductModel: string;Margin:Integer):Double;
var Minprice,PriceCat:Double;
    Processed:Boolean;
begin
   MinPrice:=0;
   PriceCat:=0;
   Processed:=False;

   /// Fetch prices from suppliers data
   if Self.SuppliersStock.Locate('Products_model',ProductModel,[locaseinsensitive]) then begin
      // Try Cld
      Self.SuppliersStock.Filter:='suppliers_id=6';
      Self.SuppliersStock.Filtered:=True;
      if Self.SuppliersStock.Locate('Products_model',ProductModel,[locaseinsensitive])  then begin
       Result:=Self.SuppliersStocksuppliers_price.AsFloat;
       Processed:=True;
      end;


      if Not Processed then begin
          // Try others
          Self.SuppliersStock.Filter:='Suppliers_id<>6 and Products_model = '+Quotedstr(ProductModel);
          Self.SuppliersStock.Filtered:=True;
          Self.SuppliersStock.First;
          While not Self.SuppliersStock.Eof do begin
           if Self.SuppliersStocksuppliers_price.AsFloat>0 then
            if MinPrice>Self.SuppliersStocksuppliers_price.AsFloat then MinPrice:=Self.SuppliersStocksuppliers_price.AsFloat;
           Self.SuppliersStock.Next;
          end;
          Result:=MinPrice;
          Processed:=True;
      end;
   end;

   if not Processed then begin
       if Self.Products.FindKey([ProductModel])then begin
        PriceCat:=Self.Productsproducts_price.AsFloat;
       end else begin
        ShowMessage('Product Not Found '+ProductModel);
       end;
       if (((Self.Stockproduct_price_gross.AsFloat = 0) ) or ((Self.Stockproduct_price_gross.AsFloat > MinPrice) and (MinPrice>0))) then begin
        Result:=MinPrice;
       end;
       if ((Result = 0) or ((Self.Stockproduct_price_gross.AsFloat > PriceCat/1.2))) then begin
        Result:=PriceCat/(1+Margin/100);
       end;
   end;


   RemoteDB.SuppliersStock.Filtered:=False;
   RemoteDB.SuppliersStock.Filter:='';
end;

end.

