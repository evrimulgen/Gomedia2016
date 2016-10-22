unit ClientDMunit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, Menus,
  ComCtrls, DBCtrls, Mask, OleCtrls, DBCGrids, DBClient, MConnect,
  SConnect, Provider, FMTBcd, SqlExpr, variants, StrUtils,
  WSDLIntf,
  JvProgressComponent, JvComponentBase,
  DavidUtilsUnit, WideStrings,
  DSCommonServer, DBXMySql, Registry,
  IdExplicitTLSClientServerBase, IdFTP,
  IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, IdTCPConnection, IdTCPClient, IdBaseComponent, IdComponent,
  DbxDevartMySql;

type

  Catarray = array of integer;

  TDayCashierSummary = record
    Open: Boolean;
    New: double;
    New0: double;
    New6: double;
    New21: double;
    Return21: double;
    Return6: double;
    Return0: double;
    Invoice21: double;
    Invoice6: double;
    Invoice0: double;
    SH: double;
    SHDeposit: double;
    SHBought: double;
    SHCostOfBought: double;
    NoMargin: double;
    Service: double;
    TotalNature: double;
    Cash: double;
    BCT: double;
    Voucher: double;
    Visa: double;
    Proton: double;
    TotalPay: double;
    Refunds: double;
    Purchased: double;
    Returns: double;
    Expenses: double;
    ExpensesDesc: string;
  end;

  TRemoteDB = class(TDataModule)
    Tips: TClientDataSet;
    SQLDSRentStock: TSQLDataSet;
    DPRentStock: TDataSetProvider;
    netshop_rent_stock: TClientDataSet;
    RentStockSRC: TDataSource;
    SQLDSRentTransaction: TSQLDataSet;
    DPRentTransaction: TDataSetProvider;
    netshop_rent_transaction: TClientDataSet;
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
    SQLDSRentSchemes: TSQLDataSet;
    DPRentSchemes: TDataSetProvider;
    netshop_rent_schemes: TClientDataSet;
    RentSchemesSRC: TDataSource;
    customerscustomers_id: TIntegerField;
    customerscustomers_gender: TStringField;
    customerscustomers_firstname: TStringField;
    customerscustomers_lastname: TStringField;
    customerscustomers_email_address: TStringField;
    customerscustomers_default_address_id: TIntegerField;
    customerscustomers_telephone: TStringField;
    customerscustomers_fax: TStringField;
    customerscustomers_password: TStringField;
    customerscustomers_points: TIntegerField;
    customerscustomers_nbr: TIntegerField;
    customerscustomers_newsletter: TStringField;
    customerscustomers_TVA: TStringField;
    customerscustomers_identity: TStringField;
    TipsTipsText: TMemoField;
    SQLDSRefundsrefunds_id: TIntegerField;
    SQLDSRefundsrefunds_items_id: TIntegerField;
    SQLDSRefundsrefunds_date_time: TFloatField;
    SQLDSRefundsrefunds_customer_nbr: TIntegerField;
    SQLDSRefundsrefunds_nature: TStringField;
    SQLDSRefundsrefunds_shop_id: TIntegerField;
    netshop_refundsrefunds_id: TIntegerField;
    netshop_refundsrefunds_items_id: TIntegerField;
    netshop_refundsrefunds_date_time: TFloatField;
    netshop_refundsrefunds_customer_nbr: TIntegerField;
    netshop_refundsrefunds_nature: TStringField;
    netshop_refundsrefunds_shop_id: TIntegerField;
    netshop_refundsrefunds_date_time_display: TDateTimeField;
    InvoicesSrc: TDataSource;
    SQLDSInvoices: TSQLDataSet;
    DPInvoices: TDataSetProvider;
    netshop_invoices: TClientDataSet;
    invoices_items_src: TDataSource;
    SQLDSInvoices_Items: TSQLDataSet;
    DPInvoices_items: TDataSetProvider;
    netshop_invoices_items: TClientDataSet;
    netshop_invoices_itemsinvoices_items_id: TIntegerField;
    netshop_invoices_itemsinvoices_items_location: TIntegerField;
    netshop_invoices_itemsinvoices_items_invoice_id: TIntegerField;
    netshop_invoices_itemsinvoices_items_model: TStringField;
    netshop_invoices_itemsinvoices_items_name: TStringField;
    netshop_invoices_itemsinvoices_items_quantity: TIntegerField;
    netshop_invoices_itemsinvoices_items_owner_id: TIntegerField;
    netshop_invoices_itemsinvoices_items_supplier_id: TIntegerField;
    netshop_invoices_itemsinvoices_items_date_in: TStringField;
    netshop_invoices_itemsinvoices_items_refunded: TIntegerField;
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
    netshop_invoices_itemsinvoices_items_PTOTHT: TFloatField;
    netshop_invoices_itemsinvoices_items_PTOTTVA: TFloatField;
    netshop_invoices_itemsinvoices_items_PTOTTTC: TFloatField;
    ExpensesSRC: TDataSource;
    ProgressCreate: TJvProgressComponent;
    ProgressSync: TJvProgressComponent;
    ProgressSave: TJvProgressComponent;
    ProgressCheckPID: TJvProgressComponent;
    customerscustomers_bank_account: TStringField;
    customerscustomers_isTVA: TStringField;
    customerscustomers_issupplier: TStringField;
    customerscustomers_defltpost: TStringField;
    customerscustomers_paycode: TStringField;
    customerscustomers_language_id: TIntegerField;
    SQLDSCountriesToVat: TSQLDataSet;
    DPCountries_To_Vat: TDataSetProvider;
    Countries_To_Vat: TClientDataSet;
    Countries_To_Vatcountries_to_vat_id: TIntegerField;
    Countries_To_Vatcountries_to_vat_iso: TStringField;
    Countries_To_Vatcountries_to_vat_mask: TStringField;
    customerscustomers_htprice: TStringField;
    netshop_transferid: TIntegerField;
    netshop_transferproduct_model: TStringField;
    netshop_transferproduct_owner_id: TIntegerField;
    netshop_transferproduct_origin: TIntegerField;
    netshop_transferproduct_destination: TIntegerField;
    netshop_transferproduct_quantity: TIntegerField;
    netshop_transferproduct_supplier_id: TIntegerField;
    netshop_transferproduct_date_in: TStringField;
    SQLDSAlerts: TSQLDataSet;
    DPAlerts: TDataSetProvider;
    netshop_customers_alerts: TClientDataSet;
    AlertsSRC: TDataSource;
    SQLDSAlertsExt: TSQLDataSet;
    DPAlertsExt: TDataSetProvider;
    AlertsExt: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    AlertsExtSRC: TDataSource;
    AlertsExtcustomers_alerts_products_cat: TStringField;
    customerscustomers_rent_enabled: TStringField;
    SQLDSWarranty: TSQLDataSet;
    DPWarranty: TDataSetProvider;
    netshop_warranty: TClientDataSet;
    WarrantySRC: TDataSource;
    netshop_warrantywarranty_id: TIntegerField;
    netshop_warrantywarranty_validity: TSmallintField;
    netshop_warrantywarranty_description: TStringField;
    Rent_late: TClientDataSet;
    Rent_lateCustomer_Nbr: TIntegerField;
    Rent_lateProduct_Model: TStringField;
    Rent_lateDate_Out: TDateField;
    Rent_lateDate_Due: TDateField;
    Rent_lateOverdue_Days: TIntegerField;
    Rent_lateOverdue_Amont: TCurrencyField;
    RentLateSRC: TDataSource;
    Rent_lateProduct_Name: TStringField;
    SQLDSExpenses: TSQLDataSet;
    DPexpenses: TDataSetProvider;
    netshop_expenses: TClientDataSet;
    ProgressUpdate: TJvProgressComponent;
    netshop_items_solditems_sold_price_stock_tot: TBCDField;
    Productscategories_id: TIntegerField;
    SQLDSAllShops: TSQLDataSet;
    DPAllShops: TDataSetProvider;
    AllShops: TClientDataSet;
    customerscustomers_memo: TMemoField;
    SQLDSRentSchemesrent_scheme_id: TIntegerField;
    SQLDSRentSchemesrent_scheme_name: TStringField;
    SQLDSRentSchemesrent_scheme_description: TStringField;
    SQLDSRentSchemesrent_scheme_base_price: TFloatField;
    SQLDSRentSchemesrent_scheme_extra_price: TFloatField;
    SQLQuery: TSQLDataSet;
    netshop_transferproduct_price_stock: TFMTBCDField;
    netshop_transferproduct_price_gross: TFMTBCDField;
    SQLDSItemsSolditems_sold_price_gross: TFMTBCDField;
    SQLDSItemsSolditems_sold_price_ht: TFMTBCDField;
    SQLDSItemsSolditems_sold_price_catalog: TFMTBCDField;
    SQLDSItemsSolditems_sold_price_stock: TFMTBCDField;
    netshop_items_solditems_sold_price_gross: TFMTBCDField;
    netshop_items_solditems_sold_price_ht: TFMTBCDField;
    netshop_items_solditems_sold_price_catalog: TFMTBCDField;
    netshop_items_solditems_sold_price_stock: TFMTBCDField;
    customerscustomers_credit: TFMTBCDField;
    netshop_invoices_itemsinvoices_items_price_gross: TFMTBCDField;
    netshop_invoices_itemsinvoices_items_price_catalog: TFMTBCDField;
    netshop_invoices_itemsinvoices_items_price_tva: TFMTBCDField;
    netshop_invoices_itemsinvoices_items_tva_rate: TFMTBCDField;
    netshop_invoices_itemsinvoices_items_price_stock: TFMTBCDField;
    Tax_Ratestax_rate: TFMTBCDField;
    netshop_stockid: TIntegerField;
    netshop_stockproduct_model: TStringField;
    netshop_stockproduct_name: TStringField;
    netshop_stockproduct_owner_id: TIntegerField;
    netshop_stockproduct_price_stock: TFMTBCDField;
    netshop_stockproduct_location: TIntegerField;
    netshop_stockproduct_quantity: TIntegerField;
    netshop_stockproduct_supplier_id: TIntegerField;
    netshop_stockproduct_date_in: TStringField;
    netshop_stockproduct_price_gross: TFMTBCDField;
    netshop_stockproduct_isdefect: TIntegerField;
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
    netshop_invoicesinvoices_date_time: TFloatField;
    netshop_invoicesinvoices_paid_cash: TFMTBCDField;
    netshop_invoicesinvoices_paid_bct: TFMTBCDField;
    netshop_invoicesinvoices_paid_proton: TFMTBCDField;
    netshop_invoicesinvoices_paid_visa: TFMTBCDField;
    netshop_invoicesinvoices_paid_voucher: TFMTBCDField;
    netshop_invoicesinvoices_customer_id: TIntegerField;
    netshop_invoicesinvoices_location: TIntegerField;
    netshop_invoicesinvoices_id: TIntegerField;
    netshop_invoicesinvoices_closed: TIntegerField;
    netshop_invoicesinvoices_comments: TMemoField;
    netshop_invoicesinvoices_paid_totalttc: TFloatField;
    netshop_stockproduct_price_gross_total: TFloatField;
    netshop_stockproduct_date_in_display: TDateTimeField;
    netshop_stockproduct_price_stock_total: TFloatField;
    SQLDSExpensesexpenses_id: TIntegerField;
    SQLDSExpensesexpenses_shop_id: TIntegerField;
    SQLDSExpensesexpenses_date_time: TFloatField;
    SQLDSExpensesexpenses_amount: TFMTBCDField;
    SQLDSExpensesexpenses_description: TStringField;
    SQLDSCashClose: TSQLDataSet;
    DPCashClose: TDataSetProvider;
    netshop_cashclose: TClientDataSet;
    SQLDSCashClosecashclose_shopid: TIntegerField;
    SQLDSCashClosecashclose_amountleft: TFMTBCDField;
    SQLDSCashClosecashclose_amountout: TFMTBCDField;
    SQLDSCashClosecashclose_datetime: TFloatField;
    SQLDSCashClosecashclose_operator: TStringField;
    CashCloseSRC: TDataSource;
    Productsproducts_active: TBooleanField;
    SQLUpdateProductsVelocity: TSQLDataSet;
    DPQuery: TDataSetProvider;
    CDSQuery: TClientDataSet;
    Categoriesarchive_id: TIntegerField;
    netshop_invoicesinvoices_date_disp: TDateField;
    InventoryErrorsproduct_model: TStringField;
    InventoryErrorsproduct_owner_id: TIntegerField;
    InventoryErrorsproduct_price_stock: TBCDField;
    InventoryErrorsproduct_location: TIntegerField;
    InventoryErrorsproduct_quantity: TIntegerField;
    InventoryErrorsproduct_supplier_id: TIntegerField;
    InventoryErrorsproduct_date_in: TStringField;
    InventoryErrorsproduct_price_gross: TBCDField;
    InventoryErrorsproduct_name: TStringField;
    Inventoryproduct_model: TStringField;
    Inventoryproduct_owner_id: TIntegerField;
    Inventoryproduct_price_stock: TBCDField;
    Inventoryproduct_location: TIntegerField;
    Inventoryproduct_quantity: TIntegerField;
    Inventoryproduct_supplier_id: TIntegerField;
    Inventoryproduct_date_in: TStringField;
    Inventoryproduct_price_gross: TBCDField;
    Inventoryproduct_name: TStringField;
    Inventoryproduct_price_gross_total: TFloatField;
    customerscustomers_date_added: TDateField;
    customerscustomers_dob: TDateField;
    SQLDSWebOrders: TSQLDataSet;
    DPWebOrders: TDataSetProvider;
    WebOrders: TClientDataSet;
    WebOrdersSRC: TDataSource;
    netshop_transferdate_time: TFloatField;
    SQLDSTransferOut: TSQLDataSet;
    DPTransferOut: TDataSetProvider;
    Transferout: TClientDataSet;
    Transferoutid: TIntegerField;
    Transferoutproduct_model: TStringField;
    Transferoutproduct_owner_id: TIntegerField;
    Transferoutproduct_price_stock: TFMTBCDField;
    Transferoutproduct_origin: TIntegerField;
    Transferoutproduct_destination: TIntegerField;
    Transferoutproduct_quantity: TIntegerField;
    Transferoutproduct_supplier_id: TIntegerField;
    Transferoutproduct_date_in: TStringField;
    Transferoutproduct_price_gross: TFMTBCDField;
    Transferoutdate_time: TFloatField;
    SQLDSExtStock: TSQLDataSet;
    DPExtStock: TDataSetProvider;
    CDSExtStock: TClientDataSet;
    DataSource1: TDataSource;
    CDSExtStockproduct_model: TStringField;
    CDSExtStockproduct_quantity: TIntegerField;
    CDSExtStockproduct_location: TIntegerField;
    CDSExtStockproduct_supplier_id: TIntegerField;
    CDSExtStockproduct_owner_id: TIntegerField;
    CDSExtStockproduct_price_stock: TFMTBCDField;
    SQLDSWebOrdersorders_status_name: TStringField;
    SQLDSWebOrdersproducts_quantity: TIntegerField;
    SQLDSWebOrdersproducts_model: TStringField;
    SQLDSWebOrdersproducts_root_category_name: TStringField;
    SQLDSWebOrdersproducts_name: TStringField;
    SQLDSWebOrdersproducts_price: TFMTBCDField;
    SQLDSWebOrdersorders_id: TIntegerField;
    SQLDSWebOrderscustomers_company: TStringField;
    SQLDSWebOrderscustomers_street_address: TStringField;
    SQLDSWebOrderscustomers_suburb: TStringField;
    SQLDSWebOrderscustomers_city: TStringField;
    SQLDSWebOrderscustomers_postcode: TStringField;
    SQLDSWebOrderscustomers_id: TIntegerField;
    SQLDSWebOrderscustomers_state: TStringField;
    SQLDSWebOrderscustomers_country: TStringField;
    SQLDSWebOrderscustomers_telephone: TStringField;
    SQLDSWebOrderscustomers_email_address: TStringField;
    SQLDSWebOrdersorders_date_finished: TSQLTimeStampField;
    SQLDSWebOrdersdate_purchased: TSQLTimeStampField;
    SQLDSWebOrdersorders_status_id: TIntegerField;
    SQLDSWebOrdersfinal_price: TFMTBCDField;
    SQLDSWebOrdersshop_id: TIntegerField;
    SQLDSWebOrderscustomers_password: TStringField;
    SQLDSWebOrderscustomers_dob: TDateField;
    SQLDSWebOrderscustomers_fax: TStringField;
    SQLDSWebOrderscustomers_gender: TStringField;
    SQLDSWebOrderscustomers_firstname: TStringField;
    SQLDSWebOrderscustomers_lastname: TStringField;
    WebOrdersorders_status_name: TStringField;
    WebOrdersproducts_quantity: TIntegerField;
    WebOrdersproducts_model: TStringField;
    WebOrdersproducts_root_category_name: TStringField;
    WebOrdersproducts_name: TStringField;
    WebOrdersproducts_price: TFMTBCDField;
    WebOrdersorders_id: TIntegerField;
    WebOrderscustomers_company: TStringField;
    WebOrderscustomers_street_address: TStringField;
    WebOrderscustomers_suburb: TStringField;
    WebOrderscustomers_city: TStringField;
    WebOrderscustomers_postcode: TStringField;
    WebOrderscustomers_id: TIntegerField;
    WebOrderscustomers_state: TStringField;
    WebOrderscustomers_country: TStringField;
    WebOrderscustomers_telephone: TStringField;
    WebOrderscustomers_email_address: TStringField;
    WebOrdersorders_date_finished: TSQLTimeStampField;
    WebOrdersdate_purchased: TSQLTimeStampField;
    WebOrdersorders_status_id: TIntegerField;
    WebOrdersfinal_price: TFMTBCDField;
    WebOrdersshop_id: TIntegerField;
    WebOrderscustomers_password: TStringField;
    WebOrderscustomers_dob: TDateField;
    WebOrderscustomers_fax: TStringField;
    WebOrderscustomers_gender: TStringField;
    WebOrderscustomers_firstname: TStringField;
    WebOrderscustomers_lastname: TStringField;
    SQLConnection: TSQLConnection;
    InventoryErrorsproduct_price_gross_total: TCurrencyField;
    netshop_salessales_paid_cash: TFMTBCDField;
    netshop_salessales_paid_bct: TFMTBCDField;
    netshop_salessales_paid_proton: TFMTBCDField;
    netshop_salessales_paid_visa: TFMTBCDField;
    netshop_salessales_paid_voucher: TFMTBCDField;
    netshop_salessql_date_time: TSQLTimeStampField;
    DPOut: TDataSetProvider;
    DPIn: TDataSetProvider;
    CDSOut: TClientDataSet;
    CDSOutid: TIntegerField;
    CDSOutproduct_model: TStringField;
    CDSOutproduct_name: TStringField;
    CDSOutproduct_root_category: TStringField;
    CDSOutproduct_price_stock: TFMTBCDField;
    CDSOutproduct_origin: TIntegerField;
    CDSOutproduct_destination: TIntegerField;
    CDSOutproduct_quantity: TIntegerField;
    CDSOutproduct_supplier_id: TIntegerField;
    CDSOutproduct_owner_id: TIntegerField;
    CDSOutdate_added: TDateField;
    CDSIn: TClientDataSet;
    CDSInid: TIntegerField;
    CDSInproduct_model: TStringField;
    CDSInproduct_name: TStringField;
    CDSInproduct_root_category: TStringField;
    CDSInproduct_price_stock: TFMTBCDField;
    CDSInproduct_origin: TIntegerField;
    CDSInproduct_destination: TIntegerField;
    CDSInproduct_quantity: TIntegerField;
    CDSInproduct_supplier_id: TIntegerField;
    CDSInproduct_owner_id: TIntegerField;
    CDSIndate_added: TDateField;
    DSOut: TDataSource;
    DSIn: TDataSource;
    SQLDataSetIN: TSQLDataSet;
    SQLDataSetOUT: TSQLDataSet;
    DSTransfer: TDataSource;
    IdFTP: TIdFTP;
    customerscustomers_shop_id: TIntegerField;
    customerscustomers_rfid: TStringField;
    ProgressMidSync: TJvProgressComponent;
    netshop_salessales_invoiced: TShortintField;
    SQLDSRentSchemesrent_scheme_base_days: TShortintField;
    SQLDSRentSchemesrent_scheme_default: TShortintField;
    SQLDSRentSchemesrent_scheme_location: TShortintField;
    netshop_rent_schemesrent_scheme_id: TIntegerField;
    netshop_rent_schemesrent_scheme_name: TStringField;
    netshop_rent_schemesrent_scheme_description: TStringField;
    netshop_rent_schemesrent_scheme_base_price: TFloatField;
    netshop_rent_schemesrent_scheme_extra_price: TFloatField;
    netshop_rent_schemesrent_scheme_base_days: TShortintField;
    netshop_rent_schemesrent_scheme_default: TShortintField;
    netshop_rent_schemesrent_scheme_location: TShortintField;
    ProDescFRSRC: TDataSource;
    CDSProDescFR: TClientDataSet;
    SQLDSProDescFR: TSQLDataSet;
    DPProDescFR: TDataSetProvider;
    CDSProDescFRproducts_name: TStringField;
    CDSProDescFRproducts_name_ext: TStringField;
    CDSProDescFRproducts_description: TMemoField;
    CDSProDescFRproducts_bonus: TMemoField;
    ProDescNLSRC: TDataSource;
    CDSProDescNL: TClientDataSet;
    CDSProDescNLproducts_name: TStringField;
    StringField24: TStringField;
    MemoField3: TMemoField;
    MemoField4: TMemoField;
    SQLDSProDescNL: TSQLDataSet;
    DPProDescNL: TDataSetProvider;
    CDSProDescFRlanguage_id: TIntegerField;
    CDSProDescNLlanguage_id: TIntegerField;
    SQLDSQuerries: TSQLDataSet;
    DPQuerries: TDataSetProvider;
    CDSQueries: TClientDataSet;
    SQLDSQuerriesid: TIntegerField;
    SQLDSQuerriesdescription: TStringField;
    CDSQueriesid: TIntegerField;
    CDSQueriesdescription: TStringField;
    QuerySRC: TDataSource;
    SQLDSQuerriessql_query: TMemoField;
    CDSQueriessql_query: TMemoField;
    SQLDSCoupons: TSQLDataSet;
    DPCoupons: TDataSetProvider;
    CDSCoupons: TClientDataSet;
    SQLDSCouponscoupon_code: TStringField;
    SQLDSCouponscoupon_amount: TFMTBCDField;
    SQLDSCouponscoupon_minimum_order: TFMTBCDField;
    SQLDSCouponsrestrict_to_customers: TStringField;
    SQLDSCouponscoupon_active: TStringField;
    SQLDSCouponscoupon_start_date: TSQLTimeStampField;
    SQLDSCouponscoupon_expire_date: TSQLTimeStampField;
    SQLDSCouponscoupon_description: TStringField;
    CDSCouponscoupon_code: TStringField;
    CDSCouponscoupon_amount: TFMTBCDField;
    CDSCouponscoupon_minimum_order: TFMTBCDField;
    CDSCouponsrestrict_to_customers: TStringField;
    CDSCouponscoupon_active: TStringField;
    CDSCouponscoupon_start_date: TSQLTimeStampField;
    CDSCouponscoupon_expire_date: TSQLTimeStampField;
    CDSCouponscoupon_description: TStringField;
    SQLDSCouponscoupon_id: TIntegerField;
    CDSCouponscoupon_id: TIntegerField;
    DSCoupons: TDataSource;
    SQLDSSuppliers: TSQLDataSet;
    netshop_suppliers: TClientDataSet;
    DPSuppliers: TDataSetProvider;
    ProgressClose: TJvProgressComponent;
    netshop_customers_alertscustomers_alerts_customers_nbr: TStringField;
    netshop_customers_alertscustomers_alerts_products_model: TStringField;
    netshop_customers_alertscustomers_alerts_products_name: TStringField;
    netshop_customers_alertscustomers_alerts_products_cat: TStringField;
    netshop_customers_alertscustomers_alerts_date: TFloatField;
    netshop_customers_alertscustomers_alerts_quantity: TIntegerField;
    netshop_customers_alertscustomers_alerts_used: TIntegerField;
    netshop_customers_alertscustomers_alerts_status: TIntegerField;
    netshop_customers_alertscustomers_alerts_attempts: TIntegerField;
    netshop_customers_alertscustomers_alerts_message: TStringField;
    netshop_customers_alertscustomers_alerts_comment: TStringField;
    SQLDSItemsRefundeditems_refunded_id: TIntegerField;
    SQLDSItemsRefundeditems_refunded_refunds_shop_id: TIntegerField;
    SQLDSItemsRefundeditems_refunded_refunds_id: TIntegerField;
    SQLDSItemsRefundeditems_refunded_model: TStringField;
    SQLDSItemsRefundeditems_refunded_name: TStringField;
    SQLDSItemsRefundeditems_refunded_quantity: TIntegerField;
    SQLDSItemsRefundeditems_refunded_price_gross: TFMTBCDField;
    SQLDSItemsRefundeditems_refunded_price_catalog: TFMTBCDField;
    SQLDSItemsRefundeditems_refunded_price_stock: TFMTBCDField;
    SQLDSItemsRefundeditems_refunded_owner_id: TIntegerField;
    SQLDSItemsRefundeditems_refunded_supplier_id: TIntegerField;
    SQLDSItemsRefundeditems_refunded_date_in: TStringField;
    SQLDSItemsRefundeditems_refunded_refunded: TIntegerField;
    netshop_items_refundeditems_refunded_id: TIntegerField;
    netshop_items_refundeditems_refunded_refunds_shop_id: TIntegerField;
    netshop_items_refundeditems_refunded_refunds_id: TIntegerField;
    netshop_items_refundeditems_refunded_model: TStringField;
    netshop_items_refundeditems_refunded_name: TStringField;
    netshop_items_refundeditems_refunded_quantity: TIntegerField;
    netshop_items_refundeditems_refunded_price_gross: TFMTBCDField;
    netshop_items_refundeditems_refunded_price_catalog: TFMTBCDField;
    netshop_items_refundeditems_refunded_price_stock: TFMTBCDField;
    netshop_items_refundeditems_refunded_owner_id: TIntegerField;
    netshop_items_refundeditems_refunded_supplier_id: TIntegerField;
    netshop_items_refundeditems_refunded_date_in: TStringField;
    netshop_items_refundeditems_refunded_refunded: TIntegerField;
    netshop_customers_alertscustomers_alerts_date_disp: TDateTimeField;
    SQLDSInvoices_Itemsinvoices_items_id: TIntegerField;
    SQLDSInvoices_Itemsinvoices_items_location: TIntegerField;
    SQLDSInvoices_Itemsinvoices_items_invoice_id: TIntegerField;
    SQLDSInvoices_Itemsinvoices_items_model: TStringField;
    SQLDSInvoices_Itemsinvoices_items_name: TStringField;
    SQLDSInvoices_Itemsinvoices_items_quantity: TIntegerField;
    SQLDSInvoices_Itemsinvoices_items_owner_id: TIntegerField;
    SQLDSInvoices_Itemsinvoices_items_supplier_id: TIntegerField;
    SQLDSInvoices_Itemsinvoices_items_date_in: TStringField;
    SQLDSInvoices_Itemsinvoices_items_refunded: TIntegerField;
    netshop_customers_alertscustomers_alerts_date_notified: TFloatField;
    netshop_customers_alertsalerts_date_notified_disp: TDateField;
    SQLDSInvoices_Itemsinvoices_items_price_gross: TFMTBCDField;
    SQLDSInvoices_Itemsinvoices_items_price_catalog: TFMTBCDField;
    SQLDSInvoices_Itemsinvoices_items_price_tva: TFMTBCDField;
    SQLDSInvoices_Itemsinvoices_items_tva_rate: TFMTBCDField;
    SQLDSInvoices_Itemsinvoices_items_price_stock: TFMTBCDField;
    SQLDSStockReturned: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField2: TIntegerField;
    FMTBCDField1: TFMTBCDField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    StringField6: TStringField;
    FMTBCDField2: TFMTBCDField;
    IntegerField6: TIntegerField;
    DPStockReturned: TDataSetProvider;
    netshop_stock_returned: TClientDataSet;
    IntegerField7: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField8: TIntegerField;
    FMTBCDField3: TFMTBCDField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    StringField9: TStringField;
    FMTBCDField4: TFMTBCDField;
    IntegerField12: TIntegerField;
    FloatField1: TFloatField;
    DateTimeField1: TDateTimeField;
    FloatField2: TFloatField;
    StockReturnedSRC: TDataSource;
    SQLDSStockReturneddate_returned: TFloatField;
    netshop_stock_returneddate_returned: TFloatField;
    netshop_stock_returneddate_returned_display: TDateTimeField;
    customerscustomers_nationalnbr: TStringField;
    SQLDSActions: TSQLDataSet;
    DPActions: TDataSetProvider;
    CDSActions: TClientDataSet;
    CDSActionsshops_id: TIntegerField;
    CDSActionsdatetime: TSQLTimeStampField;
    CDSActionsaction: TStringField;
    SQLMonitor: TSQLMonitor;
    customerscustomers_newsletter_undeliverable: TIntegerField;
    SQLDSCashClosecashclose_daytasks: TStringField;
    SQLDSItemsSolditems_sold_esd: TStringField;
    netshop_items_solditems_sold_esd: TStringField;
    netshop_cashclosecashclose_shopid: TIntegerField;
    netshop_cashclosecashclose_amountleft: TFMTBCDField;
    netshop_cashclosecashclose_amountout: TFMTBCDField;
    netshop_cashclosecashclose_datetime: TFloatField;
    netshop_cashclosecashclose_operator: TStringField;
    netshop_cashclosecashclose_daytasks: TStringField;
    netshop_cashclosecashclose_datedisp: TDateTimeField;
    SQLDSItemsSolditems_sold_loyalty: TIntegerField;
    netshop_items_solditems_sold_loyalty: TIntegerField;
    customerscustomers_loyalty: TIntegerField;
    SQLDSRefundsrefunds_amount: TFloatField;
    SQLDSRefundsrefunds_signature: TBlobField;
    netshop_refundsrefunds_signature: TBlobField;
    netshop_refundsrefunds_amount: TFloatField;
    Productsproducts_CLD_id: TStringField;
    Productsproducts_quantity: TIntegerField;
    Productsproducts_image: TStringField;
    Productsproducts_price: TFMTBCDField;
    Productsproducts_price_old: TFMTBCDField;
    Productsproducts_price_changed: TSQLTimeStampField;
    Productsproducts_date_added: TSQLTimeStampField;
    Productsproducts_weight: TFMTBCDField;
    Productsproducts_status: TShortintField;
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
    Productsproducts_street_block: TStringField;
    Productsproducts_cldprice: TFMTBCDField;
    Productsproducts_used_price: TFMTBCDField;
    Productsproducts_intername: TStringField;
    Productsproducts_cld_stock: TIntegerField;
    Productsproducts_esd: TIntegerField;
    Productsproducts_points: TFMTBCDField;
    Productsproducts_price_allin: TCurrencyField;
    Productsproducts_id: TFMTBCDField;
    CDSProDescFRproducts_id: TFMTBCDField;
    CDSProDescNLproducts_id: TFMTBCDField;
    Productsproducts_model: TStringField;
    Productsproducts_posa: TIntegerField;
    strngfldSQLDSItemsSolditems_sold_esd_guid: TStringField;
    strngfld_items_solditems_sold_esd_guid: TStringField;
    mfldCDSProDescNLproducts_msgticket: TMemoField;
    mfldCDSProDescFRproducts_msgticket: TMemoField;
    shrtntfld_customers_alertscustomers_alerts_dwnpay: TShortintField;

    procedure netshop_customers_alertsNewRecord(DataSet: TDataSet);
    procedure netshop_customers_alertsCalcFields(DataSet: TDataSet);
    procedure ProductsAfterEdit(DataSet: TDataSet);
    procedure DPItemsSoldBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure netshop_items_soldCalcFields(DataSet: TDataSet);
    procedure ProgressUpdateShow(Sender: TObject);
    procedure netshop_expensesCalcFields(DataSet: TDataSet);
    procedure customersBeforePost(DataSet: TDataSet);
    procedure Address_BookBeforePost(DataSet: TDataSet);
    procedure DPCustomersBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DPSalesBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure netshop_salesAfterOpen(DataSet: TDataSet);
    procedure netshop_rent_stockNewRecord(DataSet: TDataSet);
    procedure netshop_rent_transactionNewRecord(DataSet: TDataSet);
    procedure CarousselNewRecord(DataSet: TDataSet);
    procedure InventoryErrorsCalcFields(DataSet: TDataSet);
    procedure netshop_rent_schemesNewRecord(DataSet: TDataSet);
    procedure netshop_rent_transactionCalcFields(DataSet: TDataSet);
    procedure netshop_rent_stockCalcFields(DataSet: TDataSet);
    procedure netshop_invoicesAfterOpen(DataSet: TDataSet);
    procedure netshop_invoicesNewRecord(DataSet: TDataSet);
    procedure DPInvoicesBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure netshop_invoices_itemsNewRecord(DataSet: TDataSet);
    procedure netshop_invoicesCalcFields(DataSet: TDataSet);
    procedure netshop_invoices_itemsCalcFields(DataSet: TDataSet);
    procedure DPExpensesBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure netshop_expensesNewRecord(DataSet: TDataSet);
    procedure Productscategories_idChange(Sender: TField);
    procedure DPRefundsBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DPAlertsBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DPSuppliersStockBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure DPstockBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure netshop_cashcloseNewRecord(DataSet: TDataSet);
    procedure customerscustomers_email_addressSetText(Sender: TField; const Text: string);
    procedure Productsproducts_activeSetText(Sender: TField; const Text: string);
    procedure DPAddress_bookBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure DPWebOrdersBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure ProgressMidSyncShow(Sender: TObject);
    procedure CDSProDescFRNewRecord(DataSet: TDataSet);
    procedure CDSProDescNLNewRecord(DataSet: TDataSet);
    procedure CDSProDescFRproducts_nameChange(Sender: TField);
    procedure CDSProDescNLproducts_nameChange(Sender: TField);
    procedure CDSProDescNLAfterPost(DataSet: TDataSet);
    procedure CDSProDescFRAfterPost(DataSet: TDataSet);
    procedure GenericAfterPost(DataSet: TDataSet);
    procedure DPProDescFRBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DPProDescNLBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DPCouponsBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure ProgressCloseShow(Sender: TObject);
    procedure DPStockReturnedBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure netshop_stock_returnedCalcFields(DataSet: TDataSet);
    procedure ProductsAfterPost(DataSet: TDataSet);
    procedure CDSActionsNewRecord(DataSet: TDataSet);
    procedure SQLDSCouponsAfterOpen(DataSet: TDataSet);
    procedure netshop_cashcloseCalcFields(DataSet: TDataSet);
    procedure netshop_items_soldBeforePost(DataSet: TDataSet);
    // procedure DSServerClassGetClass(DSServerClass: TDSServerClass;
    // var PersistentClass: TPersistentClass);
    // procedure DSServerClass2GetClass(DSServerClass: TDSServerClass;
    // var PersistentClass: TPersistentClass);
  private
    { Private declarations }
    DBIsUpdating: Boolean;
    FFrom: string;
    FMsg: TStringList;
    FServer: string;
    FSubject: string;
    FTo: string;
    FFilename: string;
    LocalCache: Boolean;

    function GetIsConnected: Boolean;
    function GetDBIsOnDisk: Boolean;
    function GetTodaysDate: string;
    function GetCurrentSalesDate: string;
    function GetNextEan(DataSet: TCustomClientDataSet; const PrimaryKey: string): tbcd;
    function GetNextId(DataSet: TCustomClientDataSet; const PrimaryKey: string): integer;
    function GetNextSubIdDouble(DataSet: TCustomClientDataSet; const MasterKey, PrimaryKey: string): integer;
    function GetNextCustomersId(DataSet: TCustomClientDataSet; const PrimaryKey: string): integer;
    function GetNextSubIdSimple(DataSet: TCustomClientDataSet; const PrimaryKey: string): integer;
    procedure keepconnect;
    function SaveDataset(DataSet: TClientDataSet; backup: Boolean): Boolean;
    function GetDatasetsCount: integer;
    function GetDatasetsAllBrowse: Boolean;
    function IsArchive(Category_id: integer): Boolean;
    function GetLocalCache: Boolean;
    procedure SetLocalCache(const Value: Boolean);
    function GetLoging(key: string): Boolean;
    function GetRootCategoryName(Category_id: integer): string;




  public
    { Public declarations }
    function ChangeCount: Integer;
    function GetRootCategory(Category_id: integer): integer;
    property IsUpdating: Boolean read DBIsUpdating write DBIsUpdating;
    property DatasetsCount: integer read GetDatasetsCount;
    property DatasetsAllBrowse: Boolean read GetDatasetsAllBrowse;
    property IsConnected: Boolean read GetIsConnected;
    property DBIsOnDisk: Boolean read GetDBIsOnDisk;
    function MoveToArchives(Model: string): Boolean;
    function RestoreFromArchives(Model: string): Boolean;
    function IsInArchives(Model: string): Boolean;
    function GetMotherCategory(Category_id: integer): integer;
    function GetPurchasePrice(ProductModel: string; Margin: integer): double;
    function GetChildCategories(Category_id: integer): Catarray;
    function GetStockNew(Model: string): integer;
    function GetStockOcc(Model: string): integer;
    function GetSold(Model: string; days: integer): Tpoint;
    function CheckField(DbName, FieldName: string; Value: Variant): Boolean;
    function GetPriceHT(Model: string; PriceTTC: double): double;
    function GetPriceTTC(Model: string; PriceHT: double): double;
    function CalcDayCahsierSummary(startdate, enddate: integer): TDayCashierSummary;
    function CalcInvoiceTVA(TaxClassRate: integer): double;
    function CalcInvoiceTVABase(TaxClassRate: integer): double;
    procedure CheckExtStock(Model: string; var Ingroup, outgroup: integer);
    procedure UpdateSmsMessage(aSmsMessage: TSmsMessage);
    function GetSmsMessage: TSmsMessage;
    procedure LoadDB;
    procedure Synchronise;
    procedure SynchroniseMin;
    procedure ApplyUpdates;
    procedure DeleteFromStock(product_model: string; product_owner_id, product_supplier_id, quantity: integer);
    procedure DeleteFromTransfer(product_model: string; product_owner_id, product_supplier_id, quantity: integer);
    procedure AddToStock(product_model: string; product_owner_id, product_supplier_id, quantity: integer);
    procedure CheckCategories;
    procedure CheckProductsEan;
    procedure BuildProductsId;
    procedure FreeAlertsTo;
    procedure FreeProductsTo;
    procedure SetProductstoSuppliersStock;
    procedure SetAlertstoCustomers;
    procedure SetItemsToCustomers;
    procedure FreeItemsTo;
    procedure SetStockToCustomers;
    procedure FreeStockto;
    procedure SetItemstoSales;
    procedure setsalestoCustomers;
    procedure FreeSalesTo;
    procedure SetRepairToCustomers;
    procedure FreeRepairTo;
    procedure SetRefundsToCustomers;
    procedure FreeRefundsTo;
    procedure SetCouponsToCustomers;
    procedure FreeCouponsToCustomers;
    procedure FreeItemsRefundedTo;
    procedure SetItemsRefundedtoRefunds;
    procedure SetAddress_bookToCustomers;
    procedure FreeAddress_booktoCustomers;
    procedure SetRentToCustomers;
    procedure FreeRentTo;
    procedure SetInvoicesItemsToInvoices;
    procedure FreeInvoicesItems;
    procedure SetInvoicesToCustomers;
    procedure FreeInvoicesToCustomers;
    procedure SetProductPrice(Price: double);
    procedure SetSupplierPrice(Price: double; SupplierName, Model: string);
    function DBChangeCount: integer;
    function GetWholeSalePrice(Model: string): double;
    function SetAlert(customers_nbr, quantity: integer; Model: string): Boolean;
    function CalcPriceVATIN(Price: double; tax_class_id: integer): double;
    procedure UpdateSyncYears();
    procedure ApplySaleUpdate(Db: Boolean);
    procedure StoreSignBlob(filename,table:string);

  published
    CloneDSCustomers: TClientDataSet;
    CloneDSItems_Sold: TClientDataSet;
    CloneDSAlerts: TClientDataSet;
    CloneDSAlertsSMS: TClientDataSet;
    ProductsSRC: TDataSource;
    ManufacturersSRC: TDataSource;
    Tax_ClassSRC: TDataSource;
    CountriesSRC: TDataSource;
    CategoriesSRC: TDataSource;
    ShopsSRC: TDataSource;
    StockSRC: TDataSource;
    SalesSRC: TDataSource;
    Items_SoldSRC: TDataSource;
    Products: TClientDataSet;
    Manufacturers: TClientDataSet;
    Shops: TClientDataSet;
    Tax_Class: TClientDataSet;
    Countries: TClientDataSet;
    netshop_stock: TClientDataSet;
    Manufacturersmanufacturers_id: TIntegerField;
    Manufacturersmanufacturers_name: TStringField;
    Manufacturersmanufacturers_image: TStringField;
    Manufacturersmanufacturers_url: TStringField;
    Manufacturersmanufacturers_ean_prefix: TStringField;
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
    DPstock: TDataSetProvider;
    DPshops: TDataSetProvider;
    DPtax_class: TDataSetProvider;
    SQLDSCategories: TSQLDataSet;
    SQLDSManufacturers: TSQLDataSet;
    SQLDSShops: TSQLDataSet;
    SQLDSTax_Class: TSQLDataSet;
    SQLDSCountries: TSQLDataSet;
    Tax_Classlast_modified: TSQLTimeStampField;
    Tax_Classdate_added: TSQLTimeStampField;
    SQLDSTransfer: TSQLDataSet;
    DPTransfer: TDataSetProvider;
    netshop_transfer: TClientDataSet;
    SQLDSProducts: TSQLDataSet;
    DPProducts: TDataSetProvider;
    CustomersSRC: TDataSource;
    SQLDSSales: TSQLDataSet;
    DPSales: TDataSetProvider;
    netshop_sales: TClientDataSet;
    netshop_salessales_date_time: TFloatField;
    netshop_salessales_customer_id: TIntegerField;
    netshop_salessales_location: TIntegerField;
    netshop_salessales_id: TIntegerField;
    Inventory: TClientDataSet;
    InventorySRC: TDataSource;
    InventoryErrors: TClientDataSet;
    InventoryErrorsSRC: TDataSource;
    netshop_salessales_date_time_value: TDateTimeField;
    netshop_salessales_paid_total: TCurrencyField;
    netshop_salessales_paid_htva: TCurrencyField;
    netshop_salessales_paid_tva: TCurrencyField;
    SQLDSItemsSold: TSQLDataSet;
    DPItemsSold: TDataSetProvider;
    netshop_items_sold: TClientDataSet;
    netshop_items_solditems_sold_id: TIntegerField;
    netshop_items_solditems_sold_sales_location: TIntegerField;
    netshop_items_solditems_sold_sales_id: TIntegerField;
    netshop_items_solditems_sold_model: TStringField;
    netshop_items_solditems_sold_name: TStringField;
    netshop_items_solditems_sold_quantity: TIntegerField;
    netshop_items_solditems_sold_owner_id: TIntegerField;
    netshop_items_solditems_sold_supplier_id: TIntegerField;
    netshop_items_solditems_sold_date_in: TStringField;
    netshop_items_solditems_refunded: TIntegerField;
    TipsSRC: TDataSource;
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
    netshop_repair: TClientDataSet;
    RepairSRC: TDataSource;
    netshop_repairrepair_shop_id: TIntegerField;
    netshop_repairrepair_id: TIntegerField;
    netshop_repairrepair_customer_nbr: TIntegerField;
    netshop_repairrepair_products_model: TStringField;
    netshop_repairrepair_products_name: TStringField;
    netshop_repairrepair_products_serial: TStringField;
    netshop_repairrepair_products_problem: TStringField;
    netshop_repairrepair_price: TFloatField;
    netshop_repairrepair_fixed: TStringField;
    netshop_repairrepair_returned: TStringField;
    netshop_repairrepair_date_in: TFloatField;
    netshop_repairrepair_date_fixed: TFloatField;
    netshop_repairrepair_date_out: TFloatField;
    netshop_repairrepair_date_in_display: TDateField;
    netshop_repairrepair_date_our_display: TDateField;
    netshop_repairrepair_date_fixed_display: TDateField;
    SQLDSRefunds: TSQLDataSet;
    DPRefunds: TDataSetProvider;
    netshop_refunds: TClientDataSet;
    RefundsSRC: TDataSource;
    SQLDSItemsRefunded: TSQLDataSet;
    DPItemsRefunded: TDataSetProvider;
    netshop_items_refunded: TClientDataSet;
    Items_refunded_SRC: TDataSource;
    // HTML_Template1: THTML_Template;
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
    customers: TClientDataSet;
    procedure CustomersoldNewRecord(DataSet: TDataSet);
    procedure ProductsNewRecord(DataSet: TDataSet);
    procedure Productsmanufacturers_idChange(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure netshop_stockNewRecord(DataSet: TDataSet);
    procedure netshop_items_soldNewRecord(DataSet: TDataSet);
    procedure netshop_salesNewRecord(DataSet: TDataSet);
    procedure ProductsRebuildRootCatNames;
    procedure GeneralReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure ProgressCreateModulebShow(Sender: TObject);
    procedure ProgressSynchronisebShow(Sender: TObject);
    procedure netshop_transferNewRecord(DataSet: TDataSet);
    procedure netshop_salesCalcFields(DataSet: TDataSet);
    procedure ProgressCheckCategoriesbShow(Sender: TObject);
    procedure TimerTestConnectionTimer(Sender: TObject);
    procedure PPricesNewRecord(DataSet: TDataSet);
    procedure netshop_stockCalcFields(DataSet: TDataSet);
    procedure SuppliersStockNewRecord(DataSet: TDataSet);
    procedure InventoryCalcFields(DataSet: TDataSet);
    procedure TimerSaveDBTimer(Sender: TObject);
    procedure netshop_repairNewRecord(DataSet: TDataSet);
    procedure netshop_repairCalcFields(DataSet: TDataSet);
    procedure netshop_refundsNewRecord(DataSet: TDataSet);
    procedure netshop_refundsCalcFields(DataSet: TDataSet);
    procedure ProductsCalcFields(DataSet: TDataSet);
    procedure ProductsAfterInsert(DataSet: TDataSet);
    procedure ProgressCheckPIDShow(Sender: TObject);
    procedure ProgressSaveModuleShow(Sender: TObject);
    procedure Productsproducts_modelChange(Sender: TField);
    procedure DPProductsBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure netshop_items_refundedNewRecord(DataSet: TDataSet);
    procedure Address_BookNewRecord(DataSet: TDataSet);
    property Todaysdate: string read GetTodaysDate;
    property CurrentSalesDate: string read GetCurrentSalesDate;
    property DBLocalCache: Boolean read GetLocalCache write SetLocalCache;

    procedure ChangeEAN(OldModel, NewModel: string);
    function ExecQueryReport(query_id: integer): Boolean;
    procedure FreeDescTo;
    procedure SetDescToProducts;
    procedure FilterAlertsReserved;
    procedure FilterAlertsArrived;
    procedure FilterAlertsNotified;
    procedure FilterAlertsBought;
    procedure FilterAlertsNotBought;
    procedure FilterAlertsAll;
    procedure FilterProductsAll;
    procedure FilterProductsBackCatalogue;
    procedure FilterProductsPreorder;

    procedure AlertsMarkAsNotified;

    procedure ProcessAlerts;
    function CleanPhoneNumber(PhoneNbr: string): string;
    function GetReservedStock(Model: string): integer;
  end;

type
  TShopNumber = 1 .. 100;
  TInShopSet  = set of TShopNumber;
  TOutShopSet = set of TShopNumber;

var
  RemoteDB: TRemoteDB;
  smsLog: TextFile;
  SyncYears: integer;

const

  SOFTCONFIG = 'SMART';

const
  CR                                            = #13;
  LF                                            = #10;
  EOL                                           = CR + LF;
  xmlEOL                                        = EOL;
  ActionStr: array [TReconcileAction] of string = ('Skip', 'Abort', 'Merge', 'Correct', 'Cancel', 'Refresh');
  UpdateKindStr: array [TUpdateKind] of string  = ('Modified', 'Inserted', 'Deleted');
  SCaption                                      = 'Update Error - %s';
  SUnchanged                                    = '<Unchanged>';
  SBinary                                       = '(Binary)';
  SAdt                                          = '(ADT)';
  SArray                                        = '(Array)';
  SFieldName                                    = 'Field Name';
  SOriginal                                     = 'Original Value';
  SConflict                                     = 'Conflicting Value';
  SValue                                        = ' Value';
  SNoData                                       = '<No Records>';
  SNew                                          = 'New';

implementation

uses Threadsunit, GlobalsUnit, ReconcileFRMunit;

var
  ShopsInGroup: TInShopSet;
  ShopsOutGroup: TOutShopSet;

const
  customers_fields: array [0 .. 22] of string = ('customers_id',
    // 'customers_gender',
    'customers_firstname', 'customers_lastname',
    // 'customers_dob',
    'customers_email_address', 'customers_default_address_id', 'customers_telephone', 'customers_fax', 'customers_password', 'customers_credit',
    'customers_points', 'customers_nbr', 'customers_newsletter', 'customers_TVA', 'customers_identity', 'customers_bank_account', 'customers_isTVA',
    'customers_issupplier', 'customers_defltpost', 'customers_paycode', 'customers_language_id', 'customers_rfid', 'customers_shop_id', 'customers_date_added');

  address_book_fields: array [0 .. 10] of string = ('address_book_id', 'customers_id',
    // 'entry_gender',
    'entry_company', 'entry_firstname', 'entry_lastname', 'entry_street_address',
    // 'entry_suburb',
    'entry_postcode', 'entry_city', 'entry_state', 'entry_country_id', 'entry_zone_id');

  products_fields: array [0 .. 27] of string = ('products_model', 'products_id', 'products_quantity', 'products_image', 'products_price', 'products_date_added',
    'products_weight', 'products_status', 'products_tax_class_id', 'manufacturers_id', 'products_promo', 'products_stock_managed', 'products_date_available',
    'products_last_modified', 'products_ordered', 'products_ispreview', 'products_root_category_name', 'products_isobsolete', 'products_warranty_id',
    'products_street_block', 'products_cldprice', 'products_cld_id', 'products_price_old', 'products_price_changed', 'products_used_price', 'products_intername',
    'products_esd', 'products_posa'
    );

  // products_description_fields: array [0..4] of string = (
  // 'products_id',
  // 'language_id',
  // 'products_name',
  // 'products_name_ext',
  // 'products_description',
  // 'products_bonus'
  // 'products_viewed'
  // );

  products_to_categories_fields: array [0 .. 1] of string = ('products_id', 'categories_id');

{$R *.DFM}

function FloatToStrWithDecimalPoint(const Value: Extended; const Format: String = '0.###'): String;
var
  myFormatSettings: TFormatSettings;
begin
  GetLocaleFormatSettings(GetThreadLocale, myFormatSettings);
  myFormatSettings.DecimalSeparator := '.';
  Result := FormatFloat(Format, Value, myFormatSettings);
end;

function TRemoteDB.GetNextCustomersId(DataSet: TCustomClientDataSet; const PrimaryKey: string): integer;
var
  CloneDS: TClientDataSet;
begin
  CloneDS := TClientDataSet.Create(nil);
  try
    CloneDS.CloneCursor(DataSet, True);
    CloneDS.IndexFieldNames := PrimaryKey;
    CloneDS.Filter := FloatToStrF(CONNECTEDSHOP, fffixed, 3, 0) + '00000 < customers_nbr and customers_nbr < ' + FloatToStrF(CONNECTEDSHOP, fffixed, 3, 0)
      + '99999';
    CloneDS.Filtered := True;
    CloneDS.Last;
    if CloneDS.Eof and CloneDS.Bof then
      Result := ((CONNECTEDSHOP) * 100000) + 1
    else
      Result := CloneDS.fieldbyname('customers_nbr').Value + 1;
  finally
    CloneDS.Free;
  end;
end;

function TRemoteDB.GetNextSubIdDouble(DataSet: TCustomClientDataSet; const MasterKey, PrimaryKey: string): integer;
var
  CloneDS: TClientDataSet;
begin
  CloneDS := TClientDataSet.Create(nil);
  try
    CloneDS.CloneCursor(DataSet, True);
    CloneDS.IndexFieldNames := PrimaryKey;
    CloneDS.Filter          := MasterKey + ' = ' + inttostr(CONNECTEDSHOP);
    CloneDS.Filtered        := True;
    CloneDS.Last;
    if CloneDS.Eof and CloneDS.Bof then
      Result := 1
    else
      Result := CloneDS.fieldbyname(PrimaryKey).Value + 1;
  finally
    CloneDS.Free;
  end;
end;

function TRemoteDB.GetNextSubIdSimple(DataSet: TCustomClientDataSet; const PrimaryKey: string): integer;
var
  CloneDS: TClientDataSet;
begin
  CloneDS := TClientDataSet.Create(nil);
  try
    CloneDS.CloneCursor(DataSet, True);
    CloneDS.IndexFieldNames := PrimaryKey;
    CloneDS.Filter          := FloatToStrF(CONNECTEDSHOP, fffixed, 3, 0) + '0000000 < ' + PrimaryKey + ' and ' + PrimaryKey + '< ' +
      FloatToStrF(CONNECTEDSHOP, fffixed, 3, 0) + '9999999';
    CloneDS.Filtered := True;
    CloneDS.Last;
    if CloneDS.Eof and CloneDS.Bof then
      Result := ((CONNECTEDSHOP) * 10000000) + 1
    else
      Result := CloneDS.fieldbyname(PrimaryKey).Value + 1;
  finally
    CloneDS.Free;
  end;
end;

function TRemoteDB.GetNextId(DataSet: TCustomClientDataSet; const PrimaryKey: string): integer;
var
  CloneDS: TClientDataSet;
begin
  CloneDS := TClientDataSet.Create(nil);
  try
    CloneDS.CloneCursor(DataSet, False);
    CloneDS.IndexFieldNames := PrimaryKey;
    CloneDS.First;
    if CloneDS.fieldbyname(PrimaryKey).AsInteger > 0 then
      Result := -1
    else
      Result := CloneDS.fieldbyname(PrimaryKey).AsInteger - 1;
  finally
    CloneDS.Free;
  end;
end;

function TRemoteDB.GetNextEan(DataSet: TCustomClientDataSet; const PrimaryKey: string): tbcd;
var
  CloneDS: TClientDataSet;
  filterlow, filterhigh, LastValue, PID, PRE: string;
  i, CheckSum: integer;
  InterValue: integer;
begin
  CloneDS := TClientDataSet.Create(nil);
  try
    CloneDS.CloneCursor(DataSet, True);
    CloneDS.IndexFieldNames := PrimaryKey;
    filterlow               := '200';
    for i                   := 1 to 3 - Length(inttostr(CONNECTEDSHOP)) do
      filterlow             := filterlow + '0';
    filterlow               := filterlow + inttostr(CONNECTEDSHOP);
    filterhigh              := filterlow + '9999999';
    filterlow               := filterlow + '0000000';
    // Filterhigh:='5425025599999';
    // Filterlow:='5425025590000';

    CloneDS.Filter   := filterlow + ' <  ' + PrimaryKey + ' and ' + PrimaryKey + ' < ' + filterhigh;
    CloneDS.Filtered := True;
    CloneDS.Last;
    if CloneDS.Eof and CloneDS.Bof then
    begin
      CheckSum := ComputeEanCheck(filterlow);
      delete(filterlow, Length(filterlow), 1);
      filterlow := filterlow + inttostr(CheckSum);
      Result    := strtobcd(filterlow);
    end else begin
      LastValue   := BcdtoStr(CloneDS.fieldbyname(PrimaryKey).AsBcd);
      PRE         := MidStr(LastValue, 1, 6);
      PID         := MidStr(LastValue, 7, 6);
      InterValue  := StrToInt(PID) + 1;
      LastValue   := PRE;
      for i       := 1 to 6 - Length(inttostr(InterValue)) do
        LastValue := LastValue + '0';
      LastValue   := LastValue + inttostr(InterValue);
      CheckSum    := ComputeEanCheck(LastValue + '0');
      Result      := strtobcd(LastValue + inttostr(CheckSum));
    end;
  finally
    CloneDS.Free;
  end;
end;

function TRemoteDB.GetReservedStock(Model: string): integer;
var
  CloneDS: TClientDataSet;
  i: integer;
begin
  CloneDS := TClientDataSet.Create(nil);
  try
    CloneDS.CloneCursor(netshop_customers_alerts, True);
    CloneDS.IndexFieldNames := 'customers_alerts_products_model';
    CloneDS.Filter          := '(' + QuotedStr(Model) +
      ' = customers_alerts_products_model) and (customers_alerts_status>0) and (customers_alerts_status<3) and ( customers_alerts_date_notified > ' +
      FloatToStr(round(now) - 7) + ')';
    CloneDS.Filtered := True;
    CloneDS.First;
    if CloneDS.Eof and CloneDS.Bof then
      Result := 0
    else
    begin
      i := 0;
      while not CloneDS.Eof do
      begin
        i := i + CloneDS.fieldbyname('customers_alerts_quantity').AsInteger;
        CloneDS.Next;
      end;
      Result := i;
    end;
  finally
    CloneDS.Free;
  end;
end;

procedure TRemoteDB.DataModuleCreate(Sender: TObject);
var
  Error: Boolean;
begin

  if FloatToStr(0.1) <> '0.1' then
    ShowMessage('Attention le separateur de decimale doit etre mis sur point');

  // Setting up local DB paths & filenames
  ChDir(ExtractFilePath(ParamStr(0)));

  AssignFile(smsLog, 'SmsLog.txt');
  ReWrite(smsLog);

  Error := False;
  if not(DirectoryExists('database')) then
  begin
    CreateDir('database');
    Error := True;
  end;
  if not(DirectoryExists('images')) then
  begin
    CreateDir('images');
    Error := True;
  end;
  if not(DirectoryExists('html')) then
  begin
    CreateDir('html');
    Error := True;
  end;
  if not(DirectoryExists('reports')) then
  begin
    CreateDir('reports');
    Error := True;
  end;
  if not(DirectoryExists('export')) then
  begin
    CreateDir('export');
    Error := True;
  end;
  if not(DirectoryExists('posbank')) then
  begin
    CreateDir('posbank');
  end else begin
    RemoveDir('posbank');
    CreateDir('posbank');
  end;
  ChDir(ExtractFilePath(ParamStr(0)) + '/html');
  if not(DirectoryExists('templates')) then
  begin
    CreateDir('templates');
    Error := True;
  end;
  ChDir(ExtractFilePath(ParamStr(0)) + '/database');
  if not(DirectoryExists('backup')) then
  begin
    CreateDir('backup');
    Error := True;
  end;
  ChDir(ExtractFilePath(ParamStr(0)) + '/images');
  if not(DirectoryExists('products')) then
  begin
    CreateDir('products');
    Error := True;
  end;
  ChDir(ExtractFilePath(ParamStr(0)) + '/images/products');
  if not(DirectoryExists('covers')) then
  begin
    CreateDir('covers');
    Error := True;
  end;
  ChDir(ExtractFilePath(ParamStr(0)) + '/images/products');
  if not(DirectoryExists('screens')) then
  begin
    CreateDir('screens');
    Error := True;
  end;
  ChDir(ExtractFilePath(ParamStr(0)) + '/reports');
  if not(DirectoryExists('invoices')) then
  begin
    CreateDir('invoices');
    Error := True;
  end;
  ChDir(ExtractFilePath(ParamStr(0)) + '/export');
  if not(DirectoryExists('backup')) then
  begin
    CreateDir('backup');
    Error := True;
  end;

  if Error then
    messagedlg('Certains répertoires étaient manquants : structure recréée', mtwarning, [mbok], 0);

  LocalCache := True;

end;

procedure TRemoteDB.DataModuleDestroy(Sender: TObject);
begin
  CloseFile(smsLog);
  if DBOKTOLAUNCH then
  begin
    CloneDSCustomers.Free;
    CloneDSItems_Sold.Free;
    CloneDSAlerts.Free;
    CloneDSAlertsSMS.Free;
    FMsg.Free;
  end;
end;

procedure TRemoteDB.CustomersoldNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('Customers_Nbr').Value             := GetNextCustomersId(DataSet as TCustomClientDataSet, 'Customers_nbr');
  DataSet.fieldbyname('Customers_Id').Value              := DataSet.fieldbyname('Customers_Nbr').Value;
  DataSet.fieldbyname('Customers_Gender').AsString       := 'M';
  DataSet.fieldbyname('Customers_Date_added').AsDateTime := now;
  // Dataset.FieldByName('Customers_dob').AsDateTime:=Now;
  // Dataset.FieldByName('Customers_Zone_Id').AsInteger:=CONNECTEDSHOP;
  DataSet.fieldbyname('Customers_Points').AsInteger      := 0;
  DataSet.fieldbyname('Customers_Credit').AsInteger      := 0;
  DataSet.fieldbyname('Customers_isTVA').AsString        := 'False';
  DataSet.fieldbyname('Customers_htprice').AsString      := 'False';
  DataSet.fieldbyname('Customers_rent_enabled').AsString := 'False';
  DataSet.fieldbyname('Customers_Language_id').AsInteger := 1;
  DataSet.fieldbyname('Customers_shop_id').AsInteger     := CONNECTEDSHOP;
  Address_Book.Append;
  DataSet.fieldbyname('Customers_default_address_id').AsInteger := Address_Book.fieldbyname('address_book_id').AsInteger;
  DataSet.fieldbyname('customers_newsletter_undeliverable').AsInteger := 0;
  DataSet.fieldbyname('customers_loyalty').AsInteger := 0;
  // Address_book.FieldByName('entry_Country_Id').AsInteger:=21;

end;

procedure TRemoteDB.netshop_customers_alertsCalcFields(DataSet: TDataSet);
var
  date, notified, test: Variant;
begin
  date     := round(DataSet.fieldbyname('customers_alerts_date').AsFloat * 10000) / 10000;
  notified := round(DataSet.fieldbyname('customers_alerts_date_notified').AsFloat * 10000) / 10000;
  try
    DataSet.fieldbyname('alerts_date_notified_disp').AsFloat := notified;
    DataSet.fieldbyname('customers_alerts_date_disp').AsFloat := date;
  except

  end;
end;

procedure TRemoteDB.netshop_customers_alertsNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('customers_alerts_date').AsFloat     := now;
  DataSet.fieldbyname('customers_alerts_used').AsFloat     := 0;
  DataSet.fieldbyname('customers_alerts_quantity').AsFloat := 1;
  DataSet.fieldbyname('customers_alerts_attempts').AsFloat := 0;
  DataSet.fieldbyname('customers_alerts_status').AsFloat   := 0;
  DataSet.fieldbyname('customers_alerts_date_notified').AsFloat := 0;
  DataSet.fieldbyname('customers_alerts_dwnpay').AsFloat := 0;
end;

procedure TRemoteDB.Synchronise;
begin
  Categories.Filtered         := False;
  customers.Filtered          := False;
  Products.Filtered           := False;
  netshop_items_sold.Filtered := False;
  Manufacturers.Filtered      := False;
  netshop_sales.Filtered      := False;
  Shops.Filtered              := False;
  netshop_stock.Filtered      := False;
  netshop_suppliers.Filtered  := False;
  Tax_Class.Filtered          := False;
  Countries.Filtered          := False;
  netshop_transfer.Filtered   := False;
  FreeDescTo;
  ProgressSync.Execute;
  SetDescToProducts;
end;

procedure TRemoteDB.SynchroniseMin;
begin
  Categories.Filtered         := False;
  customers.Filtered          := False;
  Products.Filtered           := False;
  netshop_items_sold.Filtered := False;
  Manufacturers.Filtered      := False;
  netshop_sales.Filtered      := False;
  Shops.Filtered              := False;
  netshop_stock.Filtered      := False;
  netshop_suppliers.Filtered  := False;
  Tax_Class.Filtered          := False;
  Countries.Filtered          := False;
  netshop_transfer.Filtered   := False;
  FreeDescTo;
  ProgressMidSync.Execute;
  SetDescToProducts;
end;

procedure TRemoteDB.ApplySaleUpdate(Db: Boolean);
var
  i: integer;
  updatestatus: Boolean;
begin
  try
    updatestatus := IsUpdating;
    if not IsUpdating then
      IsUpdating                := True;

    customers.Filtered          := False;
    netshop_items_sold.Filtered := False;
    netshop_sales.Filtered      := False;
    netshop_stock.Filtered      := False;

    SQLConnection.AutoClone := False;
    SQLConnection.Params.Values['UseUnicode'] := 'False';
    SQLConnection.Open;

    // SaveDataset(Customers,False);
    // SaveDataset(netshop_items_sold,False);
    // SaveDataset(netshop_sales,False);
    // SaveDataset(netshop_stock,False);

    customers.ApplyUpdates(-1);
    netshop_items_sold.ApplyUpdates(-1);
    netshop_sales.ApplyUpdates(-1);
    netshop_stock.ApplyUpdates(-1);
    CDSActions.ApplyUpdates(-1);

    SaveDataset(customers, False);
    SaveDataset(netshop_items_sold, False);
    SaveDataset(netshop_sales, False);
    SaveDataset(netshop_stock, False);
    SaveDataset(CDSActions, False);
  finally
    SQLConnection.Close;
    IsUpdating := updatestatus;
  end;
end;

procedure TRemoteDB.ApplyUpdates;
var
  i: integer;
  updatestatus: Boolean;
begin
  Categories.Filtered         := False;
  customers.Filtered          := False;
  Products.Filtered           := False;
  netshop_items_sold.Filtered := False;
  Manufacturers.Filtered      := False;
  netshop_sales.Filtered      := False;
  Shops.Filtered              := False;
  netshop_stock.Filtered      := False;
  netshop_suppliers.Filtered  := False;
  Tax_Class.Filtered          := False;
  Countries.Filtered          := False;
  netshop_transfer.Filtered   := False;

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
  SQLConnection.AutoClone := False;
  SQLConnection.Open;
  // messagedlg(' '+SQLConnection.Params.Values['user_name']+' '+SQLConnection.Params.Values['database']+' '+SQLConnection.Params.Values['hostname']+' '+SQLConnection.Params.Values['password'],mtwarning,[mbok],0);

  try
    updatestatus := IsUpdating;
    if not IsUpdating then
      IsUpdating := True;

    for i := 0 to self.ComponentCount - 1 do
    begin
      if self.ProgressSync.Cancel then
        exit;
      if ((self.Components[i].ClassType = TClientDataSet) and (self.Components[i].Tag <> -1)) then
      begin
        if TClientDataSet(self.Components[i]).ChangeCount>0 then begin

          SaveDataset(TClientDataSet(self.Components[i]), True);
          with TClientDataSet(self.Components[i]) do
          begin
            try
              // DisableConstraints;
              // DisableControls;
              if TClientDataSet(self.Components[i]).ProviderName <> '' then
              begin
                if ApplyUpdates(-1) = 0 then
                begin
                  // Refresh;
                end;
              end;
            finally
              SaveDataset(TClientDataSet(self.Components[i]), False);
              // EnableConstraints;
              // EnableControls;
              // Close;
            end;
          end;
        end;
      end;
    end;
  finally
    SQLConnection.Close;
    IsUpdating := updatestatus;
  end;
end;

function TRemoteDB.ChangeCount:Integer;
var
  i: integer;

begin
  Result:=0;
    for i := 0 to self.ComponentCount - 1 do begin
      if ((self.Components[i].ClassType = TClientDataSet) and (self.Components[i].Tag <> -1)) then
      begin
        if TClientDataSet(self.Components[i]).ChangeCount>0 then begin
             Result := Result +  TClientDataSet(self.Components[i]).ChangeCount;
        end;
      end;
    end;

end;

procedure TRemoteDB.ProductsNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('Products_date_added').AsDateTime    := trunc(now);
  DataSet.fieldbyname('Products_last_modified').AsDateTime := trunc(now);
  if (userlevel = 1) or (userlevel = 0) then
  begin
    DataSet.fieldbyname('Products_Status').AsInteger := 1;
  end;
  if userlevel = 2 then
  begin
    DataSet.fieldbyname('Products_Status').AsInteger := -CONNECTEDSHOP;
  end;
  DataSet.fieldbyname('Products_Weight').AsInteger       := 150;
  DataSet.fieldbyname('Products_Tax_class_id').AsInteger := 1;
  DataSet.fieldbyname('Products_Quantity').AsInteger     := 1;
  DataSet.fieldbyname('Products_Model').AsInteger        := 1;
  DataSet.fieldbyname('Products_Image').AsString         := 'products/default.gif';
  DataSet.fieldbyname('Products_Stock_Managed').AsString := 'True';
  DataSet.fieldbyname('Products_Promo').AsString         := 'False';
  DataSet.fieldbyname('Products_ordered').AsInteger      := 0;
  DataSet.fieldbyname('Products_ispreview').AsString     := 'False';
  DataSet.fieldbyname('Products_isobsolete').AsString    := 'False';
  DataSet.fieldbyname('Products_street_block').AsString  := 'True';
  DataSet.fieldbyname('Products_warranty_id').AsInteger  := 1;
  DataSet.fieldbyname('Products_cldprice').AsInteger     := 0;
  DataSet.fieldbyname('products_used_price').AsInteger   := 0;
  DataSet.fieldbyname('products_price_old').AsInteger    := 0;
  DataSet.fieldbyname('products_intername').AsString     := 'empty';
  DataSet.fieldbyname('products_cld_stock').AsInteger    := 0;
  DataSet.fieldbyname('products_esd').AsInteger          := 0;
  DataSet.fieldbyname('products_posa').AsInteger          := 0;

end;

procedure TRemoteDB.ProcessAlerts;
begin
end;

procedure TRemoteDB.ProductsAfterEdit(DataSet: TDataSet);
begin
  DataSet.fieldbyname('products_last_modified').AsDateTime := trunc(now);
end;

procedure TRemoteDB.ProductsAfterInsert(DataSet: TDataSet);
begin
end;

procedure TRemoteDB.ProductsAfterPost(DataSet: TDataSet);
begin
  if self.CDSProDescFR.State <> dsBrowse then
    RemoteDB.CDSProDescFR.Post;
  if self.CDSProDescNL.State <> dsBrowse then
    RemoteDB.CDSProDescNL.Post;
  GenericAfterPost(DataSet);
end;

procedure TRemoteDB.netshop_rent_stockNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('rent_stock_id').AsInteger        := GetNextSubIdSimple(DataSet as TCustomClientDataSet, 'rent_stock_id');
  DataSet.fieldbyname('rent_stock_location').AsInteger  := CONNECTEDSHOP;
  DataSet.fieldbyname('rent_stock_date_added').AsFloat  := now;
  DataSet.fieldbyname('rent_stock_last_rent').AsFloat   := 0;
  DataSet.fieldbyname('rent_stock_count').AsInteger     := 0;
  DataSet.fieldbyname('rent_stock_state').AsInteger     := 1;
  DataSet.fieldbyname('rent_stock_condition').AsInteger := 5;
end;

procedure TRemoteDB.netshop_rent_schemesNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('rent_scheme_id').AsInteger       := GetNextSubIdSimple(DataSet as TCustomClientDataSet, 'rent_scheme_id');
  DataSet.fieldbyname('rent_scheme_default').AsInteger  := 0;
  DataSet.fieldbyname('rent_scheme_location').AsInteger := CONNECTEDSHOP;
end;

procedure TRemoteDB.netshop_rent_transactionNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('rent_transaction_id').AsInteger := GetNextSubIdSimple(DataSet as TCustomClientDataSet, 'rent_transaction_id');
  DataSet.fieldbyname('rent_transaction_location').AsInteger := CONNECTEDSHOP;
  DataSet.fieldbyname('rent_transaction_start_date').AsFloat := now;
  DataSet.fieldbyname('rent_transaction_returned').AsInteger := 0;
end;

procedure TRemoteDB.netshop_stockNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('id').AsInteger                  := GetNextSubIdSimple(DataSet as TCustomClientDataSet, 'id');
  DataSet.fieldbyname('Product_Location').AsInteger    := CONNECTEDSHOP;
  DataSet.fieldbyname('Product_price_gross').AsInteger := 0;
  DataSet.fieldbyname('Product_price_stock').AsInteger := 0;
  DataSet.fieldbyname('Product_isdefect').AsInteger    := 0;
  DataSet.fieldbyname('Product_Date_In').AsString      := Formatdatetime('yyyymmdd', now);
end;

procedure TRemoteDB.netshop_stock_returnedCalcFields(DataSet: TDataSet);
begin
  if DataSet.fieldbyname('product_date_in').Value <> null then
    DataSet.fieldbyname('product_date_in_display').Value := OSCToVCLDate(DataSet.fieldbyname('product_date_in').Value);
  DataSet.fieldbyname('date_returned_display').Value     := DataSet.fieldbyname('date_returned').Value;
  if ((DataSet.fieldbyname('product_price_stock').Value <> null) and (DataSet.fieldbyname('product_price_gross').Value <> null) and
    (DataSet.fieldbyname('product_quantity').Value <> null)) then
  begin
    DataSet.fieldbyname('product_price_stock_total').AsFloat := DataSet.fieldbyname('product_quantity').Value *
      DataSet.fieldbyname('product_price_stock').AsFloat;
    DataSet.fieldbyname('product_price_gross_total').AsFloat := DataSet.fieldbyname('product_quantity').Value *
      DataSet.fieldbyname('product_price_gross').AsFloat;
  end;
end;

procedure TRemoteDB.CDSProDescNLproducts_nameChange(Sender: TField);
begin
  if CDSProDescNLproducts_name.AsString = '' then
  begin
    if messagedlg('Voulez vous supprimer la référence NL pour ce produit ?', mtwarning, [mbYes, mbNo], 0) = mrYes then
      CDSProDescNL.delete;
  end;
end;

procedure TRemoteDB.netshop_items_soldBeforePost(DataSet: TDataSet);
begin
  //
end;

procedure TRemoteDB.netshop_items_soldCalcFields(DataSet: TDataSet);
begin
  DataSet.fieldbyname('items_sold_price_stock_tot').Value := DataSet.fieldbyname('items_sold_price_stock').Value *
    DataSet.fieldbyname('items_sold_quantity').Value;
end;

procedure TRemoteDB.netshop_items_soldNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('items_sold_id').AsInteger         := GetNextSubIdSimple(DataSet as TCustomClientDataSet, 'items_sold_id');
  DataSet.fieldbyname('items_sold_sales_location').Value := netshop_sales.fieldbyname('sales_location').Value;
  DataSet.fieldbyname('items_sold_sales_id').Value       := netshop_sales.fieldbyname('sales_id').Value;
  DataSet.fieldbyname('items_refunded').Value            := 0;
  DataSet.fieldbyname('items_sold_esd').AsString         := '';
  DataSet.FieldByName('items_sold_loyalty').AsInteger    := 0;
end;

procedure TRemoteDB.netshop_items_refundedNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('items_refunded_id').AsInteger := GetNextSubIdSimple(DataSet as TCustomClientDataSet, 'items_refunded_id');
  DataSet.fieldbyname('items_refunded_refunds_shop_id').Value := netshop_refunds.fieldbyname('refunds_shop_id').Value;
  DataSet.fieldbyname('items_refunded_refunds_id').Value := netshop_refunds.fieldbyname('refunds_id').Value;
end;

procedure TRemoteDB.netshop_refundsNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('refunds_shop_id').Value   := CONNECTEDSHOP;
  DataSet.fieldbyname('refunds_id').AsInteger    := GetNextSubIdDouble(DataSet as TCustomClientDataSet, 'refunds_shop_id', 'refunds_id');
  DataSet.fieldbyname('refunds_date_time').Value := now;
end;

procedure TRemoteDB.netshop_salesNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('sales_id').Value        := GetNextSubIdDouble(DataSet as TCustomClientDataSet, 'sales_location', 'sales_id');
  DataSet.fieldbyname('sales_location').Value  := CONNECTEDSHOP;
  DataSet.fieldbyname('sales_date_time').Value := now;
  DataSet.fieldbyname('sql_date_time').Value   := now;
  DataSet.fieldbyname('sales_invoiced').Value  := 0;
end;

procedure TRemoteDB.netshop_repairNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('repair_id').Value       := GetNextSubIdDouble(DataSet as TCustomClientDataSet, 'repair_shop_id', 'repair_id');
  DataSet.fieldbyname('repair_shop_id').Value  := CONNECTEDSHOP;
  DataSet.fieldbyname('repair_date_in').Value  := now;
  DataSet.fieldbyname('repair_returned').Value := 'false';
  DataSet.fieldbyname('repair_fixed').Value    := 'false';
  DataSet.fieldbyname('repair_price').Value    := 0;
end;

procedure TRemoteDB.netshop_transferNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('id').AsInteger      := GetNextId(DataSet as TCustomClientDataSet, 'id');
  DataSet.fieldbyname('Date_Time').AsFloat := now;
end;

procedure TRemoteDB.Productsproducts_activeSetText(Sender: TField; const Text: string);
begin
  if Text = 'true' then
    Products.fieldbyname('products_status').Value := True
  else
    Products.fieldbyname('products_status').Value := False;
end;

procedure TRemoteDB.Productsproducts_modelChange(Sender: TField);
begin
  if CheckEan(Products.fieldbyname('Products_Model').AsString) then
  begin
    // if not CheckEan(products.FieldByName('Products_id').AsString) then
    Products.fieldbyname('Products_id').AsBcd := Products.fieldbyname('Products_Model').AsBcd;
  end else begin
    Products.fieldbyname('Products_id').AsBcd := GetNextEan(Products as TCustomClientDataSet, 'Products_Id');
  end;
end;

procedure TRemoteDB.Productsmanufacturers_idChange(Sender: TField);
begin
end;

function VarToString(V: Variant; DataType: TFieldType): string;
const
  BinaryDataTypes: set of TFieldType = [ftBytes, ftVarBytes, ftBlob, ftGraphic .. ftCursor];
begin
  try
    if VarIsClear(V) then
      Result := SUnchanged
    else if DataType in BinaryDataTypes then
      Result := SBinary
    else if DataType in [ftAdt] then
      Result := SAdt
    else if DataType in [ftArray] then
      Result := SArray
    else
      Result := VarToStr(V);
  except
    on E: Exception do
      Result := E.Message;
  end;
end;

procedure TRemoteDB.GeneralReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);

var
  SQL, WHERESTR, GOOD: string;
  i, j: integer;

begin

  if (UpdateKind = ukinsert) and (E.ErrorCode = 1) then
  begin
    SQL      := 'SELECT COUNT(*) AS GOOD FROM ' + DataSet.Name + ' WHERE ';
    WHERESTR := '';
    for i    := 0 to DataSet.FieldCount - 2 do
    begin
      j        := i;
      WHERESTR := WHERESTR + DataSet.Fields[i].FieldName + '=' + QuotedStr(VarToString(DataSet.Fields[i].Value, DataSet.Fields[i].DataType)) + ' AND ';
    end;
    j                    := j + 1;
    WHERESTR             := WHERESTR + DataSet.Fields[i].FieldName + '=' + QuotedStr(VarToString(DataSet.Fields[i].Value, DataSet.Fields[i].DataType)) + '';
    SQL                  := SQL + WHERESTR;
    SQLQuery.CommandText := SQL;
    CDSQuery.Open;
    GOOD := CDSQuery.fieldbyname('GOOD').AsString;
    CDSQuery.Close;
    if GOOD = '1' then
    begin
      SQL                  := 'DELETE FROM ' + DataSet.Name + ' WHERE ' + WHERESTR;
      SQLQuery.CommandText := SQL;
      SQLQuery.ExecSQL;
      ShowMessage('Erreur insertion corrigée automatiquement');
      Action := raRefresh;
    end;
  end else begin
    Action := HandleReconcileError(DataSet, UpdateKind, E);
  end;

end;

/// //
/// //
/// // Apply Updates handling Methods
/// //
/// //
procedure TRemoteDB.keepconnect;
begin
  SQLConnection.Close;
  SQLConnection.Open;
end;

procedure TRemoteDB.LoadDB;
begin
  ChDir(ExtractFilePath(ParamStr(0)));

  IsUpdating := True;

  DBOKTOLAUNCH                              := True;
  SQLConnection.Params.Values['user_name']  := DBUSER;
  SQLConnection.Params.Values['PassWord']   := DBPWD;
  SQLConnection.Params.Values['HostName']   := DBHOSTNAME;
  SQLConnection.Params.Values['Database']   := DbName;
  //SQLConnection.Params.Values['Compressed'] := 'True';
  //SQLConnection.Params.Values['Encrypted']  := 'True';
  SQLConnection.Params.Values['UseUnicode']  := 'False';
  IsUpdating                                := False;

  ProgressCreate.Execute;

  //
  // Build Shop Lists
  //
  self.AllShops.Filter   := 'shops_group_id = ' + inttostr(SHOPGROUPID);
  self.AllShops.Filtered := True;
  ShopsInGroup           := [];
  self.AllShops.First;
  while not AllShops.Eof do
  begin
    ShopsInGroup := ShopsInGroup + [self.AllShops.fieldbyname('shops_id').AsInteger];
    AllShops.Next;
  end;
  ShopsInGroup := ShopsInGroup + [0];

  self.AllShops.Filter   := 'shops_group_id <> ' + inttostr(SHOPGROUPID);
  self.AllShops.Filtered := True;
  ShopsOutGroup          := [];
  self.AllShops.First;
  while not AllShops.Eof do
  begin
    ShopsOutGroup := ShopsOutGroup + [self.AllShops.fieldbyname('shops_id').AsInteger];
    AllShops.Next;
  end;
  ShopsOutGroup := ShopsOutGroup + [0];

  self.AllShops.Filtered := False;
  self.AllShops.Filter   := '';

  if DBOKTOLAUNCH then
  begin
    // Creating Cloned DS for RFID Handling
    CloneDSCustomers     := TClientDataSet.Create(self);
    CloneDSCustomers.Tag := -1; // Prevent Saving the clone
    CloneDSCustomers.CloneCursor(customers, True);
    CloneDSItems_Sold     := TClientDataSet.Create(self);
    CloneDSItems_Sold.Tag := -1; // Prevent saving the clone
    CloneDSItems_Sold.CloneCursor(netshop_items_sold, True);
    CloneDSAlerts     := TClientDataSet.Create(self);
    CloneDSAlerts.Tag := -1; // Prevent saving the clone
    CloneDSAlerts.CloneCursor(netshop_customers_alerts, True);

    // Creating Cloned DS for SmsThread
    CloneDSAlertsSMS     := TClientDataSet.Create(self);
    CloneDSAlertsSMS.Tag := -1; // Prevent Saving the clone
    CloneDSAlertsSMS.CloneCursor(netshop_customers_alerts, True, False);
    with CloneDSAlertsSMS.IndexDefs.AddIndexDef do
    begin
      name    := 'AttempsIdx';
      Fields  := 'customers_alerts_attempts';
      Options := [ixCaseInsensitive];
    end;
    CloneDSAlertsSMS.IndexName := 'AttempsIdx';

    FMsg := TStringList.Create;
  end;
  IsUpdating := False;
end;

function TRemoteDB.SetAlert(customers_nbr, quantity: integer; Model: string): Boolean;
var
  SetAlertError: Boolean;
  ANotifyServer: TNotifyServer;
label endproc;
begin

  SetAlertError := False;
  if not self.customers.FindKey([customers_nbr]) then
    SetAlertError := True;
  if not self.Products.FindKey([Model]) then
    SetAlertError := True;

  if not SetAlertError then
  begin

    if self.netshop_customers_alerts.locate('customers_alerts_customers_nbr;customers_alerts_products_model',
      Vararrayof([self.customerscustomers_nbr.AsString, self.Productsproducts_model.AsString]), [locaseinsensitive]) then
    begin
      if messagedlg('Client déjà inscrit ? Voulez-vous rajouter la quantité supplémentaire ?', mtwarning, [mbYes, mbNo], 0, mbNo) = mrYes then
      begin
        netshop_customers_alerts.Edit;
        netshop_customers_alerts.fieldbyname('customers_alerts_quantity').Value := netshop_customers_alerts.fieldbyname('customers_alerts_quantity').Value
          + quantity;
        netshop_customers_alerts.Post;
        goto endproc;
      end else begin
        SetAlertError := True;
        goto endproc;
      end;

    end;

    netshop_customers_alerts.Append;
    netshop_customers_alerts.fieldbyname('customers_alerts_customers_nbr').AsString := self.customerscustomers_nbr.AsString;
    netshop_customers_alerts.fieldbyname('customers_alerts_products_model').AsString := self.Productsproducts_model.AsString;
    netshop_customers_alerts.fieldbyname('customers_alerts_products_name').AsString := self.CDSProDescFR.fieldbyname('products_name').AsString;
    netshop_customers_alerts.fieldbyname('customers_alerts_products_cat').AsString := self.Products.FieldByName('products_root_category_name').AsString;
    netshop_customers_alerts.fieldbyname('customers_alerts_quantity').Value := quantity;
    netshop_customers_alerts.Post;

    if UserType = 1 then
    begin
      ANotifyServer := TNotifyServer.Create('smsalert', self.customerscustomers_email_address.AsString, '', NOTIFYURL);
    end;

  end;
endproc:
  Result := SetAlertError;
end;

procedure TRemoteDB.SetAlertstoCustomers;
begin
  with netshop_customers_alerts do
  begin
    if not((MasterSource = CustomersSRC) and (IndexName = 'AlertsIXCustomers') and (MasterFields = 'customers_nbr')) then
    begin
      DisableControls;
      MasterFields    := '';
      IndexFieldNames := '';
      MasterSource    := CustomersSRC;
      IndexName       := 'AlertsIXCustomers';
      MasterFields    := 'customers_nbr';
      EnableControls;
    end;
  end;
end;

procedure TRemoteDB.SetCouponsToCustomers;
begin
with CDSCoupons do
  begin
    if not((MasterSource = CustomersSRC) and (IndexName = 'CouponsIXCustomers') and (MasterFields = 'customers_nbr')) then
    begin
      DisableControls;
      MasterFields    := '';
      IndexFieldNames := '';
      MasterSource    := CustomersSRC;
      IndexName       := 'CouponsIXCustomers';
      MasterFields    := 'customers_nbr';
      EnableControls;
    end;
  end;
end;

procedure TRemoteDB.SetProductstoSuppliersStock;
begin

end;

procedure TRemoteDB.setsalestoCustomers;
begin
  with netshop_sales do
  begin
    if not((MasterSource = CustomersSRC) and (IndexName = 'SalesIXCustomers') and (MasterFields = 'customers_nbr')) then
    begin
      DisableControls;
      MasterFields    := '';
      IndexFieldNames := '';
      MasterSource    := CustomersSRC;
      IndexName       := 'SalesIXCustomers';
      MasterFields    := 'customers_nbr';
      EnableControls;
    end;
  end;
end;

procedure TRemoteDB.SetItemsToCustomers;
begin
  with netshop_items_sold do
  begin
    if not((MasterSource = CustomersSRC) and (IndexName = 'ItemsIXOwnerId') and (MasterFields = 'customers_nbr')) then
    begin
      DisableControls;
      MasterFields    := '';
      IndexFieldNames := '';
      MasterSource    := CustomersSRC;
      IndexName       := 'ItemsIXOwnerId';
      MasterFields    := 'customers_nbr';
      EnableControls;
    end;
  end;
end;

procedure TRemoteDB.SetItemstoSales;
begin
  with netshop_items_sold do
  begin
    if not((MasterSource = SalesSRC) and (IndexName = 'ItemsIXLocationId') and (MasterFields = 'sales_location;sales_id')) then
    begin
      DisableControls;
      MasterFields    := '';
      IndexFieldNames := '';
      MasterSource    := SalesSRC;
      IndexName       := 'ItemsIXLocationId';
      MasterFields    := 'sales_location;sales_id';
      EnableControls;
    end;
  end;
end;

procedure TRemoteDB.SetItemsRefundedtoRefunds;
begin
  with netshop_items_refunded do
  begin
    if not((MasterSource = RefundsSRC) and (IndexName = 'ItemsRefundedIXShopId') and (MasterFields = 'refunds_shop_id;refunds_id')) then
    begin
      DisableControls;
      MasterFields    := '';
      IndexFieldNames := '';
      MasterSource    := RefundsSRC;
      IndexName       := 'ItemsRefundedIXShopId';
      MasterFields    := 'refunds_shop_id;refunds_id';
      EnableControls;
    end;
  end;
end;

procedure TRemoteDB.SetLocalCache(const Value: Boolean);
begin
  LocalCache := Value;
end;

procedure TRemoteDB.SetStockToCustomers;
begin
  with netshop_stock do
  begin
    if not((MasterSource = CustomersSRC) and (IndexName = 'StockIXOwner') and (MasterFields = 'customers_nbr')) then
    begin
      DisableControls;
      MasterFields    := '';
      IndexFieldNames := '';
      MasterSource    := CustomersSRC;
      IndexName       := 'StockIXOwner';
      MasterFields    := 'customers_nbr';
      EnableControls;
    end;
  end;
end;

procedure TRemoteDB.SetSupplierPrice(Price: double; SupplierName, Model: string);
begin
end;

procedure TRemoteDB.SQLDSCouponsAfterOpen(DataSet: TDataSet);
var
  SQL: string;
begin
end;

procedure TRemoteDB.StoreSignBlob(filename,table: string);
var
  blob, myFileStream : TStream;
begin
  if table='refunds' then blob :=  Self.netshop_refunds.CreateBlobStream(Self.netshop_refunds.FieldByName('refunds_signature'), bmWrite);

  try
    blob.Seek(0, soFromBeginning);
    myFileStream := TFileStream.Create(FileName, fmShareDenyWrite);
    try
      blob.CopyFrom(myFileStream, myFileStream.Size) ;
    finally
       myFileStream.Free ;
    end;
  finally
    blob.Free ;
  end;
end;

function TRemoteDB.GetSmsMessage: TSmsMessage;
var
  aSmsMessage: TSmsMessage;
  RecCount, Rec, i: integer;
  Error: Boolean;
  PhoneNumber: string;
begin
  Error                     := False;
  CloneDSAlertsSMS.Filter   := '(customers_alerts_status=1) and (customers_alerts_attempts<5) and (customers_alerts_message<>' + QuotedStr('') + ')';
  CloneDSAlertsSMS.Filtered := True;
  CloneDSAlertsSMS.First;
  if not CloneDSAlertsSMS.Eof and CloneDSAlertsSMS.Bof then
  begin
    if not CloneDSCustomers.locate('customers_nbr', CloneDSAlertsSMS.fieldbyname('customers_alerts_customers_nbr').AsString, [locaseinsensitive]) then
      Error     := True;
    PhoneNumber := CleanPhoneNumber(CloneDSCustomers.fieldbyname('customers_fax').AsString);
    if Length(PhoneNumber) < 11 then
      Error := True;

    if not Error then
    begin
      aSmsMessage.Phone       := PhoneNumber;
      aSmsMessage.Model       := CloneDSAlertsSMS.fieldbyname('customers_alerts_products_model').AsString;
      aSmsMessage.Customer    := CloneDSAlertsSMS.fieldbyname('customers_alerts_customers_nbr').AsString;
      aSmsMessage.Status      := 0;
      aSmsMessage.TextMessage := CloneDSAlertsSMS.fieldbyname('customers_alerts_message').AsString
    end else begin
      CloneDSAlertsSMS.Edit;
      CloneDSAlertsSMS.fieldbyname('customers_alerts_attempts').Value := 99;
      CloneDSAlertsSMS.Post;
      aSmsMessage.Phone       := '';
      aSmsMessage.Model       := '';
      aSmsMessage.Customer    := '';
      aSmsMessage.Status      := -1;
      aSmsMessage.TextMessage := '';
    end;
  end else begin
    aSmsMessage.Phone       := '+32477562636';
    aSmsMessage.Model       := 'MICRO';
    aSmsMessage.Customer    := '101056';
    aSmsMessage.Status      := -1;
    aSmsMessage.TextMessage := 'Vive david Sonnet';
  end;

  RecCount := CloneDSAlertsSMS.RecordCount;

  CloneDSAlertsSMS.Filtered := False;
  CloneDSAlertsSMS.Filter   := '';

  Result := aSmsMessage;
end;

procedure TRemoteDB.UpdateSmsMessage(aSmsMessage: TSmsMessage);
var
  Result: string;
  SentStatus: string;

begin

  if CloneDSAlertsSMS.locate('customers_alerts_products_model;customers_alerts_customers_nbr;customers_alerts_status',
    Vararrayof([aSmsMessage.Model, aSmsMessage.Customer, '1']), [locaseinsensitive]) then
  begin

    if aSmsMessage.Status = 1 then
    begin
      CloneDSAlertsSMS.Edit;
      CloneDSAlertsSMS.fieldbyname('customers_alerts_status').Value := 2;
      CloneDSAlertsSMS.fieldbyname('customers_alerts_attempts').Value := 0;
      CloneDSAlertsSMS.Post;
      if GetLoging('SMSLog') then
      begin
        write(smsLog, aSmsMessage.Response);
        WriteLn(smsLog);
      end;
    end else begin
      CloneDSAlertsSMS.Edit;
      CloneDSAlertsSMS.fieldbyname('customers_alerts_attempts').Value := CloneDSAlerts.fieldbyname('customers_alerts_attempts').Value + 1;
      CloneDSAlertsSMS.Post;
      if GetLoging('SMSLog') then
      begin
        write(smsLog, aSmsMessage.Response);
        WriteLn(smsLog);
      end;
    end;

  end else begin
    ShowMessage('Alerte non reconciliée');

    // Mainform.MemoLog.lines.Add('Alerte non reconciliée : '+aSmsMessage.model + ' - ' + aSmsMessage.customer);
  end;

end;

function TRemoteDB.GetLoging(key: string): Boolean;
var
  ParamReg: TRegistry;
  datareg: string;
begin
  ParamReg         := TRegistry.Create;
  ParamReg.RootKey := HKEY_CURRENT_USER;
  ParamReg.OpenKey(ParamRegPath, True);

  datareg := ParamReg.ReadString(key);

  ParamReg.CloseKey;
  ParamReg.Free;

  if datareg = 'Oui' then
  begin
    Result := True;
  end else begin
    Result := False;
  end;

end;

procedure TRemoteDB.UpdateSyncYears;
var
  ParamReg: TRegistry;
  datareg: string;
begin
  ParamReg         := TRegistry.Create;
  ParamReg.RootKey := HKEY_CURRENT_USER;
  ParamReg.OpenKey(ParamRegPath, True);

  datareg := ParamReg.ReadString('SyncYEARS');
  if trim(datareg) <> '' then
  begin

    if IsStrANumber(trim(datareg)) then
    begin
      SyncYears := StrToInt(trim(datareg))
    end else begin
      SyncYears := 0;
    end;
  end else begin
    messagedlg('Historique de synchronisation non paramétré, veuillez corriger !', mtwarning, [mbok], 0);
    SyncYears := 0;
  end;
  if (SyncYears < 1) or (SyncYears > 5) then
    SyncYears := 1;

  ParamReg.CloseKey;
  ParamReg.Free;
end;

procedure TRemoteDB.SetDescToProducts;
begin
  with CDSProDescFR do
  begin
    if not((MasterSource = ProductsSRC) and (IndexFieldNames = 'products_id') and (MasterFields = 'products_id')) then
    begin
      DisableControls;
      MasterFields    := '';
      IndexFieldNames := '';
      MasterSource    := ProductsSRC;
      IndexFieldNames := 'products_id';
      MasterFields    := 'products_id';
      EnableControls;
    end;
  end;
  with CDSProDescNL do
  begin
    if not((MasterSource = ProductsSRC) and (IndexFieldNames = 'products_id') and (MasterFields = 'products_id')) then
    begin
      DisableControls;
      MasterFields    := '';
      IndexFieldNames := '';
      MasterSource    := ProductsSRC;
      IndexFieldNames := 'products_id';
      MasterFields    := 'products_id';
      EnableControls;
    end;
  end;
end;

procedure TRemoteDB.SetRepairToCustomers;
begin
  with netshop_repair do
  begin
    if not((MasterSource = CustomersSRC) and (IndexName = 'RepairIXCustomer') and (MasterFields = 'customers_nbr')) then
    begin
      DisableControls;
      MasterFields    := '';
      IndexFieldNames := '';
      MasterSource    := CustomersSRC;
      IndexName       := 'RepairIXCustomer';
      MasterFields    := 'customers_nbr';
      EnableControls;
    end;
  end;
end;

procedure TRemoteDB.SetRefundsToCustomers;
begin
  with netshop_refunds do
  begin
    if not((MasterSource = CustomersSRC) and (IndexName = 'RefundsIXCustomer') and (MasterFields = 'customers_nbr')) then
    begin
      DisableControls;
      MasterFields    := '';
      IndexFieldNames := '';
      MasterSource    := CustomersSRC;
      IndexName       := 'RefundsIXCustomer';
      MasterFields    := 'customers_nbr';
      EnableControls;
    end;
  end;
end;

procedure TRemoteDB.SetAddress_bookToCustomers;
begin
  with Address_Book do
  begin
    if not((MasterSource = CustomersSRC) and (IndexName = 'Address_bookIXCustomer') and (MasterFields = 'customers_nbr')) then
    begin
      DisableControls;
      MasterFields    := '';
      IndexFieldNames := '';
      MasterSource    := CustomersSRC;
      IndexName       := 'Address_bookIXCustomer';
      MasterFields    := 'customers_nbr';
      EnableControls;
    end;
  end;
end;

procedure TRemoteDB.SetRentToCustomers;
begin
  with netshop_rent_transaction do
  begin
    if not((MasterSource = CustomersSRC) and (IndexName = 'RentTransactionIXCustomer') and (MasterFields = 'customers_nbr')) then
    begin
      DisableControls;
      MasterFields := '';
      IndexName    := '';
      MasterSource := CustomersSRC;
      IndexName    := 'RentTransactionIXCustomer';
      MasterFields := 'customers_nbr';
      EnableControls;
    end;
  end;
end;

procedure TRemoteDB.SetInvoicesItemsToInvoices;
begin
  with netshop_invoices_items do
  begin
    if not((MasterSource = InvoicesSrc) and (IndexName = 'ItemsIXLocationId') and (MasterFields = 'invoices_location;invoices_id')) then
    begin
      DisableControls;
      MasterFields := '';
      IndexName    := '';
      MasterSource := InvoicesSrc;
      IndexName    := 'ItemsIXLocationId';
      MasterFields := 'invoices_location;invoices_id';
      EnableControls;
    end;
  end;
end;

procedure TRemoteDB.SetInvoicesToCustomers;
begin
  with netshop_invoices do
  begin
    if not((MasterSource = CustomersSRC) and (IndexName = 'InvoicesIXCustomers') and (MasterFields = 'customers_nbr')) then
    begin
      DisableControls;
      MasterFields := '';
      IndexName    := '';
      MasterSource := CustomersSRC;
      IndexName    := 'InvoicesIXCustomers';
      MasterFields := 'customers_nbr';
      EnableControls;
    end;
  end;
end;

procedure TRemoteDB.FreeItemsRefundedTo;
begin
  if not((netshop_items_refunded.MasterSource = nil) and (netshop_items_refunded.MasterFields = '') and
    (netshop_items_refunded.IndexName = 'ItemsRefundedIXShopId')) then
  begin
    netshop_items_refunded.DisableControls;
    netshop_items_refunded.MasterSource := nil;
    netshop_items_refunded.MasterFields := '';
    netshop_items_refunded.IndexName    := 'ItemsRefundedIXShopId';
    netshop_items_refunded.EnableControls;
  end;
end;

procedure TRemoteDB.FreeItemsTo;
begin
  if not((netshop_items_sold.MasterSource = nil) and (netshop_items_sold.MasterFields = '') and (netshop_items_sold.IndexName = 'ItemsIXId')) then
  begin
    netshop_items_sold.DisableControls;
    netshop_items_sold.MasterSource := nil;
    netshop_items_sold.MasterFields := '';
    netshop_items_sold.IndexName    := 'ItemsIXId';
    netshop_items_sold.EnableControls;
  end;
end;


procedure TRemoteDB.FreeDescTo;
begin
  with CDSProDescFR do
  begin
    if not((MasterSource = nil) and (MasterFields = '')) then
    begin
      DisableControls;
      MasterSource := nil;
      MasterFields := '';
      EnableControls;
    end;
  end;
  with CDSProDescNL do
  begin
    if not((MasterSource = nil) and (MasterFields = '')) then
    begin
      DisableControls;
      MasterSource := nil;
      MasterFields := '';
      EnableControls;
    end;
  end;
end;

procedure TRemoteDB.FreeAlertsTo;
begin
  if not((netshop_customers_alerts.MasterSource = nil) and (netshop_customers_alerts.MasterFields = '')) then
  begin
    netshop_customers_alerts.DisableControls;
    netshop_customers_alerts.MasterSource := nil;
    netshop_customers_alerts.MasterFields := '';
    netshop_customers_alerts.EnableControls;
  end;
end;

procedure TRemoteDB.FreeCouponsToCustomers;
begin
 if not((CDSCoupons.MasterSource = nil) and (CDSCoupons.MasterFields = '') and (CDSCoupons.IndexName = '')) then
  begin
    CDSCoupons.DisableControls;
    CDSCoupons.MasterSource := nil;
    CDSCoupons.MasterFields := '';
    CDSCoupons.IndexName    := '';
    CDSCoupons.EnableControls;
  end;
end;

procedure TRemoteDB.FreeStockto;
begin
  if not((netshop_stock.MasterSource = nil) and (netshop_stock.MasterFields = '') and (netshop_stock.IndexName = 'StockIXId')) then
  begin
    netshop_stock.DisableControls;
    netshop_stock.MasterSource := nil;
    netshop_stock.MasterFields := '';
    netshop_stock.IndexName    := 'StockIXId';
    netshop_stock.EnableControls;
  end;
end;

procedure TRemoteDB.FreeSalesTo;
begin
  if not((netshop_sales.MasterSource = nil) and (netshop_sales.MasterFields = '') and (netshop_sales.IndexName = 'SalesIXLocationId')) then
  begin
    netshop_sales.DisableControls;
    netshop_sales.MasterSource := nil;
    netshop_sales.MasterFields := '';
    netshop_sales.IndexName    := 'SalesIXLocationId';
    netshop_sales.EnableControls;
  end;
end;

procedure TRemoteDB.FreeRepairTo;
begin
  if not((netshop_repair.MasterSource = nil) and (netshop_repair.MasterFields = '') and (netshop_repair.IndexName = 'RepairIXId')) then
  begin
    netshop_repair.DisableControls;
    netshop_repair.MasterSource := nil;
    netshop_repair.MasterFields := '';
    netshop_repair.IndexName    := 'RepairIXId';
    netshop_repair.EnableControls;
  end;
end;

procedure TRemoteDB.FreeRefundsTo;
begin
  if not((netshop_refunds.MasterSource = nil) and (netshop_refunds.MasterFields = '') and (netshop_refunds.IndexName = 'RefundsIXShopId')) then
  begin
    netshop_refunds.DisableControls;
    netshop_refunds.MasterSource := nil;
    netshop_refunds.MasterFields := '';
    netshop_refunds.IndexName    := 'RefundsIXShopId';
    netshop_refunds.EnableControls;
  end;
end;

procedure TRemoteDB.FilterAlertsAll;
begin
  RemoteDB.netshop_customers_alerts.Filtered := False;
  RemoteDB.netshop_customers_alerts.Filter   := '';
end;

procedure TRemoteDB.AlertsMarkAsNotified;
var oldfilter : string;
    oldfilterstatus : Boolean;
begin
  oldfilter := RemoteDB.netshop_customers_alerts.Filter;
  oldfilterstatus :=  RemoteDB.netshop_customers_alerts.Filtered;
  RemoteDB.netshop_customers_alerts.Filter   := '(customers_alerts_status=1)';
  RemoteDB.netshop_customers_alerts.Filtered := True;

  RemoteDB.netshop_customers_alerts.First;
  while not RemoteDB.netshop_customers_alerts.eof do begin
    RemoteDB.netshop_customers_alerts.Edit;
    RemoteDB.netshop_customers_alerts.FieldByName('customers_alerts_status').AsInteger := 2;
    RemoteDB.netshop_customers_alerts.Post;
  end;

  RemoteDB.netshop_customers_alerts.Filter   := oldfilter;
  RemoteDB.netshop_customers_alerts.Filtered := oldfilterstatus;
end;
procedure TRemoteDB.FilterAlertsArrived;
begin
  RemoteDB.netshop_customers_alerts.Filter   := '(customers_alerts_status=1)';
  RemoteDB.netshop_customers_alerts.Filtered := True;
end;

procedure TRemoteDB.FilterAlertsBought;
begin
  RemoteDB.netshop_customers_alerts.Filter   := '(customers_alerts_status=3)';
  RemoteDB.netshop_customers_alerts.Filtered := True;
end;

procedure TRemoteDB.FilterAlertsNotBought;
begin
  RemoteDB.netshop_customers_alerts.Filter   := '(customers_alerts_status<3)';
  RemoteDB.netshop_customers_alerts.Filtered := True;
end;

procedure TRemoteDB.FilterAlertsNotified;
begin
  RemoteDB.netshop_customers_alerts.Filter   := '(customers_alerts_status=2)';
  RemoteDB.netshop_customers_alerts.Filtered := True;
end;

procedure TRemoteDB.FilterAlertsReserved;
begin
  RemoteDB.netshop_customers_alerts.Filter   := '(customers_alerts_status=0)';
  RemoteDB.netshop_customers_alerts.Filtered := True;
end;

procedure TRemoteDB.FilterProductsAll;
begin
  Products.Filtered := False;
  Products.Filter   := '';
end;

procedure TRemoteDB.FilterProductsBackCatalogue;
begin
  Products.Filter   := 'products_ispreview=' + QuotedStr('False');
  Products.Filtered := True;
end;

procedure TRemoteDB.FilterProductsPreorder;
begin
  Products.Filter   := 'products_ispreview=' + QuotedStr('True');
  Products.Filtered := True;
end;

procedure TRemoteDB.FreeAddress_booktoCustomers;
begin
  if not((Address_Book.MasterSource = nil) and (Address_Book.MasterFields = '') and (Address_Book.IndexName = 'Address_bookIXId')) then
  begin
    Address_Book.DisableControls;
    Address_Book.MasterSource := nil;
    Address_Book.MasterFields := '';
    Address_Book.IndexName    := 'Address_bookIXId';
    Address_Book.EnableControls;
  end;
end;

procedure TRemoteDB.FreeRentTo;
begin
  with netshop_rent_transaction do
  begin
    DisableControls;
    MasterSource := nil;
    MasterFields := '';
    IndexName    := 'RentTransactionIXId';
    EnableControls;
  end;
end;

procedure TRemoteDB.FreeInvoicesItems;
begin
  with netshop_invoices_items do
  begin
    if not((MasterSource = nil) and (MasterFields = '') and (IndexName = 'ItemsIXId')) then
    begin
      DisableControls;
      MasterSource := nil;
      MasterFields := '';
      IndexName    := 'ItemsIXId';
      EnableControls;
    end;
  end;
end;

procedure TRemoteDB.FreeInvoicesToCustomers;
begin
  with netshop_invoices do
  begin
    if not((MasterSource = nil) and (MasterFields = '') and (IndexName = 'InvoicesIXLocationId')) then
    begin
      DisableControls;
      MasterSource := nil;
      MasterFields := '';
      IndexName    := 'InvoicesIXLocationId';
      EnableControls;
    end;
  end;
end;

procedure TRemoteDB.FreeProductsTo;
begin
  with Products do
  begin
    DisableControls;
    MasterSource := nil;
    MasterFields := '';
    IndexName    := 'ProductsIXModel';
    EnableControls;
  end;
end;

procedure TRemoteDB.netshop_salesCalcFields(DataSet: TDataSet);
begin
  DataSet.fieldbyname('Sales_Paid_Total').AsFloat := DataSet.fieldbyname('Sales_paid_cash').AsFloat + DataSet.fieldbyname('Sales_paid_bct').AsFloat +
    DataSet.fieldbyname('Sales_paid_Proton').AsFloat + DataSet.fieldbyname('Sales_paid_Visa').AsFloat + DataSet.fieldbyname('Sales_paid_Voucher').AsFloat;
  DataSet.fieldbyname('Sales_Paid_Htva').AsFloat := round(DataSet.fieldbyname('Sales_Paid_total').AsFloat / 1.21 * 100) / 100;
  DataSet.fieldbyname('Sales_Paid_tva').AsFloat  := DataSet.fieldbyname('Sales_Paid_Total').AsFloat - DataSet.fieldbyname('Sales_Paid_Htva').AsFloat;
  if DataSet.fieldbyname('Sales_Date_time').Value < 1000000 then
    DataSet.fieldbyname('Sales_Date_time_Value').Value := DataSet.fieldbyname('Sales_Date_time').Value;
end;

procedure TRemoteDB.ChangeEAN(OldModel, NewModel: string);
var
  OldID: Variant;
begin
  try
    if ((self.CDSProDescFR.fieldbyname('Products_id').Value <> null) and (CheckEan(NewModel))) then
    begin
      CDSProDescFR.Edit;
      self.CDSProDescFR.fieldbyname('Products_id').Value := NewModel;
      CDSProDescFR.Post;
    end;
  except
    CDSProDescFR.delete;
  end;

  try
    if ((self.CDSProDescNL.fieldbyname('Products_id').Value <> null) and (CheckEan(NewModel))) then
    begin
      CDSProDescNL.Edit;
      self.CDSProDescNL.fieldbyname('Products_id').Value := NewModel;
      CDSProDescNL.Post;
    end;
  except
    CDSProDescFR.delete;
  end;

  OldID := self.Products.fieldbyname('products_id').Value;

  self.Products.Edit;
  self.Products.fieldbyname('Products_Model').Value := NewModel;
  self.Products.Post;

  SQLUpdateProductsVelocity.CommandText := 'UPDATE netshop_customers_alerts SET customers_alerts_products_model=' + QuotedStr(NewModel) +
    ' WHERE customers_alerts_products_model=' + QuotedStr(OldModel);
  SQLUpdateProductsVelocity.ExecSQL(False);

  SQLUpdateProductsVelocity.CommandText := 'UPDATE orders_products SET products_id=' + self.Products.fieldbyname('products_id').AsString + ' WHERE products_id='
    + VarToStr(OldID);
  SQLUpdateProductsVelocity.ExecSQL(False);

  netshop_customers_alerts.Filter   := 'customers_alerts_products_model=' + QuotedStr(OldModel);
  netshop_customers_alerts.Filtered := True;
  netshop_customers_alerts.First;
  while not self.netshop_customers_alerts.Eof do
  begin
    netshop_customers_alerts.Edit;
    netshop_customers_alerts.fieldbyname('customers_alerts_products_model').Value := NewModel;
    netshop_customers_alerts.Post;
  end;
  self.netshop_customers_alerts.Filtered := False;

end;

procedure TRemoteDB.CheckCategories;
begin
end;

procedure TRemoteDB.CheckExtStock(Model: string; var Ingroup, outgroup: integer);
begin
  self.CDSExtStock.Filter   := 'product_model=' + QuotedStr(Model);
  self.CDSExtStock.Filtered := True;
  Ingroup                   := 0;
  outgroup                  := 0;
  self.CDSExtStock.First;

  while not self.CDSExtStock.Eof do
  begin
    if self.CDSExtStockproduct_location.AsInteger in ShopsInGroup then
      Ingroup := Ingroup + self.CDSExtStockproduct_quantity.AsInteger;
    if self.CDSExtStockproduct_location.AsInteger in ShopsOutGroup then
      outgroup := outgroup + self.CDSExtStockproduct_quantity.AsInteger;
    self.CDSExtStock.Next;
  end;

end;

procedure TRemoteDB.ProgressCheckCategoriesbShow(Sender: TObject);
begin

end;

procedure TRemoteDB.TimerTestConnectionTimer(Sender: TObject);
begin
end;

procedure TRemoteDB.PPricesNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('shopid').Value := CONNECTEDSHOP;
end;

procedure TRemoteDB.netshop_stockCalcFields(DataSet: TDataSet);
begin
  if DataSet.fieldbyname('product_date_in').Value <> null then
    DataSet.fieldbyname('product_date_in_display').Value := OSCToVCLDate(DataSet.fieldbyname('product_date_in').Value);
  if ((DataSet.fieldbyname('product_price_stock').Value <> null) and (DataSet.fieldbyname('product_price_gross').Value <> null) and
    (DataSet.fieldbyname('product_quantity').Value <> null)) then
  begin
    DataSet.fieldbyname('product_price_stock_total').AsFloat := DataSet.fieldbyname('product_quantity').Value *
      DataSet.fieldbyname('product_price_stock').AsFloat;
    DataSet.fieldbyname('product_price_gross_total').AsFloat := DataSet.fieldbyname('product_quantity').Value *
      DataSet.fieldbyname('product_price_gross').AsFloat;
  end;
end;

procedure TRemoteDB.netshop_rent_transactionCalcFields(DataSet: TDataSet);
begin
  DataSet.fieldbyname('rent_transaction_due_display').Value := DataSet.fieldbyname('rent_transaction_due_date').Value;
  DataSet.fieldbyname('rent_transaction_start_display').Value := DataSet.fieldbyname('rent_transaction_start_date').Value;
  if DataSet.fieldbyname('rent_transaction_returned_date').Value <> null then
    DataSet.fieldbyname('rent_transaction_in_display').Value := DataSet.fieldbyname('rent_transaction_returned_date').Value;
end;

procedure TRemoteDB.netshop_rent_stockCalcFields(DataSet: TDataSet);
begin
  DataSet.fieldbyname('rent_stock_date_added_disp').Value := DataSet.fieldbyname('rent_stock_date_added').Value;
  DataSet.fieldbyname('rent_stock_last_rent_disp').Value  := DataSet.fieldbyname('rent_stock_last_rent').Value;
end;

procedure TRemoteDB.SuppliersStockNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('Shop_Group_id').Value := SHOPGROUPID;
end;

procedure TRemoteDB.InventoryCalcFields(DataSet: TDataSet);
begin
  DataSet.fieldbyname('product_price_gross_total').Value := DataSet.fieldbyname('product_quantity').Value * DataSet.fieldbyname('product_price_gross').Value;
end;

procedure TRemoteDB.InventoryErrorsCalcFields(DataSet: TDataSet);
begin
  DataSet.fieldbyname('product_price_gross_total').Value := DataSet.fieldbyname('product_quantity').Value * DataSet.fieldbyname('product_price_gross').Value;
end;

procedure TRemoteDB.netshop_repairCalcFields(DataSet: TDataSet);
begin
  DataSet.fieldbyname('repair_date_in_display').Value    := DataSet.fieldbyname('repair_date_in').Value;
  DataSet.fieldbyname('repair_date_out_display').Value   := DataSet.fieldbyname('repair_date_out').Value;
  DataSet.fieldbyname('repair_date_fixed_display').Value := DataSet.fieldbyname('repair_date_fixed').Value;
end;

procedure TRemoteDB.netshop_refundsCalcFields(DataSet: TDataSet);
begin
  DataSet.fieldbyname('refunds_date_time_display').Value := DataSet.fieldbyname('refunds_date_time').Value;
end;

function TRemoteDB.CalcPriceVATIN(Price: double; tax_class_id: integer): double;
var
  pricein: double;
begin
  if Tax_Zones.Active and Tax_Class.Active and Tax_Rates.Active then
  begin
    Tax_Zones.FindKey([18]);
    Tax_Class.FindKey([self.Products.FieldByName('products_tax_class_id').Value]);
    Tax_Rates.FindKey([Tax_Zones.fieldbyname('Geo_Zone_id').Value, Tax_Class.fieldbyname('Tax_Class_Id').Value]);
    pricein := round(Price * (1 + Tax_Rates.fieldbyname('Tax_Rate').AsFloat / 100) * 100) / 100;
  end;
end;

procedure TRemoteDB.ProductsCalcFields(DataSet: TDataSet);
begin
  // Dataset.FieldByName('products_date_added_display').Value:=OSCToVCLDate(Dataset.Fieldbyname('products_date_added').Value);
  if Tax_Zones.Active and Tax_Class.Active and Tax_Rates.Active then
  begin
    Tax_Zones.FindKey([18]);
    Tax_Class.FindKey([self.Products.FieldByName('products_tax_class_id').Value]);
    Tax_Rates.FindKey([Tax_Zones.fieldbyname('Geo_Zone_id').Value, Tax_Class.fieldbyname('Tax_Class_Id').Value]);
    DataSet.fieldbyname('products_price_allin').Value :=
      round(DataSet.fieldbyname('products_price').AsFloat * (1 + Tax_Rates.fieldbyname('Tax_Rate').AsFloat / 100) * 100) / 100;
    if DataSet.fieldbyname('products_status').Value = True then
      DataSet.fieldbyname('products_active').Value := True
    else
      DataSet.fieldbyname('products_active').Value := False
  end;
  // if RemoteDB.Categories.Active then Dataset.FieldByName('products_root_category_id').Value:=GetMotherCategory(Dataset.Fieldbyname('categories_id').AsInteger);
end;

procedure TRemoteDB.CheckProductsEan;
var
  modelstring: string;
begin
  Products.IndexName := 'ProductsIXModel';
  Products.DisableConstraints;
  Products.DisableControls;
  try
    Products.First;
    while not Products.Eof do
    begin
      modelstring := Products.fieldbyname('products_model').AsString;
      if not ValidateModel(modelstring) then
      begin
        messagedlg('Erreur dans produit :' + CDSProDescFR.fieldbyname('products_name').AsString, mtwarning, [mbok], 0);
      end;
      Products.Next;
      modelstring := '';
    end;
  finally
    Products.EnableConstraints;
    Products.EnableControls;
  end;
end;

function TRemoteDB.CleanPhoneNumber(PhoneNbr: string): string;

var
  i: integer;
begin
  Result := '';
  if Length(PhoneNbr) > 1 then
  begin

    if ((PhoneNbr[1] = '0') or (PhoneNbr[1] = '+')) then
    begin
      if (PhoneNbr[1] = '0') then
        Result := '+32';
      if (PhoneNbr[1] = '+') then
        Result := '+';
    end;
    i := 2;
    while i <= Length(PhoneNbr) do
    begin
      if ((PhoneNbr[i] >= '0') and (PhoneNbr[i] <= '9')) then
        Result := Result + PhoneNbr[i];
      if (PhoneNbr[i] = '(') then
      begin
        while (PhoneNbr[i] <> ')') and (i <= Length(PhoneNbr)) do
          i := i + 1
      end;
      i := i + 1;
    end;

  end
  else
    Result := PhoneNbr;

end;

procedure TRemoteDB.BuildProductsId;
begin
  ProgressCheckPID.Execute;
end;

procedure TRemoteDB.ProgressCheckPIDShow(Sender: TObject);
var
  isnumber: Boolean;
  ProductModel: string;
  counter: integer;
begin
  ProgressCheckPID.InfoLabel        := 'Préparation de la base de données';
  ProgressCheckPID.ProgressPosition := 1;
  ProgressCheckPID.ProgressMax      := Products.RecordCount;
  Application.ProcessMessages;
  Products.IndexName := 'ProductsIXModel';
  Products.DisableConstraints;
  Products.DisableControls;
  try
    Products.First;
    while not Products.Eof do
    begin
      isnumber     := True;
      ProductModel := Products.fieldbyname('Products_Model').AsString;
      for counter  := 1 to Length(ProductModel) do
      begin
        if (ProductModel[counter] < '0') or (ProductModel[counter] > '9') then
          isnumber := False;
      end;
      if isnumber and CheckEan(ProductModel) then
      begin
        Products.Edit;
        Products.fieldbyname('Products_id').AsBcd := Products.fieldbyname('Products_Model').AsBcd;
        Products.Post;
      end else begin
        Products.Edit;
        Products.fieldbyname('Products_id').AsBcd := GetNextEan(Products as TCustomClientDataSet, 'Products_Id');
        Products.Post;
      end;
      Products.Next;
      ProgressCheckPID.ProgressPosition := ProgressCheckPID.ProgressPosition + 1;
      ProgressCheckPID.InfoLabel        := 'Enregistrement N°: ' + Products.fieldbyname('Products_Model').AsString;
      Application.ProcessMessages;
      ProductModel := '';
    end;
  finally
    Products.EnableConstraints;
    Products.EnableControls;
  end;
end;

function TRemoteDB.DBChangeCount: integer;
var
  i: integer;
begin
  Result := 0;
  for i  := 0 to self.ComponentCount - 1 do
  begin
    if ((self.Components[i].ClassType = TClientDataSet) and (self.Components[i].Tag <> -1)) then
    begin
      with TClientDataSet(self.Components[i]) do
      begin
        Result := Result + ChangeCount;
      end;
    end;
  end;
end;

procedure TRemoteDB.DeleteFromStock(product_model: string; product_owner_id, product_supplier_id, quantity: integer);
var
  stocklocated: Boolean;
  internalq: integer;
begin
  internalq := quantity;
  if Products.locate('Products_model', product_model, []) then
  begin
    if Products.fieldbyname('products_stock_managed').Value = 'True' then
      repeat
        if product_supplier_id >= 100000 then
        begin
          netshop_stock.Filter   := 'product_supplier_id = ' + inttostr(product_supplier_id);
          netshop_stock.Filtered := True;
        end else begin
          netshop_stock.Filter   := 'product_supplier_id < 100000';
          netshop_stock.Filtered := True;
        end;

        netshop_stock.IndexName := 'StockIXModelOwner';
        netshop_stock.SetKey;
        netshop_stock.fieldbyname('product_model').AsString := product_model;
        netshop_stock.fieldbyname('product_owner_id').AsInteger := product_owner_id;
        if netshop_stock.GotoKey then
        begin
          if netshop_stock.fieldbyname('Product_Quantity').Value > internalq then
          begin
            netshop_stock.Edit;
            netshop_stock.fieldbyname('Product_Quantity').Value := netshop_stock.fieldbyname('Product_Quantity').Value - internalq;
            internalq := 0;
            netshop_stock.Post;
          end;
          if netshop_stock.fieldbyname('Product_Quantity').Value = internalq then
          begin
            netshop_stock.delete;

            internalq := 0;
          end;
          if (netshop_stock.fieldbyname('Product_Quantity').Value < internalq) and (internalq <> 0) then
          begin
            internalq := internalq - netshop_stock.fieldbyname('Product_Quantity').Value;
            netshop_stock.delete;
          end;
          stocklocated := True;
        end
        else
          stocklocated := False;

      until (internalq = 0) or (not stocklocated);
  end else begin
    ShowMessage('Produit Inexistant');
  end;
  netshop_stock.Filtered := False;
  netshop_stock.Filter   := '';
end;

procedure TRemoteDB.DeleteFromTransfer(product_model: string; product_owner_id, product_supplier_id, quantity: integer);
var
  stocklocated: Boolean;
  internalq: integer;
begin
  internalq := quantity;
  if Products.locate('Products_model', product_model, []) then
  begin
    if Products.fieldbyname('products_stock_managed').Value = 'True' then
      repeat
        if product_supplier_id >= 100000 then
        begin
          netshop_transfer.Filter   := 'product_supplier_id = ' + inttostr(product_supplier_id);
          netshop_transfer.Filtered := True;
        end else begin
          netshop_transfer.Filter   := 'product_supplier_id < 100000';
          netshop_transfer.Filtered := True;
        end;

        netshop_transfer.IndexName := 'TransferIXModelOwner';
        netshop_transfer.SetKey;
        netshop_transfer.fieldbyname('product_model').AsString := product_model;
        netshop_transfer.fieldbyname('product_owner_id').AsInteger := product_owner_id;
        if netshop_transfer.GotoKey then
        begin
          if netshop_transfer.fieldbyname('Product_Quantity').Value > internalq then
          begin
            netshop_transfer.Edit;
            netshop_transfer.fieldbyname('Product_Quantity').Value := netshop_transfer.fieldbyname('Product_Quantity').Value - internalq;
            internalq := 0;
            netshop_transfer.Post;
          end;
          if netshop_transfer.fieldbyname('Product_Quantity').Value = internalq then
          begin
            netshop_transfer.delete;

            internalq := 0;
          end;
          if (netshop_transfer.fieldbyname('Product_Quantity').Value < internalq) and (internalq <> 0) then
          begin
            internalq := internalq - netshop_transfer.fieldbyname('Product_Quantity').Value;
            netshop_transfer.delete;
          end;
          stocklocated := True;
        end
        else
          stocklocated := False;

      until (internalq = 0) or (not stocklocated);
  end else begin
    ShowMessage('Produit Inexistant');
  end;
  netshop_transfer.Filtered := False;
  netshop_transfer.Filter   := '';
end;

procedure TRemoteDB.ProgressSynchronisebShow(Sender: TObject);
var
  i: integer;
  updatestatus: Boolean;
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
  UpdateSyncYears();

  ProgressSaveModuleShow(nil);

  SQLConnection.AutoClone := False;
  // SQLConnection.CloseDataSets;
  SQLConnection.Open;

  ProgressSync.Caption          := 'Synchronisation de la base de données';
  ProgressSync.ProgressMax      := DatasetsCount + 1;
  ProgressSync.ProgressPosition := ProgressSync.Progressmin;

  // messagedlg(' '+SQLConnection.Params.Values['user_name']+' '+SQLConnection.Params.Values['database']+' '+SQLConnection.Params.Values['hostname']+' '+SQLConnection.Params.Values['password'],mtwarning,[mbok],0);

  try
    updatestatus := IsUpdating;
    if not IsUpdating then
      IsUpdating := True;

    for i := 0 to self.ComponentCount - 1 do
    begin
      if self.ProgressSync.Cancel then
        exit;
      if ((self.Components[i].ClassType = TClientDataSet) and (self.Components[i].Tag <> -1)) then
      begin
        ProgressSync.InfoLabel        := 'Mise à jour de la table : ' + self.Components[i].Name;
        ProgressSync.ProgressPosition := ProgressSync.ProgressPosition + 1;
        Application.ProcessMessages;
        SaveDataset(TClientDataSet(self.Components[i]), True);
        with TClientDataSet(self.Components[i]) do
        begin
          try
            DisableConstraints;
            DisableControls;
            if TClientDataSet(self.Components[i]).ProviderName <> '' then
            begin
              if ApplyUpdates(-1) = 0 then
              begin
                Refresh;
              end else begin
                // Forcer le refresh même avec erreurs sur les tables products
                if (self.Components[i].Name = 'Products') or (self.Components[i].Name = 'CDSProDescFR') or (self.Components[i].Name = 'CDSProDescNL') then
                  Refresh;
              end;
            end;
            // except
            // on E : Exception do
            // ShowMessage('Erreur de type ' + E.ClassName+', message : '+E.Message);
          finally
            SaveDataset(TClientDataSet(self.Components[i]), False);
            EnableConstraints;
            EnableControls;
            // Close;
          end;
        end;
      end;
    end;
  finally
    IsUpdating := updatestatus;
    SQLConnection.Close;
  end;
end;

procedure TRemoteDB.ProgressUpdateShow(Sender: TObject);
var
  i: integer;
  updatestatus: Boolean;
begin
  ProgressSync.Caption          := 'Update de la base de données';
  ProgressSync.ProgressMax      := DatasetsCount + 1;
  ProgressSync.ProgressPosition := ProgressSync.Progressmin;

  try
    updatestatus := IsUpdating;
    if not IsUpdating then
      IsUpdating := True;
    for i        := 0 to self.ComponentCount - 1 do
    begin
      if self.ProgressSync.Cancel then
        exit;
      if ((self.Components[i].ClassType = TClientDataSet) and (self.Components[i].Tag <> -1)) then
      begin
        ProgressSync.InfoLabel        := 'Mise à jour de la table : ' + self.Components[i].Name;
        ProgressSync.ProgressPosition := ProgressSync.ProgressPosition + 1;
        Application.ProcessMessages;

        if True then
        begin

          SaveDataset(TClientDataSet(self.Components[i]), True);
          with TClientDataSet(self.Components[i]) do
          begin
            try
              if TClientDataSet(self.Components[i]).ProviderName <> '' then
              begin
                if ApplyUpdates(-1) = 0 then
                begin
                end;
              end;
            finally
              SaveDataset(TClientDataSet(self.Components[i]), False);
            end;
          end;

        end;
      end;
    end;
  finally
    IsUpdating := updatestatus;
  end;
end;

procedure TRemoteDB.ProgressCreateModulebShow(Sender: TObject);
var
  i: integer;
  SQL: string;
  updatestatus: Boolean;
  myFile: TextFile;
  Text: string;
begin

  UpdateSyncYears();
  //
  // Setting Parameters
  //
  SQLDSActions.Params.ParamByName('shopid').Value         := CONNECTEDSHOP;
  SQLDSWebOrders.Params.ParamByName('shopid').Value       := CONNECTEDSHOP;
  SQLDSRentStock.Params.ParamByName('shopid').Value       := CONNECTEDSHOP;
  SQLDSRentTransaction.Params.ParamByName('shopid').Value := CONNECTEDSHOP;
  SQLDSRentSchemes.Params.ParamByName('shopid').Value     := CONNECTEDSHOP;

  SQLDSItemsSold.Params.ParamByName('shopid').Value := CONNECTEDSHOP;

  SQLDSSales.Params.ParamByName('shopid').Value    := CONNECTEDSHOP;
  SQLDSSales.Params.ParamByName('datelimit').Value := trunc(now - ((1 + SyncYears) * 365));

  SQLDSInvoices_Items.Params.ParamByName('shopid').Value := CONNECTEDSHOP;
  // where (invoices_items_location = :shopid) and (((invoices_items_invoice_id >= :invoices_id_min))or(invoices_items_invoice_id = 0))
  SQLDSInvoices.Params.ParamByName('shopid').Value    := CONNECTEDSHOP;
  SQLDSInvoices.Params.ParamByName('datelimit').Value := trunc(now - ((1 + SyncYears) * 365));

  SQLDSStock.Params.ParamByName('shopid').Value         := CONNECTEDSHOP;
  SQLDSStockReturned.Params.ParamByName('shopid').Value := CONNECTEDSHOP;
  SQLDSExtStock.Params.ParamByName('shopid').Value      := CONNECTEDSHOP;
  SQLDSRepair.Params.ParamByName('shopid').Value        := CONNECTEDSHOP;
  SQLDSTransfer.Params.ParamByName('shopid').Value      := CONNECTEDSHOP;
  SQLDSRefunds.Params.ParamByName('shopid').Value       := CONNECTEDSHOP;
  SQLDSExpenses.Params.ParamByName('shopid').Value      := CONNECTEDSHOP;
  SQLDSItemsRefunded.Params.ParamByName('shopid').Value := CONNECTEDSHOP;

  SQLDSShops.Params.ParamByName('shopgroupid').Value := SHOPGROUPID;

  SQLDSCustomers.Params.ParamByName('shopid').Value := CONNECTEDSHOP;
  SQLDSCashClose.Params.ParamByName('shopid').Value := CONNECTEDSHOP;

  SQLDataSetIN.Params.ParamByName('shopid').Value  := CONNECTEDSHOP;
  SQLDataSetOUT.Params.ParamByName('shopid').Value := CONNECTEDSHOP;

  SQLDSCustomers.Params.ParamByName('maxid').Value := (CONNECTEDSHOP + 1) * 100000;
  SQLDSCustomers.Params.ParamByName('minid').Value := (CONNECTEDSHOP) * 100000;

  SQLDSCoupons.Params.ParamByName('maxid').Value := ((CONNECTEDSHOP + 1) * 100000) - 1;
  SQLDSCoupons.Params.ParamByName('minid').Value := ((CONNECTEDSHOP) * 100000);

  SQLDSAlerts.Params.ParamByName('maxid').Value := (CONNECTEDSHOP + 1) * 100000;
  SQLDSAlerts.Params.ParamByName('minid').Value := (CONNECTEDSHOP) * 100000;

  SQLDSAlertsExt.Params.ParamByName('maxid').Value := (CONNECTEDSHOP + 1) * 100000;
  SQLDSAlertsExt.Params.ParamByName('minid').Value := (CONNECTEDSHOP) * 100000;

  SQLDSAddress_book.Params.ParamByName('shopid').Value := CONNECTEDSHOP;
  SQLDSAddress_book.Params.ParamByName('maxid').Value  := (CONNECTEDSHOP + 1) * 100000;
  SQLDSAddress_book.Params.ParamByName('minid').Value  := (CONNECTEDSHOP) * 100000;

  //
  // Building queries
  //

  // Products
  // Attention debut du array a 0 pour la table principale puis 1 pour les sous tables evider double champs
  // SQL:='SELECT DISTINCT';
  // for i:=0 to high(products_fields) do SQL:=SQL+' p.'+products_fields[i]+',';
  // for i:=1 to high(products_description_fields) do SQL:=SQL+' pd.'+products_description_fields[i]+',';
  // for i:=1 to high(products_to_categories_fields) do SQL:=SQL+' p2c.'+products_to_categories_fields[i]+',';
  // SQL:=LeftStr(SQL,length(SQL)-1);
  // SQL:=SQL+' FROM products p, products_to_categories p2c WHERE (p.products_id=p2c.products_id) ';
  // RemoteDB.SQLDSProducts.CommandText:=SQL;

  SQL := 'SELECT * FROM netshop_customers_alerts WHERE ((customers_alerts_customers_nbr>' + inttostr((CONNECTEDSHOP) * 100000) +
    ') AND (customers_alerts_customers_nbr<' + inttostr((CONNECTEDSHOP + 1) * 100000) + '))';
  self.SQLDSAlerts.CommandText := SQL;

  {
    SQL:='SELECT DISTINCT';
    for i:=0 to high(products_fields) do SQL:=SQL+' p.'+products_fields[i]+',';
    for i:=0 to high(products_description_fields) do SQL:=SQL+' pd.'+products_description_fields[i]+',';
    // for i:=0 to high(products_to_categories_fields) do SQL:=SQL+' p2c.'+products_to_categories_fields[i]+',';
    SQL:=LeftStr(SQL,length(SQL)-1);
    SQL:=SQL+' FROM products p, products_description pd WHERE (p.products_id = pd.products_id) and (pd.language_id = 1)';
    RemoteDB.SQLDSProducts.CommandText:=SQL;
  }

  ProgressCreate.Caption          := 'Chargement de la base de données';
  ProgressCreate.InfoLabel        := 'Connection au serveur';
  ProgressCreate.ProgressPosition := ProgressCreate.Progressmin;
  ProgressCreate.ProgressMax      := DatasetsCount + 1;
  Application.ProcessMessages;

  if DBIsOnDisk = False then
  begin
    try
      SQLConnection.Open;
    except
      on E: Exception do
        ShowMessage(E.ClassName + ' error raised, with message : ' + E.Message);
    end;
  end;

  // ShowMessage(SQLDSStock.CommandText);

  try
    // Try to open the Test.txt file for writing to
    ChDir(ExtractFilePath(ParamStr(0)));
    AssignFile(myFile, 'dataload.txt');
    ReWrite(myFile);

    // Write a couple of well known words to this file
    WriteLn(myFile, 'Trying to load the DB');

    updatestatus := IsUpdating;
    if not IsUpdating then
      IsUpdating := True;
    for i        := 0 to self.ComponentCount - 1 do
    begin
      if ((self.Components[i].ClassType = TClientDataSet) and (self.Components[i].Tag <> -1)) then
      begin
        ProgressCreate.InfoLabel        := 'Chargement de la table : ' + self.Components[i].Name;
        ProgressCreate.ProgressPosition := ProgressCreate.ProgressPosition + 1;
        Application.ProcessMessages;
        with TClientDataSet(self.Components[i]) do
        begin
          ChDir(ExtractFilePath(ParamStr(0)));
          if not LocalCache then
            FileName := '';
          if (FileExists(FileName)) then
          begin
            WriteLn(myFile, 'Loading :' + FileName);
            LoadfromFile;
            Open;
          end else begin
            if ProviderName = '' then
            begin
              if DatasetField = nil then
              begin
                CreateDataset;
              end;
            end else begin
              Open;
            end;
          end;
          SaveDataset(TClientDataSet(self.Components[i]), True);
        end;
        if DBIsOnDisk = False then
          keepconnect;
      end;
    end;
  finally
    // Close the file
    WriteLn(myFile, 'DB successfuly loaded');
    CloseFile(myFile);
    IsUpdating := updatestatus;
  end;
end;

procedure TRemoteDB.ProgressMidSyncShow(Sender: TObject);
var
  i: integer;
  updatestatus: Boolean;
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

  SQLConnection.AutoClone := False;
  // SQLConnection.CloseDataSets;
  SQLConnection.Open;

  ProgressSync.Caption          := 'Synchronisation de la base de données';
  ProgressSync.ProgressMax      := DatasetsCount + 1;
  ProgressSync.ProgressPosition := ProgressSync.Progressmin;

  // messagedlg(' '+SQLConnection.Params.Values['user_name']+' '+SQLConnection.Params.Values['database']+' '+SQLConnection.Params.Values['hostname']+' '+SQLConnection.Params.Values['password'],mtwarning,[mbok],0);

  try
    updatestatus := IsUpdating;
    if not IsUpdating then
      IsUpdating := True;

    for i := 0 to self.ComponentCount - 1 do
    begin
      if self.ProgressSync.Cancel then
        exit;
      if ((self.Components[i].ClassType = TClientDataSet) and (self.Components[i].Tag <> -1)) then
      begin
        ProgressSync.InfoLabel        := 'Mise à jour de la table : ' + self.Components[i].Name;
        ProgressSync.ProgressPosition := ProgressSync.ProgressPosition + 1;
        Application.ProcessMessages;
        SaveDataset(TClientDataSet(self.Components[i]), True);
        with TClientDataSet(self.Components[i]) do
        begin
          try
            DisableConstraints;
            DisableControls;
            if TClientDataSet(self.Components[i]).ProviderName <> '' then
            begin
              if ApplyUpdates(-1) = 0 then
              begin
                if (TClientDataSet(self.Components[i]).Name = 'WebOrders') or (TClientDataSet(self.Components[i]).Name = 'Products') or
                  (TClientDataSet(self.Components[i]).Name = 'Transfer') or (TClientDataSet(self.Components[i]).Name = 'Transferout') or
                  (TClientDataSet(self.Components[i]).Name = 'CDSExtStock') or (TClientDataSet(self.Components[i]).Name = 'CDSOut') or
                  (TClientDataSet(self.Components[i]).Name = 'CDSIn') or (TClientDataSet(self.Components[i]).Name = 'AlertsExt') then
                begin
                  Refresh;
                end;
              end;
            end;
          finally
            SaveDataset(TClientDataSet(self.Components[i]), False);
            EnableConstraints;
            EnableControls;
            // Close;
          end;
        end;
      end;
    end;
  finally
    IsUpdating := updatestatus;
    SQLConnection.Close;
  end;
end;

procedure TRemoteDB.TimerSaveDBTimer(Sender: TObject);
begin
  if DatasetsAllBrowse and not IsUpdating then
  begin
    try
      ProgressSaveModuleShow(nil);
    finally
    end;
  end else begin
    // messagedlg('DB non sauvée car dsEdit',mtwarning,[mbok],0)
  end;
end;

procedure TRemoteDB.ProgressSaveModuleShow(Sender: TObject);
var
  i: integer;
  updatestatus: Boolean;
begin
  if LocalCache then
  begin
    updatestatus := IsUpdating;
    if not IsUpdating then
      IsUpdating := True;

    ProgressSave.Caption          := 'Sauvegarde de la base de données';
    ProgressSave.ProgressPosition := ProgressSave.Progressmin;
    ProgressSave.ProgressMax      := DatasetsCount + 1;
    Application.ProcessMessages;

    for i := 0 to self.ComponentCount - 1 do
    begin
      if ((self.Components[i].ClassType = TClientDataSet) and (self.Components[i].Tag <> -1)) then
      begin
        // TClientDataset(Self.Components[i]).MasterSource:=nil;
        // TClientDataset(Self.Components[i]).MasterFields:='';
        ProgressSave.InfoLabel        := 'Enregistrement de la table : ' + self.Components[i].Name;
        ProgressSave.ProgressPosition := ProgressSave.ProgressPosition + 1;
        Application.ProcessMessages;
        if (TClientDataSet(self.Components[i]).ChangeCount) > 0 then
          SaveDataset(TClientDataSet(self.Components[i]), True);
        // TClientDataset(Self.Components[i]).Close;
      end;
    end;

    IsUpdating := updatestatus;

  end;
end;

procedure TRemoteDB.ProgressCloseShow(Sender: TObject);
var
  i: integer;
begin

  ProgressClose.Caption          := 'Fermeture de la base de données';
  ProgressClose.ProgressPosition := ProgressSave.Progressmin;
  ProgressClose.ProgressMax      := DatasetsCount + 1;
  Application.ProcessMessages;

  for i := 0 to self.ComponentCount - 1 do
  begin
    if ((self.Components[i].ClassType = TClientDataSet) and (self.Components[i].Tag <> -1)) then
    begin
      ProgressClose.InfoLabel        := 'Fermeture de la table : ' + self.Components[i].Name;
      ProgressClose.ProgressPosition := ProgressSave.ProgressPosition + 1;
      Application.ProcessMessages;
      TClientDataSet(self.Components[i]).Close;
    end;
  end;

end;

function TRemoteDB.SaveDataset(DataSet: TClientDataSet; backup: Boolean): Boolean;
var
  DatasetDeleted: Boolean;
  DatasetSaved: Boolean;
  Originalfilename, Backupfilename: string;
begin
  if LocalCache then
  begin
    DataSet.DisableConstraints;
    DataSet.DisableControls;
    try
      Originalfilename := ExtractFileName(DataSet.FileName);
      Backupfilename   := 'database/backup/' + ChangeFileExt(Originalfilename, '.bak');
      Originalfilename := 'database/' + Originalfilename;

      DatasetDeleted := True;
      DatasetSaved   := True;

      // if (dataset.state=dsEdit) or (dataset.state=dsinsert) then Dataset.Post;

      ChDir(ExtractFilePath(ParamStr(0)));
      if not(DirectoryExists('database')) then
      begin
        CreateDir('database');
      end;
      ChDir(ExtractFilePath(ParamStr(0)) + '/database');
      if not(DirectoryExists('backup')) then
      begin
        CreateDir('backup');
      end;

      ChDir(ExtractFilePath(ParamStr(0)));
      try
        if backup then
        begin
          // Removing old backup
          if FileExists(Backupfilename) then
          begin
            DeleteFile(Backupfilename);
          end;
          // Creating New backup
          if FileExists(Originalfilename) then
            if not(FileExists(Backupfilename)) then
            begin
              if not(RenameFile(Originalfilename, Backupfilename)) then
              begin
                DatasetDeleted := False;
                messagedlg('Erreur durant la création du backup de : ' + Originalfilename + '. Impossible de renommer', mtwarning, [mbok], 0);
              end;
            end else begin
              messagedlg('Erreur durant la création du backup de : ' + Originalfilename + '. Fichier existant', mtwarning, [mbok], 0);
            end;
        end;
        // Saving New File
        ChDir(ExtractFilePath(ParamStr(0)));
        DataSet.SaveToFile(Originalfilename);
        if not(FileExists(Originalfilename)) then
        begin
          DatasetSaved := False;
          messagedlg('Erreur durant la sauvegarde de : ' + Originalfilename, mtwarning, [mbok], 0);
        end;
      except
        messagedlg('Erreur durant la sauvegarde de : ' + Originalfilename, mtwarning, [mbok], 0);
      end;

    finally
      DataSet.EnableControls;
      DataSet.EnableConstraints;
    end;
    Result := DatasetSaved and DatasetDeleted;
  end else begin
    Result := True;
  end;
end;

procedure TRemoteDB.DPProDescFRBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  Connection: TSQLConnection;
  SQL, LID, ID: string;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;

  case UpdateKind of
    ukinsert:
      begin
        ID  := DeltaDS.fieldbyname('products_id').AsString;
        LID := DeltaDS.fieldbyname('language_id').AsString;

        // Delete from prodesc
        SQL := Format('DELETE FROM products_description WHERE products_id = %s and language_id = %s', [ID, LID]);
        Connection.Execute(SQL, nil, nil);
      end;

  end;
end;

procedure TRemoteDB.DPProDescNLBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  Connection: TSQLConnection;
  SQL, LID, ID: string;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;

  case UpdateKind of
    ukinsert:
      begin
        ID  := DeltaDS.fieldbyname('products_id').AsString;
        LID := DeltaDS.fieldbyname('language_id').AsString;

        // Delete from prodesc
        SQL := Format('DELETE FROM products_description WHERE products_id = %s and language_id = %s', [ID, LID]);
        Connection.Execute(SQL, nil, nil);
      end;

  end;
end;

procedure TRemoteDB.DPProductsBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  Connection: TSQLConnection;
  SQL: string;
  i, j: integer;
  IdResult: Variant;
  product_date_added, product_date_available, ID: string;
  PreExist, insertion, modified: Boolean;
  IdQuery: TSQLDataSet;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;

  case UpdateKind of
    ukinsert:
      begin
        ID := DeltaDS.fieldbyname('products_id').NewValue;

        // Delete from products_description
        SQL := Format('DELETE FROM products_description WHERE products_id = %s', [ID]);
        Connection.Execute(SQL, nil, nil);

        // Delete from products
        SQL := Format('DELETE FROM products WHERE products_id = %s', [ID]);
        Connection.Execute(SQL, nil, nil);

        // Delete from products
        SQL := Format('DELETE p,pd FROM products p inner join products_description pd on pd.products_id=p.products_id where p.products_model = %s', [QuotedStr(DeltaDS.fieldbyname('products_model').AsString)]);
        Connection.Execute(SQL, nil, nil);

        // Delete from products_to_categories
        SQL := Format('DELETE FROM products_to_categories WHERE products_id = %s', [ID]);
        Connection.Execute(SQL, nil, nil);

        // Insertion des valeurs dans la table produits
        SQL   := 'INSERT INTO products (';
        for i := 0 to high(products_fields) do
          SQL := SQL + products_fields[i] + ',';
        SQL   := LeftStr(SQL, Length(SQL) - 1);
        SQL   := SQL + ') VALUES (';
        for i := 0 to high(products_fields) do
        begin
          if DeltaDS.fieldbyname(products_fields[i]).DataType = ftBoolean then
          begin
            if DeltaDS.fieldbyname(products_fields[i]).NewValue then
            begin
              SQL := SQL + '1' + ',';;
            end else begin
              SQL := SQL + '0' + ',';;
            end;
          end else begin
            if DeltaDS.fieldbyname(products_fields[i]).DataType = ftTimeStamp then
            begin
              SQL := SQL + QuotedStr(Formatdatetime('YYYY-MM-DD HH:MM:SS', (DeltaDS.fieldbyname(products_fields[i]).AsDateTime))) + ',';
            end else begin
              SQL := SQL + QuotedStr(VarToStr(DeltaDS.fieldbyname(products_fields[i]).NewValue)) + ',';
            end;
          end;
        end;
        SQL := LeftStr(SQL, Length(SQL) - 1);
        SQL := SQL + ')';
        Connection.Execute(SQL, nil, nil);


        // Insertion des valuers dans le table produits_description
        // Languages.First;
        // While not languages.Eof do begin
        // SQL:='INSERT INTO products_description (';
        // for i:=0 to high(products_description_fields) do SQL:=SQL+products_description_fields[i]+',';
        // SQL:=LeftStr(SQL,length(SQL)-1);
        // SQL:=SQL+') VALUES (';
        // for i:=0 to high(products_description_fields) do begin
        // if products_description_fields[i]='language_id' then  SQL:=SQL+QuotedStr(vartostr(RemoteDB.Languageslanguages_id.Value))+',' else
        // if DeltaDS.FieldByName(products_description_fields[i]).DataType=ftTimeStamp then begin
        // SQL:=SQL+QuotedStr(Formatdatetime('YYYY-MM-DD HH:MM:SS',(DeltaDs.FieldByName(products_description_fields[i]).AsDateTime)))+',';
        // end else begin
        // SQL:=SQL+QuotedStr(vartostr(DeltaDs.FieldByName(products_description_fields[i]).NewValue))+',';
        // end;
        // end;
        // SQL:=LeftStr(SQL,length(SQL)-1);
        // SQL:=SQL+')';
        // Connection.Execute(SQL, nil, nil);
        // Languages.Next
        // end;

        //
        // Insertion dans le table poducts_to_categories
        //
        SQL   := 'INSERT INTO products_to_categories (';
        for i := 0 to high(products_to_categories_fields) do
          SQL := SQL + products_to_categories_fields[i] + ',';
        SQL   := LeftStr(SQL, Length(SQL) - 1);
        SQL   := SQL + ') VALUES (';
        for i := 0 to high(products_to_categories_fields) do
        begin
          if DeltaDS.fieldbyname(products_to_categories_fields[i]).DataType = ftTimeStamp then
          begin
            SQL := SQL + QuotedStr(Formatdatetime('YYYY-MM-DD HH:MM:SS', (DeltaDS.fieldbyname(products_to_categories_fields[i]).AsDateTime))) + ',';
          end else begin
            SQL := SQL + QuotedStr(VarToStr(DeltaDS.fieldbyname(products_to_categories_fields[i]).NewValue)) + ',';
          end;
        end;
        SQL := LeftStr(SQL, Length(SQL) - 1);
        SQL := SQL + ')';
        Connection.Execute(SQL, nil, nil);
      end;

    ukModify:

      begin
        ID := DeltaDS.fieldbyname('products_id').NewValue;

        SQL := '';

        // Update table products,
        for i := 0 to high(products_fields) do
        begin
          if not VarIsEmpty(DeltaDS.fieldbyname(products_fields[i]).NewValue) then
          begin
            if SQL <> '' then
              SQL := SQL + ', ';
            if DeltaDS.fieldbyname(products_fields[i]).DataType = ftBoolean then
            begin
              if DeltaDS.fieldbyname(products_fields[i]).NewValue then
              begin
                SQL := SQL + products_fields[i] + ' = 1';
              end else begin
                SQL := SQL + products_fields[i] + ' = 0';
              end;
            end else begin
              if DeltaDS.fieldbyname(products_fields[i]).DataType = ftTimeStamp then
              begin
                SQL := SQL + Format(products_fields[i] + ' = %s',
                  [QuotedStr(Formatdatetime('YYYY-MM-DD HH:MM:SS', (DeltaDS.fieldbyname(products_fields[i]).AsDateTime)))]);
              end else begin
                SQL := SQL + Format(products_fields[i] + ' = %s', [QuotedStr(VarToStr(DeltaDS.fieldbyname(products_fields[i]).NewValue))]);
              end;
            end;
          end;
        end;

        if SQL <> '' then
        begin
          ID  := VarToStr(DeltaDS.fieldbyname('products_id').OldValue);
          SQL := Format('UPDATE products SET %s ' + 'WHERE products_id = %s', [SQL, ID]);
          Connection.Execute(SQL, nil, nil);
        end;

        // Update table products_description
        // Languages.First;
        // While not languages.Eof do begin
        // SQL:='';
        // for i:=0 to high(products_description_fields) do begin
        // if not VarIsEmpty(DeltaDS.FieldbyName(products_description_fields[i]).NewValue) then begin
        // if SQL <> '' then SQL := SQL + ', ';
        // if products_description_fields[i]<>'language_id' then
        // if DeltaDS.FieldByName(products_description_fields[i]).DataType=ftTimeStamp then begin
        // SQL := SQL + Format(products_description_fields[i]+' = %s',
        // [QuotedStr(Formatdatetime('YYYY-MM-DD HH:MM:SS',(DeltaDs.FieldByName(products_description_fields[i]).AsDateTime)))]);
        // end else begin
        // SQL := SQL + Format(products_description_fields[i]+' = %s',
        // [QuotedStr(vartostr(DeltaDS.Fieldbyname(products_description_fields[i]).NewValue))]);
        // end;
        // end;
        // end;

        // if SQL <> '' then begin
        // ID := vartostr(DeltaDS.FieldByName('products_id').OldValue);
        // SQL := Format('UPDATE products_description SET %s ' +
        // 'WHERE products_id = %s and language_id = %s', [SQL, ID, RemoteDB.Languageslanguages_id.AsString]);
        // Connection.Execute(SQL, nil, nil);
        // end;
        // Languages.Next;
        // end;

        //
        // Update Products_to_categories
        //
        SQL   := '';
        for i := 0 to high(products_to_categories_fields) do
        begin
          if not VarIsEmpty(DeltaDS.fieldbyname(products_to_categories_fields[i]).NewValue) then
          begin
            if SQL <> '' then
              SQL := SQL + ', ';
            if DeltaDS.fieldbyname(products_to_categories_fields[i]).DataType = ftTimeStamp then
            begin
              SQL := SQL + Format(products_to_categories_fields[i] + ' = %s',
                [QuotedStr(Formatdatetime('YYYY-MM-DD HH:MM:SS', (DeltaDS.fieldbyname(products_to_categories_fields[i]).AsDateTime)))]);
            end else begin
              SQL := SQL + Format(products_to_categories_fields[i] + ' = %s',
                [QuotedStr(VarToStr(DeltaDS.fieldbyname(products_to_categories_fields[i]).NewValue))]);
            end;
          end;
        end;

        if SQL <> '' then
        begin
          ID  := VarToStr(DeltaDS.fieldbyname('products_id').OldValue);
          SQL := Format('UPDATE products_to_categories SET %s ' + 'WHERE products_id = %s', [SQL, ID]);
          Connection.Execute(SQL, nil, nil);
        end;
      end;

    ukDelete:
      begin
        ID := DeltaDS.fieldbyname('products_id').AsString;

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

procedure TRemoteDB.DPRefundsBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  Connection: TSQLConnection;
  SQL, ID, LOC: string;
  i: integer;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
  case UpdateKind of

    ukDelete:
      begin
        LOC := VarToStr(DeltaDS.fieldbyname('refunds_shop_id').OldValue);
        ID  := VarToStr(DeltaDS.fieldbyname('refunds_id').OldValue);
        SQL := Format('DELETE FROM netshop_refunds ' + 'WHERE (refunds_shop_id = %s) and (refunds_id = %s)', [LOC, ID]);
        Connection.Execute(SQL, nil, nil);
        Applied := True;
      end;

    ukModify:
      begin
        SQL   := '';
        for i := 0 to DeltaDS.FieldCount - 1 do
        begin
          if not VarIsEmpty(DeltaDS.Fields[i].NewValue) then
          begin
            if SQL <> '' then
              SQL := SQL + ', ';
            SQL   := SQL + Format(DeltaDS.Fields[i].FieldName + ' = %s', [QuotedStr(VarToStr(DeltaDS.Fields[i].NewValue))]);
          end;
        end;
        if SQL <> '' then
        begin
          LOC := VarToStr(DeltaDS.fieldbyname('refunds_shop_id').OldValue);
          ID  := VarToStr(DeltaDS.fieldbyname('refunds_id').OldValue);
          SQL := Format('UPDATE netshop_refunds SET %s ' + 'WHERE (refunds_shop_id = %s) and (refunds_id = %s)', [SQL, LOC, ID]);
          Connection.Execute(SQL, nil, nil);
        end;
        Applied := True;
      end;
  end;
end;

function TRemoteDB.GetDatasetsCount: integer;
var
  i: integer;
begin
  Result := 0;
  for i  := 0 to self.ComponentCount - 1 do
  begin
    if ((self.Components[i].ClassType = TClientDataSet) and (self.Components[i].Tag <> -1)) then
    begin
      Result := Result + 1;
    end;
  end;
end;

function TRemoteDB.GetDatasetsAllBrowse: Boolean;
var
  i: integer;
begin
  Result := True;
  for i  := 0 to self.ComponentCount - 1 do
  begin
    if ((self.Components[i].ClassType = TClientDataSet) and (self.Components[i].Tag <> -1)) then
    begin
      if TClientDataSet(self.Components[i]).State <> dsBrowse then
        Result := False;
    end;
  end;
end;

function TRemoteDB.GetIsConnected: Boolean;
begin
  Result := DynaLink_InternetGetConnectedState(nil, 0)
end;

function TRemoteDB.GetLocalCache: Boolean;
begin

end;

function TRemoteDB.GetDBIsOnDisk: Boolean;
var
  i: integer;
begin
  Result := True;
  for i  := 0 to self.ComponentCount - 1 do
  begin
    if ((self.Components[i].ClassType = TClientDataSet) and (self.Components[i].Tag <> -1)) then
    begin
      with TClientDataSet(self.Components[i]) do
      begin
        if TClientDataSet(self.Components[i]).ProviderName <> '' then
        begin
          ChDir(ExtractFilePath(ParamStr(0)));
          if not(FileExists(FileName)) then
          begin
            // ShowMessage(FileName);
            Result := False;
          end;
        end;
      end;
    end;
  end;
end;

function TRemoteDB.GetTodaysDate: string;
begin
  Result := datetostr(now);
end;

function TRemoteDB.GetWholeSalePrice(Model: string): double;
label procend;
begin
  if self.Products.locate('products_model', Model, [locaseinsensitive]) then
  begin
    if self.Products.FieldByName('products_cldprice').AsFloat > 0 then
    begin
      Result := self.Products.FieldByName('products_cldprice').AsFloat;
      goto procend;
    end;

  end;
procend:
end;

function TRemoteDB.GetCurrentSalesDate: string;
begin
  if netshop_sales.fieldbyname('sales_date_time').Value <> null then
    Result := Formatdatetime('dddd dd/mm/yy', netshop_sales.fieldbyname('sales_date_time').Value);
end;

procedure TRemoteDB.GenericAfterPost(DataSet: TDataSet);
begin
  SaveDataset(TClientDataSet(DataSet), True);
end;

procedure TRemoteDB.customersBeforePost(DataSet: TDataSet);
begin
  if Address_Book.State <> dsBrowse then
    Address_Book.Post;
end;

procedure TRemoteDB.customerscustomers_email_addressSetText(Sender: TField; const Text: string);
var
  ANotifyServer: TNotifyServer;
begin
  if Text <> '' then
  begin
    if UserType = 1 then
    begin
      ANotifyServer := TNotifyServer.Create('welcome', Text, '', NOTIFYURL);
    end;
  end;
  Sender.AsString := Text;
end;

procedure TRemoteDB.Address_BookNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('Address_book_id').Value     := GetNextSubIdSimple(DataSet as TCustomClientDataSet, 'address_book_id');
  DataSet.fieldbyname('Customers_Id').Value        := customers.fieldbyname('Customers_Nbr').Value;
  DataSet.fieldbyname('entry_country_id').AsString := '21';
end;

procedure TRemoteDB.AddToStock(product_model: string; product_owner_id, product_supplier_id, quantity: integer);
begin

end;

procedure TRemoteDB.Address_BookBeforePost(DataSet: TDataSet);
begin
  DataSet.fieldbyname('Entry_gender').Value    := customers.fieldbyname('Customers_gender').Value;
  DataSet.fieldbyname('Entry_firstname').Value := customers.fieldbyname('Customers_firstname').Value;
  DataSet.fieldbyname('Entry_lastname').Value  := customers.fieldbyname('Customers_lastname').Value;
end;

function TRemoteDB.MoveToArchives(Model: string): Boolean;
var
  catpath: array of string;
  NewcatId, ArchiveId, i, j: integer;
  PathName: string;
begin
  if IsInArchives(Model) then
  begin
    Result := False;
    exit;
  end;
  i := 1;
  SetLength(catpath, 20);
  Products.locate('products_model', Model, []);

  if Categories.locate('categories_id', Products.fieldbyname('categories_id').AsInteger, []) then
  begin
    while Categories.fieldbyname('parent_id').AsInteger <> 0 do
    begin
      catpath[i] := Categories.fieldbyname('categories_name').AsString;
      Categories.locate('categories_id', Categories.fieldbyname('parent_id').AsInteger, []);
      i := i + 1;
    end;
    catpath[i] := Categories.fieldbyname('categories_name').AsString;
  end else begin
    Result := False;
    exit;
    // Catégorie Inexistante produit mal configuré
  end;

  Categories.locate('categories_name', 'archives', [locaseinsensitive]);
  ArchiveId           := Categories.fieldbyname('categories_id').AsInteger;
  Categories.Filtered := True;
  PathName            := '';
  for j               := i downto 1 do
  begin
    Categories.Filter := 'parent_id=' + inttostr(ArchiveId);
    if Categories.locate('categories_name', catpath[j], [locaseinsensitive]) then
    begin
      PathName          := PathName + ' - ' + self.Categoriescategories_name.Value;
      ArchiveId         := Categories.fieldbyname('categories_id').AsInteger;
      Categories.Filter := 'parent_id=' + inttostr(ArchiveId);
    end else begin
      if ((Uppercase(catpath[j]) <> 'MANGA') or (Uppercase(catpath[j]) <> 'DVD') or (Uppercase(catpath[j]) <> 'LIVRES')) then
      begin
        ShowMessage('Categorie inexistante dans les archives : ' + PathName + catpath[j]);
        Categories.Filtered := False;
        Result              := False;
        exit;
      end;
    end
  end;
  Categories.Filtered := False;
  Products.Edit;
  Products.fieldbyname('categories_id').AsInteger := ArchiveId;
  Products.Post;
  Result := True;

end;

function TRemoteDB.IsInArchives(Model: string): Boolean;
var
  CloneDS: TClientDataSet;
begin
  CloneDS := TClientDataSet.Create(nil);
  try
    CloneDS.CloneCursor(Products, True);
    Result := False;
    if CloneDS.locate('products_model', Model, []) then
    begin
      if Categories.locate('categories_id', Products.fieldbyname('categories_id').AsInteger, []) then
      begin
        while Categories.fieldbyname('parent_id').AsInteger <> 0 do
        begin
          Categories.locate('categories_id', Categories.fieldbyname('parent_id').AsInteger, []);
        end;
        if Uppercase(Categories.fieldbyname('categories_name').AsString) = 'ARCHIVES' then
          Result := True;
      end;
    end;
  finally
    CloneDS.Free;
  end;
end;

function TRemoteDB.RestoreFromArchives(Model: string): Boolean;
var
  catpath: array of string;
  NewcatId, ArchiveId, i, j: integer;
begin
  if not IsInArchives(Model) then
  begin
    Result := False;
    exit;
  end;
  i := 1;
  SetLength(catpath, 20);
  Products.locate('products_model', Model, []);
  if Categories.locate('categories_id', Products.fieldbyname('categories_id').AsInteger, []) then
  begin
    while Categories.fieldbyname('parent_id').AsInteger <> 0 do
    begin
      catpath[i] := Categories.fieldbyname('categories_name').AsString;
      Categories.locate('categories_id', Categories.fieldbyname('parent_id').AsInteger, []);
      i := i + 1;
    end;
    catpath[i] := Categories.fieldbyname('categories_name').AsString;
  end else begin
    // Catégorie Inexistante
    Result := False;
    exit;
  end;
  ArchiveId           := 0;
  Categories.Filtered := True;
  for j               := i - 1 downto 1 do
  begin
    Categories.Filter := 'parent_id=' + inttostr(ArchiveId);
    if Categories.locate('categories_name', catpath[j], [locaseinsensitive]) then
    begin
      ArchiveId         := Categories.fieldbyname('categories_id').AsInteger;
      Categories.Filter := 'parent_id=' + inttostr(ArchiveId);
    end else begin
      Categories.Filtered := False;
      Result              := False;
      exit;
    end;
  end;
  Categories.Filtered := False;
  Products.Edit;
  Products.fieldbyname('categories_id').AsInteger := ArchiveId;
  Products.Post;
  Result := True;
end;

procedure TRemoteDB.DPAddress_bookBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  case UpdateKind of
    ukinsert:
      begin
        // DeltaDS.FieldByName('address_book_id').NewValue:=DeltaDS.FieldByName('address_book_id').NewValue+5485;
      end;
  end;
end;

procedure TRemoteDB.DPAlertsBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  Connection: TSQLConnection;
  SQL, NBR, Model: string;
  i: integer;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
  case UpdateKind of

    ukDelete:
      begin
        Model := VarToStr(DeltaDS.fieldbyname('customers_alerts_products_model').OldValue);
        NBR   := VarToStr(DeltaDS.fieldbyname('customers_alerts_customers_nbr').OldValue);
        SQL   := Format('DELETE FROM netshop_customers_alerts ' + 'WHERE (customers_alerts_products_model = %s) and (customers_alerts_customers_nbr = %s)',
          [QuotedStr(Model), NBR]);
        Connection.Execute(SQL, nil, nil);
        Applied := True;
      end;

    ukModify:
      begin
        SQL   := '';
        for i := 0 to DeltaDS.FieldCount - 1 do
        begin
          if not VarIsEmpty(DeltaDS.Fields[i].NewValue) then
          begin
            if SQL <> '' then
              SQL := SQL + ', ';
            SQL   := SQL + Format(DeltaDS.Fields[i].FieldName + ' = %s', [QuotedStr(VarToStr(DeltaDS.Fields[i].NewValue))]);
          end;
        end;
        if SQL <> '' then
        begin
          Model := VarToStr(DeltaDS.fieldbyname('customers_alerts_products_model').OldValue);
          NBR   := VarToStr(DeltaDS.fieldbyname('customers_alerts_customers_nbr').OldValue);
          SQL   := Format('UPDATE netshop_customers_alerts SET %s ' + 'WHERE (customers_alerts_products_model = %s) and (customers_alerts_customers_nbr = %s)',
            [SQL, QuotedStr(Model), NBR]);
          Connection.Execute(SQL, nil, nil);
        end;
        Applied := True;
      end;
  end;
end;

procedure TRemoteDB.DPCouponsBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  Connection: TSQLConnection;
  SQL, ID: string;
  i: integer;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
  case UpdateKind of

    ukModify:
      begin
        SQL   := '';
        for i := 0 to DeltaDS.FieldCount - 1 do
        begin
          if (not VarIsEmpty(DeltaDS.Fields[i].NewValue)) and (DeltaDS.Fields[i].Name <> 'coupon_description') then
          begin
            if SQL <> '' then
              SQL := SQL + ', ';
            SQL   := SQL + Format(DeltaDS.Fields[i].FieldName + ' = %s', [QuotedStr(VarToStr(DeltaDS.Fields[i].NewValue))]);
          end;
        end;
        if SQL <> '' then
        begin
          ID  := VarToStr(DeltaDS.fieldbyname('coupon_id').OldValue);
          SQL := Format('UPDATE coupons SET %s ' + 'WHERE (coupon_id = %s)', [SQL, ID]);
          Connection.Execute(SQL, nil, nil);
        end;
        Applied := True;
      end;
  end;
end;

procedure TRemoteDB.DPCustomersBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  Connection: TSQLConnection;
  SQL, ID: string;
  i: integer;
begin
  // Obtain a pointer to the connection from the source dataset
  case UpdateKind of

    ukinsert:
      begin
        Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
        // Update table customers
        SQL   := 'INSERT INTO customers (';
        for i := 0 to DeltaDS.FieldCount - 1 do
          SQL := SQL + DeltaDS.Fields[i].FieldName + ',';
        SQL   := LeftStr(SQL, Length(SQL) - 1);
        SQL   := SQL + ') VALUES (';

        for i := 0 to DeltaDS.FieldCount - 1 do
        begin
          if DeltaDS.Fields[i].DataType = ftBoolean then
          begin
            if DeltaDS.Fields[i].NewValue then
            begin
              SQL := SQL + DeltaDS.Fields[i].FieldName + ' = 1';
            end else begin
              SQL := SQL + DeltaDS.Fields[i].FieldName + ' = 0';
            end;
          end else begin
            if ((DeltaDS.Fields[i].DataType = ftTimeStamp) or (DeltaDS.Fields[i].DataType = ftDate) or (DeltaDS.Fields[i].DataType = ftDateTime)) then
            begin
              SQL := SQL + QuotedStr(Formatdatetime('YYYY-MM-DD HH:MM:SS', (DeltaDS.Fields[i].AsDateTime))) + ',';
            end else begin
              SQL := SQL + QuotedStr(VarToStr(DeltaDS.Fields[i].NewValue)) + ',';
            end;
          end;
        end;
        SQL := LeftStr(SQL, Length(SQL) - 1);
        SQL := SQL + ')';
        Connection.Execute(SQL, nil, nil);
        Applied := True;
      end;

    ukModify:
      begin
        Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
        // Update table customers
        SQL   := '';
        for i := 0 to DeltaDS.FieldCount - 1 do
        begin
          if not VarIsEmpty(DeltaDS.Fields[i].NewValue) then
          begin
            if SQL <> '' then
              SQL := SQL + ', ';
            if ((DeltaDS.Fields[i].DataType = ftTimeStamp) or (DeltaDS.Fields[i].DataType = ftDate) or (DeltaDS.Fields[i].DataType = ftDateTime)) then
            begin
              SQL := SQL + Format(DeltaDS.Fields[i].FieldName + ' = %s', [QuotedStr(Formatdatetime('YYYY-MM-DD HH:MM:SS', (DeltaDS.Fields[i].AsDateTime)))]);
            end else begin
              SQL := SQL + Format(DeltaDS.Fields[i].FieldName + ' = %s', [QuotedStr(VarToStr(DeltaDS.Fields[i].NewValue))]);
            end;
          end;
        end;
        if SQL <> '' then
        begin
          ID  := VarToStr(DeltaDS.fieldbyname('customers_nbr').OldValue);
          SQL := Format('UPDATE customers SET %s ' + 'WHERE customers_nbr = %s', [SQL, ID]);
          Connection.Execute(SQL, nil, nil);
        end;
        Applied := True;
      end;

  end;
end;

procedure TRemoteDB.DPSalesBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  Connection: TSQLConnection;
  SQL, ID, LOC: string;
  IdQuery: TSQLDataSet;
  i: integer;
  match: Boolean;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
  case UpdateKind of
    ukinsert:
      begin
        // DeltaDS.FieldByName('sales_id').NewValue:=DeltaDS.FieldByName('sales_id').NewValue+6488;
      end;
    ukModify:
      begin
        SQL   := '';
        for i := 0 to DeltaDS.FieldCount - 1 do
        begin
          if not VarIsEmpty(DeltaDS.Fields[i].NewValue) then
          begin
            if SQL <> '' then
              SQL := SQL + ', ';
            SQL   := SQL + Format(DeltaDS.Fields[i].FieldName + ' = %s', [QuotedStr(VarToStr(DeltaDS.Fields[i].NewValue))]);
          end;
        end;
        if SQL <> '' then
        begin
          LOC := VarToStr(DeltaDS.fieldbyname('sales_location').OldValue);
          ID  := VarToStr(DeltaDS.fieldbyname('sales_id').OldValue);
          SQL := Format('UPDATE netshop_sales SET %s ' + 'WHERE (sales_location = %s) and (sales_id = %s)', [SQL, LOC, ID]);
          Connection.Execute(SQL, nil, nil);
        end;
        Applied := True;
      end;
  end;
end;

procedure TRemoteDB.DPstockBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  Connection: TSQLConnection;
  SQL, ID, LOC: string;
  IdQuery: TSQLDataSet;
  i: integer;
  match: Boolean;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
  case UpdateKind of
    ukinsert:
      begin
      end;

    ukModify:
      begin
        SQL   := '';
        for i := 0 to DeltaDS.FieldCount - 1 do
        begin
          if not VarIsEmpty(DeltaDS.Fields[i].NewValue) then
          begin
            if SQL <> '' then
              SQL := SQL + ', ';
            SQL   := SQL + Format(DeltaDS.Fields[i].FieldName + ' = %s', [QuotedStr(VarToStr(DeltaDS.Fields[i].NewValue))]);
          end;
        end;
        if SQL <> '' then
        begin
          LOC := VarToStr(DeltaDS.fieldbyname('product_location').OldValue);
          ID  := VarToStr(DeltaDS.fieldbyname('id').OldValue);
          SQL := Format('UPDATE netshop_stock SET %s ' + 'WHERE (product_location = %s) and (id = %s)', [SQL, LOC, ID]);
          Connection.Execute(SQL, nil, nil);
        end;
        Applied := True;
      end;

    ukDelete:
      begin
        LOC := VarToStr(DeltaDS.fieldbyname('product_location').OldValue);
        ID  := VarToStr(DeltaDS.fieldbyname('id').OldValue);
        SQL := Format('DELETE FROM netshop_stock ' + 'WHERE (product_location = %s) and (id = %s)', [LOC, ID]);
        Connection.Execute(SQL, nil, nil);
        Applied := True;
      end;
  end;
end;

procedure TRemoteDB.DPStockReturnedBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  Connection: TSQLConnection;
  SQL, ID, LOC: string;
  IdQuery: TSQLDataSet;
  i: integer;
  match: Boolean;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
  case UpdateKind of
    ukinsert:
      begin
      end;

    ukModify:
      begin
        SQL   := '';
        for i := 0 to DeltaDS.FieldCount - 1 do
        begin
          if not VarIsEmpty(DeltaDS.Fields[i].NewValue) then
          begin
            if SQL <> '' then
              SQL := SQL + ', ';
            SQL   := SQL + Format(DeltaDS.Fields[i].FieldName + ' = %s', [QuotedStr(VarToStr(DeltaDS.Fields[i].NewValue))]);
          end;
        end;
        if SQL <> '' then
        begin
          LOC := VarToStr(DeltaDS.fieldbyname('product_location').OldValue);
          ID  := VarToStr(DeltaDS.fieldbyname('id').OldValue);
          SQL := Format('UPDATE netshop_stock_returned SET %s ' + 'WHERE (product_location = %s) and (id = %s)', [SQL, LOC, ID]);
          Connection.Execute(SQL, nil, nil);
        end;
        Applied := True;
      end;

    ukDelete:
      begin
        LOC := VarToStr(DeltaDS.fieldbyname('product_location').OldValue);
        ID  := VarToStr(DeltaDS.fieldbyname('id').OldValue);
        SQL := Format('DELETE FROM netshop_stock_returned ' + 'WHERE (product_location = %s) and (id = %s)', [LOC, ID]);
        Connection.Execute(SQL, nil, nil);
        Applied := True;
      end;
  end;
end;

procedure TRemoteDB.DPSuppliersStockBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  Connection: TSQLConnection;
  SQL, GID, Model, SID: string;
  IdQuery: TSQLDataSet;
  i: integer;
  match: Boolean;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
  case UpdateKind of

    ukinsert:
      begin
        SQL := Format('DELETE FROM netshop_suppliers_stock WHERE suppliers_id = %s AND shop_group_id = %s AND products_model = %s',
          [DeltaDS.fieldbyname('suppliers_id').NewValue, DeltaDS.fieldbyname('shop_group_id').NewValue,
          QuotedStr(DeltaDS.fieldbyname('products_model').NewValue)]);
        Connection.Execute(SQL, nil, nil);
      end;

    ukModify:
      begin
        SQL   := '';
        for i := 0 to DeltaDS.FieldCount - 1 do
        begin
          if not VarIsEmpty(DeltaDS.Fields[i].NewValue) then
          begin
            if SQL <> '' then
              SQL := SQL + ', ';
            SQL   := SQL + Format(DeltaDS.Fields[i].FieldName + ' = %s', [QuotedStr(VarToStr(DeltaDS.Fields[i].NewValue))]);
          end;
        end;
        if SQL <> '' then
        begin
          GID   := VarToStr(DeltaDS.fieldbyname('shop_group_id').OldValue);
          SID   := VarToStr(DeltaDS.fieldbyname('suppliers_id').OldValue);
          Model := VarToStr(DeltaDS.fieldbyname('products_model').OldValue);
          SQL   := Format('UPDATE netshop_suppliers_stock SET %s ' + 'WHERE (shop_group_id = %s) AND (suppliers_id = %s) AND (products_model= %s)',
            [SQL, GID, SID, Model]);
          Connection.Execute(SQL, nil, nil);
        end;
        Applied := True;
      end;
  end;
end;

procedure TRemoteDB.DPWebOrdersBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  Connection: TSQLConnection;
  SQL: string;

begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
  case UpdateKind of

    ukinsert:
      begin
        Applied := True;
      end;

    ukModify:
      begin
        if not VarIsEmpty(DeltaDS.fieldbyname('orders_status_id').NewValue) then
        begin
          SQL := 'UPDATE orders SET orders_status = ' + QuotedStr(VarToStr(DeltaDS.fieldbyname('orders_status_id').NewValue)) + ' WHERE orders_id = ' +
            QuotedStr(VarToStr(DeltaDS.fieldbyname('orders_id').OldValue));
          Connection.Execute(SQL, nil, nil);

          SQL := 'INSERT INTO orders_status_history (orders_id, orders_status_id, date_added, customer_notified, comments) ' + ' VALUES (' +
            QuotedStr(VarToStr(DeltaDS.fieldbyname('orders_id').OldValue)) + ', ' + QuotedStr('11') + ', now(), ' + QuotedStr('0') + ', ' +
            QuotedStr('Le magasin a bien pris connaissance et traite votre commande') + ')';
          Connection.Execute(SQL, nil, nil);
        end;

        Applied := True;
      end;
  end;
end;



// procedure TRemoteDB.DSServerClass2GetClass(DSServerClass: TDSServerClass;
// var PersistentClass: TPersistentClass);
// begin
// PersistentClass := TDSServerModuleRFIDPanel;
// end;

// procedure TRemoteDB.DSServerClassGetClass(DSServerClass: TDSServerClass;
// var PersistentClass: TPersistentClass);
// begin
// PersistentClass := TDSServerModuleRFIDPanel;
// end;

procedure TRemoteDB.netshop_salesAfterOpen(DataSet: TDataSet);
var
  FirstVal: integer;
  OldIndex: string;
  OldFiltered: Boolean;
begin
  OldIndex                          := TClientDataSet(DataSet).IndexName;
  OldFiltered                       := DataSet.Filtered;
  DataSet.Filtered                  := False;
  TClientDataSet(DataSet).IndexName := 'SalesIXLocationId';
  DataSet.First;
  FirstVal := DataSet.fieldbyname('sales_id').AsInteger;
  DataSet.Next;
  if DataSet.fieldbyname('sales_id').AsInteger = FirstVal + 1 then
    DataSet.First;

  if DataSet.fieldbyname('sales_id').Value <> null then
    SQLDSItemsSold.Params.ParamByName('sales_id_min').Value := DataSet.fieldbyname('sales_id').Value
  else
    SQLDSItemsSold.Params.ParamByName('sales_id_min').Value := 0;
  if OldFiltered then
    DataSet.Filtered                := True;
  TClientDataSet(DataSet).IndexName := OldIndex;
end;

procedure TRemoteDB.CarousselNewRecord(DataSet: TDataSet);
begin
  self.Caroussel.fieldbyname('id').Value      := GetNextSubIdSimple(DataSet as TCustomClientDataSet, 'id');
  self.Caroussel.fieldbyname('shop_id').Value := CONNECTEDSHOP;
end;

procedure TRemoteDB.netshop_cashcloseCalcFields(DataSet: TDataSet);
begin
  DataSet.fieldbyname('cashclose_datedisp').Value := DataSet.fieldbyname('cashclose_datetime').Value;
end;

procedure TRemoteDB.netshop_cashcloseNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('cashclose_datetime').Value := now;
  DataSet.fieldbyname('cashclose_shopid').Value   := CONNECTEDSHOP;
  DataSet.fieldbyname('cashclose_daytasks').Value := 'Aucune';
end;

procedure TRemoteDB.CDSActionsNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('shops_id').AsInteger  := CONNECTEDSHOP;
  DataSet.fieldbyname('datetime').AsDateTime := now();
end;

procedure TRemoteDB.CDSProDescFRAfterPost(DataSet: TDataSet);
var
  doPost: Boolean;
begin
  doPost := False;
  if self.Products.fieldbyname('products_intername').AsString <> CDSProDescFRproducts_name.AsString + ' ' + CDSProDescNLproducts_name.AsString then
  begin
    if self.Products.State = dsBrowse then
    begin
      self.Products.DisableControls;
      self.Products.Edit;
      doPost := True;
    end;
    if CDSProDescFRproducts_name.AsString <> CDSProDescNLproducts_name.AsString then
    begin
      self.Products.fieldbyname('products_intername').AsString := CDSProDescFRproducts_name.AsString + ' ' + CDSProDescNLproducts_name.AsString;
    end else begin
      self.Products.fieldbyname('products_intername').AsString := CDSProDescFR.fieldbyname('products_name').AsString;
    end;
    if doPost then
    begin
      self.Products.Post;
      self.Products.EnableControls;
    end;
  end;
end;

procedure TRemoteDB.CDSProDescFRNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('language_id').AsInteger := 1;
end;

procedure TRemoteDB.CDSProDescFRproducts_nameChange(Sender: TField);
begin
  if CDSProDescFRproducts_name.AsString = '' then
  begin
    if messagedlg('Voulez vous supprimer la référence FR pour ce produit ?', mtwarning, [mbYes, mbNo], 0) = mrYes then
      CDSProDescFR.delete;
  end;
end;

procedure TRemoteDB.CDSProDescNLAfterPost(DataSet: TDataSet);
var
  doPost: Boolean;
begin
  doPost := False;
  if self.Products.fieldbyname('products_intername').AsString <> CDSProDescFRproducts_name.AsString + ' ' + CDSProDescNLproducts_name.AsString then
  begin
    if self.Products.State = dsBrowse then
    begin
      self.Products.DisableControls;
      self.Products.Edit;
      doPost := True;
    end;
    if CDSProDescFRproducts_name.AsString <> CDSProDescNLproducts_name.AsString then
    begin
      self.Products.fieldbyname('products_intername').AsString := CDSProDescFRproducts_name.AsString + ' ' + CDSProDescNLproducts_name.AsString;
    end else begin
      self.Products.fieldbyname('products_intername').AsString := CDSProDescFR.fieldbyname('products_name').AsString;
    end;
    if doPost then
    begin
      self.Products.Post;
      self.Products.EnableControls;
    end;
  end;
end;

procedure TRemoteDB.CDSProDescNLNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('language_id').AsInteger := 2;
end;

function TRemoteDB.GetSold(Model: string; days: integer): Tpoint;
var
  CloneDS1, CloneDS2: TClientDataSet;
begin
  CloneDS1 := TClientDataSet.Create(nil);
  CloneDS2 := TClientDataSet.Create(nil);
  try
    Result.X := 0;
    Result.Y := 0;
    CloneDS1.CloneCursor(netshop_sales, True);
    CloneDS2.CloneCursor(netshop_items_sold, True);
    CloneDS1.IndexFieldNames := 'sales_date_time';
    CloneDS2.IndexFieldNames := 'items_sold_sales_id';
    CloneDS1.Filter          := 'sales_date_time > ' + FloatToStr(trunc(now - days));
    CloneDS1.Filtered        := True;
    CloneDS1.First;
    CloneDS2.Filter   := '(items_sold_sales_id > ' + CloneDS1.fieldbyname('sales_id').AsString + ') and (items_sold_model = ' + QuotedStr(Model) + ')';
    CloneDS2.Filtered := True;
    CloneDS2.First;
    while not CloneDS2.Eof do
    begin
      if CloneDS2.fieldbyname('items_sold_owner_id').Value = CONNECTEDSHOP then
      begin
        Result.X := Result.Y + CloneDS2.fieldbyname('items_sold_quantity').Value;
      end else begin
        Result.Y := Result.Y + CloneDS2.fieldbyname('items_sold_quantity').Value;
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
  CloneDS := TClientDataSet.Create(nil);
  try
    Result := 0;
    CloneDS.CloneCursor(netshop_stock, True);
    CloneDS.IndexFieldNames := 'product_model;product_owner_id';
    if CloneDS.FindKey([Model, CONNECTEDSHOP]) then
      while ((not CloneDS.Eof) and (CloneDS.fieldbyname('product_model').Value = Model) and (CloneDS.fieldbyname('product_owner_id').Value = CONNECTEDSHOP)) do
      begin
        Result := Result + CloneDS.fieldbyname('product_quantity').Value;
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
  CloneDS := TClientDataSet.Create(nil);
  try
    Result := 0;
    CloneDS.CloneCursor(netshop_stock, True);
    CloneDS.IndexFieldNames := 'product_model;product_owner_id';
    if CloneDS.FindKey([Model]) then
      while ((not CloneDS.Eof) and (CloneDS.fieldbyname('product_model').Value = Model)) do
      begin
        if CloneDS.fieldbyname('product_owner_id').Value <> CONNECTEDSHOP then
          Result := Result + CloneDS.fieldbyname('product_quantity').Value;
        CloneDS.Next;
      end;
  finally
    CloneDS.Free;
  end;
end;

function TRemoteDB.CheckField(DbName, FieldName: string; Value: Variant): Boolean;
var
  CloneDS: TClientDataSet;
begin
  CloneDS := TClientDataSet.Create(nil);
  try
    CloneDS.CloneCursor(TClientDataSet(self.FindComponent(DbName)), True);
    if CloneDS.locate(FieldName, Value, []) then
      Result := True
    else
      Result := False;
  finally
    CloneDS.Free;
  end;
end;

procedure TRemoteDB.netshop_invoicesAfterOpen(DataSet: TDataSet);
begin
  DataSet.First;
  if DataSet.fieldbyname('invoices_id').Value <> null then
    SQLDSInvoices_Items.Params.ParamByName('invoices_id_min').Value := DataSet.fieldbyname('invoices_id').Value
  else
    SQLDSInvoices_Items.Params.ParamByName('invoices_id_min').Value := 0;
end;

procedure TRemoteDB.netshop_invoicesNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('invoices_id').Value               := GetNextSubIdDouble(DataSet as TCustomClientDataSet, 'invoices_location', 'invoices_id');
  DataSet.fieldbyname('invoices_location').Value         := CONNECTEDSHOP;
  DataSet.fieldbyname('invoices_date_time').Value        := now;
  DataSet.fieldbyname('invoices_closed').Value           := 0;
  DataSet.fieldbyname('invoices_paid_cash').AsInteger    := 0;
  DataSet.fieldbyname('invoices_paid_bct').AsInteger     := 0;
  DataSet.fieldbyname('invoices_paid_proton').AsInteger  := 0;
  DataSet.fieldbyname('invoices_paid_visa').AsInteger    := 0;
  DataSet.fieldbyname('invoices_paid_voucher').AsInteger := 0;
end;

procedure TRemoteDB.DPInvoicesBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  Connection: TSQLConnection;
  SQL, ID, LOC: string;
  i: integer;
begin
  // Obtain a pointer to the connection from the source dataset
  case UpdateKind of
    ukModify:
      begin
        Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
        SQL        := '';
        for i      := 0 to DeltaDS.FieldCount - 1 do
        begin
          if not VarIsEmpty(DeltaDS.Fields[i].NewValue) then
          begin
            if SQL <> '' then
              SQL := SQL + ', ';
            SQL   := SQL + Format(DeltaDS.Fields[i].FieldName + ' = %s', [QuotedStr(VarToStr(DeltaDS.Fields[i].NewValue))]);
          end;
        end;
        if SQL <> '' then
        begin
          LOC := VarToStr(DeltaDS.fieldbyname('invoices_location').OldValue);
          ID  := VarToStr(DeltaDS.fieldbyname('invoices_id').OldValue);
          SQL := Format('UPDATE netshop_invoices SET %s ' + 'WHERE (invoices_location = %s) and (invoices_id = %s)', [SQL, LOC, ID]);
          Connection.Execute(SQL, nil, nil);
        end;
        Applied := True;
      end;

    ukDelete:
      begin
        Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
        SQL        := '';
        LOC        := VarToStr(DeltaDS.fieldbyname('invoices_location').OldValue);
        ID         := VarToStr(DeltaDS.fieldbyname('invoices_id').OldValue);
        SQL        := Format('DELETE from netshop_invoices WHERE (invoices_location = %s) and (invoices_id = %s)', [LOC, ID]);
        Connection.Execute(SQL, nil, nil);
        Applied := True;
      end;
  end;
end;

procedure TRemoteDB.DPItemsSoldBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  Connection: TSQLConnection;
  SQL, ID, LOC: string;
  IdQuery: TSQLDataSet;
  i: integer;
  match: Boolean;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
  case UpdateKind of
    ukinsert:
      begin
        // DeltaDS.FieldByName('items_sold_sales_id').NewValue:=DeltaDS.FieldByName('items_sold_sales_id').NewValue+35769;
      end;
    ukModify:
      begin
        SQL   := '';
        for i := 0 to DeltaDS.FieldCount - 1 do
        begin
          if not VarIsEmpty(DeltaDS.Fields[i].NewValue) then
          begin
            if SQL <> '' then
              SQL := SQL + ', ';
            SQL   := SQL + Format(DeltaDS.Fields[i].FieldName + ' = %s', [QuotedStr(VarToStr(DeltaDS.Fields[i].NewValue))]);
          end;
        end;
        if SQL <> '' then
        begin
          ID  := VarToStr(DeltaDS.fieldbyname('items_sold_id').OldValue);
          SQL := Format('UPDATE netshop_items_sold SET %s ' + 'WHERE (items_sold_id = %s)', [SQL, ID]);
          Connection.Execute(SQL, nil, nil);
        end;
        Applied := True;
      end;
  end;

end;

procedure TRemoteDB.netshop_invoices_itemsNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('invoices_items_id').AsInteger     := GetNextSubIdSimple(DataSet as TCustomClientDataSet, 'invoices_items_id');
  DataSet.fieldbyname('invoices_items_location').Value   := netshop_invoices.fieldbyname('invoices_location').Value;
  DataSet.fieldbyname('invoices_items_invoice_id').Value := netshop_invoices.fieldbyname('invoices_id').Value;
  DataSet.fieldbyname('invoices_items_refunded').Value   := 0;
end;

procedure TRemoteDB.SetProductPrice(Price: double);
var
  DBState: TdatasetState;
begin
  DBState := Products.State;
  if self.Products.FieldByName('products_price_old').AsFloat <> Price then
  begin
    if DBState = dsBrowse then
      Products.Edit;
    self.Products.fieldbyname('products_price_old').Value := Products.fieldbyname('products_price').Value;
    self.Products.FieldByName('products_price_changed').AsDateTime        := now;
    if DBState = dsBrowse then
      Products.Post;
  end;

  if Tax_Zones.Active and Tax_Class.Active and Tax_Rates.Active then
  begin
    Tax_Zones.FindKey([18]);
    Tax_Class.FindKey([self.Products.FieldByName('products_tax_class_id').Value]);
    Tax_Rates.FindKey([Tax_Zones.fieldbyname('Geo_Zone_id').Value, Tax_Class.fieldbyname('Tax_Class_Id').Value]);
    if DBState = dsBrowse then
      Products.Edit;
    Products.fieldbyname('products_price').Value := round(Price / (1 + Tax_Rates.fieldbyname('Tax_Rate').AsFloat / 100) * 1000) / 1000;
    if DBState = dsBrowse then
      Products.Post;
  end;
  self.SQLQuery.CommandText := 'CALL `update_product_price`(' + QuotedStr(self.Products.fieldbyname('products_CLD_id').AsString) + ',' +
    QuotedStr(self.Products.fieldbyname('products_model').Value) + ',' + FloatToStrWithDecimalPoint(Price) + ',0)';
  self.SQLQuery.ExecSQL;
end;

procedure TRemoteDB.netshop_invoicesCalcFields(DataSet: TDataSet);
begin
  DataSet.fieldbyname('invoices_date_disp').Value       := DataSet.fieldbyname('invoices_date_time').Value;
  DataSet.fieldbyname('Invoices_paid_TotalTTC').AsFloat := DataSet.fieldbyname('invoices_paid_Cash').AsFloat + DataSet.fieldbyname('invoices_paid_bct').AsFloat
    + DataSet.fieldbyname('invoices_paid_proton').AsFloat + DataSet.fieldbyname('invoices_paid_visa').AsFloat +
    DataSet.fieldbyname('invoices_paid_voucher').AsFloat;
end;

function TRemoteDB.GetPriceHT(Model: string; PriceTTC: double): double;
var
  Cproducts, Ctax_class, Ctax_rates: TClientDataSet;
begin
  Cproducts  := TClientDataSet.Create(nil);
  Ctax_class := TClientDataSet.Create(nil);
  Ctax_rates := TClientDataSet.Create(nil);
  try
    Cproducts.CloneCursor(Products, True);
    Ctax_class.CloneCursor(Tax_Class, True);
    Ctax_rates.CloneCursor(Tax_Rates, True);
    if Cproducts.locate('products_model', Model, []) then
    begin
      if Ctax_class.locate('tax_class_id', Cproducts.FieldValues['products_tax_class_id'], []) then
      begin
        if Ctax_rates.locate('tax_class_id;tax_zone_id', Vararrayof([Cproducts.FieldValues['products_tax_class_id'], GeoZoneTaxId]), []) then
        begin
          Result := round(PriceTTC / (1 + (Ctax_rates.FieldValues['tax_rate'] / 100)) * 1000) / 1000;
        end
        else
          messagedlg('Configuration TVA non Valide', mtwarning, [mbok], 0);
      end
      else
        messagedlg('Configuration TVA non Valide', mtwarning, [mbok], 0);
    end;
  finally
    Cproducts.Free;
    Ctax_class.Free;
    Ctax_rates.Free;
  end;
end;

function TRemoteDB.GetPriceTTC(Model: string; PriceHT: double): double;
var
  Cproducts, Ctax_class, Ctax_rates: TClientDataSet;
begin
  Cproducts  := TClientDataSet.Create(nil);
  Ctax_class := TClientDataSet.Create(nil);
  Ctax_rates := TClientDataSet.Create(nil);
  try
    Cproducts.CloneCursor(Products, True);
    Ctax_class.CloneCursor(Tax_Class, True);
    Ctax_rates.CloneCursor(Tax_Rates, True);
    if Cproducts.locate('products_model', Model, []) then
    begin
      if Ctax_class.locate('tax_class_id', Cproducts.FieldValues['products_tax_class_id'], []) then
      begin
        if Ctax_rates.locate('tax_class_id;tax_zone_id', Vararrayof([Cproducts.FieldValues['products_tax_class_id'], GeoZoneTaxId]), []) then
        begin
          Result := round(PriceHT * (1 + (Ctax_rates.FieldValues['tax_rate'] / 100)) * 1000) / 1000;
        end
        else
          messagedlg('Configuration TVA non Valide', mtwarning, [mbok], 0);
      end
      else
        messagedlg('Configuration TVA non Valide', mtwarning, [mbok], 0);
    end;
  finally
    Cproducts.Free;
    Ctax_class.Free;
    Ctax_rates.Free;
  end;
end;

procedure TRemoteDB.netshop_invoices_itemsCalcFields(DataSet: TDataSet);
begin
  DataSet.fieldbyname('invoices_items_PTOTHT').Value := DataSet.fieldbyname('invoices_items_quantity').Value *
    DataSet.fieldbyname('invoices_items_price_catalog').Value;
  DataSet.fieldbyname('invoices_items_PTOTTVA').Value := DataSet.fieldbyname('invoices_items_quantity').Value *
    DataSet.fieldbyname('invoices_items_price_TVA').Value;
  DataSet.fieldbyname('invoices_items_PTOTTTC').Value := DataSet.fieldbyname('invoices_items_PTOTHT').Value +
    DataSet.fieldbyname('invoices_items_PTOTTVA').Value;
end;

function TRemoteDB.GetChildCategories(Category_id: integer): Catarray;
var
  Cat: TClientDataSet;
  Child: Catarray;
  i: integer;
begin
  Cat := TClientDataSet.Create(nil);
  try
    i := (Length(Result)) + 1;
    SetLength(Result, i);
    Result[high(Result)] := Category_id;
    Cat.CloneCursor(Categories, True);
    Cat.Filter   := 'parent_id = ' + inttostr(Category_id);
    Cat.Filtered := True;
    Cat.First;
    while not Cat.Eof do
    begin
      i := (Length(Result)) + 1;
      SetLength(Result, i);
      Result[high(Result)] := Cat.fieldbyname('categories_id').AsInteger;
      Child                := GetChildCategories(Cat.fieldbyname('categories_id').AsInteger);
      for i                := low(Child) to high(Child) do
      begin
        SetLength(Result, high(Result) + 1);
        Result[high(Result)] := Child[i];
      end;
      Cat.Next;
    end
  finally
    Cat.Free
  end;
end;

procedure TRemoteDB.DPExpensesBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  Connection: TSQLConnection;
  SQL, ID, LOC: string;
  i: integer;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
  case UpdateKind of
    ukModify:
      begin
        // Update table customers
        SQL   := '';
        for i := 0 to DeltaDS.FieldCount - 1 do
        begin
          if not VarIsEmpty(DeltaDS.Fields[i].NewValue) then
          begin
            if SQL <> '' then
              SQL := SQL + ', ';
            SQL   := SQL + Format(DeltaDS.Fields[i].FieldName + ' = %s', [QuotedStr(VarToStr(DeltaDS.Fields[i].NewValue))]);
          end;
        end;
        if SQL <> '' then
        begin
          LOC := VarToStr(DeltaDS.fieldbyname('expenses_shop_id').OldValue);
          ID  := VarToStr(DeltaDS.fieldbyname('expenses_id').OldValue);
          SQL := Format('UPDATE netshop_expenses SET %s ' + 'WHERE (expenses_shop_id = %s) and (expenses_id = %s)', [SQL, LOC, ID]);
          Connection.Execute(SQL, nil, nil);
        end;
        Applied := True;
      end;
    ukDelete:
      begin
        LOC := VarToStr(DeltaDS.fieldbyname('expenses_shop_id').OldValue);
        ID  := VarToStr(DeltaDS.fieldbyname('expenses_id').OldValue);
        // Delete from the first table
        SQL := Format('DELETE FROM netshop_expenses WHERE (expenses_shop_id = %s) and (expenses_id = %s)', [LOC, ID]);
        Connection.Execute(SQL, nil, nil);
        Applied := True
      end;
  end;
end;

function TRemoteDB.ExecQueryReport(query_id: integer): Boolean;
begin
  if CDSQueries.locate('id', query_id, []) then
  begin
    SQLQuery.CommandText := CDSQueries.fieldbyname('sql_query').AsString;

  end else begin
    Result := False;
  end;
end;

procedure TRemoteDB.netshop_expensesCalcFields(DataSet: TDataSet);
begin
  // Dataset.FieldByName('expenses_date_time_display').Value:=Dataset.FieldByName('expenses_date_time').Value;
end;

procedure TRemoteDB.netshop_expensesNewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname('expenses_id').Value        := GetNextSubIdDouble(DataSet as TCustomClientDataSet, 'expenses_shop_id', 'expenses_id');
  DataSet.fieldbyname('expenses_shop_id').Value   := CONNECTEDSHOP;
  DataSet.fieldbyname('expenses_date_time').Value := now;
  DataSet.fieldbyname('expenses_amount').Value    := 0;
end;

function TRemoteDB.CalcDayCahsierSummary(startdate, enddate: integer): TDayCashierSummary;
var
  CurrentSaleSubTot, ActualSaleSubTot: Currency;
  VatProcessed, LowMargin: Boolean;
  StempIndex, ITempIndex: string;

begin

  StempIndex                        := self.netshop_sales.IndexName;
  ITempIndex                        := self.netshop_items_sold.IndexName;
  self.netshop_sales.IndexName      := 'SalesIXLocationId';
  self.netshop_items_sold.IndexName := 'ItemsIXLocationId';
  self.netshop_items_sold.DisableControls;
  self.Products.IndexName := 'ProductsIXModel';
  self.Products.DisableControls;
  self.Products.Filtered := False;

  with Result do
  begin

    Open           := False;
    New            := 0;
    New0           := 0;
    New6           := 0;
    New21          := 0;
    Invoice0       := 0;
    Invoice6       := 0;
    Invoice21      := 0;
    Return21       := 0;
    Return6        := 0;
    Return0        := 0;
    SH             := 0;
    SHDeposit      := 0;
    SHBought       := 0;
    SHCostOfBought := 0;
    NoMargin       := 0;
    Service        := 0;
    TotalNature    := 0;
    Cash           := 0;
    BCT            := 0;
    Voucher        := 0;
    Visa           := 0;
    Proton         := 0;
    TotalPay       := 0;
    Refunds        := 0;
    Purchased      := 0;
    Returns        := 0;
    Expenses       := 0;
    ExpensesDesc   := '';

    ///
    /// Analyse des Factures
    ///
    self.netshop_invoices.Filter   := '(' + FloatToStr(startdate) + '< invoices_date_time and invoices_date_time < ' + FloatToStr(enddate + 1) + ')';
    self.netshop_invoices.Filtered := True;
    self.netshop_invoices.First;
    self.SetInvoicesItemsToInvoices;
    while not self.netshop_invoices.Eof do
    begin
      self.netshop_invoices_items.First;
      while not self.netshop_invoices_items.Eof do
      begin
        if self.netshop_invoices_items.fieldbyname('invoices_items_tva_rate').Value = 21 then
        begin
          Result.Invoice21 := Result.Invoice21 + self.netshop_invoices_items.fieldbyname('invoices_items_PTOTTTC').AsFloat;
        end;
        if self.netshop_invoices_items.fieldbyname('invoices_items_tva_rate').Value = 6 then
        begin
          Result.Invoice6 := Result.Invoice6 + self.netshop_invoices_items.fieldbyname('invoices_items_PTOTTTC').AsFloat;
        end;
        if self.netshop_invoices_items.fieldbyname('invoices_items_tva_rate').Value = 0 then
        begin
          Result.Invoice0 := Result.Invoice0 + self.netshop_invoices_items.fieldbyname('invoices_items_PTOTTTC').AsFloat;
        end;
        self.netshop_invoices_items.Next;
      end;
      self.netshop_invoices.Next;
    end;
    self.netshop_invoices.Filtered := False;
    self.netshop_invoices.Filter   := '';

    ///
    /// Analyse Ventes
    ///
    self.netshop_sales.Filter := '(' + FloatToStr(startdate) + '< sales_date_time and sales_date_time < ' + FloatToStr(enddate + 1) + ') and (sales_location = '
      + inttostr(CONNECTEDSHOP) + ')';
    self.netshop_sales.Filtered := True;
    self.netshop_sales.First;
    while not self.netshop_sales.Eof do
    begin
      Open := True;
      if (True) then
      begin
        ///
        /// Analyse des moyens de payment
        ///
        Cash    := Cash + netshop_sales.fieldbyname('sales_paid_cash').AsFloat;
        Proton  := Proton + netshop_sales.fieldbyname('sales_paid_Proton').AsFloat;
        BCT     := BCT + netshop_sales.fieldbyname('sales_paid_BCT').AsFloat;
        Visa    := Visa + netshop_sales.fieldbyname('sales_paid_Visa').AsFloat;
        Voucher := Voucher + netshop_sales.fieldbyname('sales_paid_Voucher').AsFloat;
        self.netshop_items_sold.First;
        CurrentSaleSubTot := 0;
        while not self.netshop_items_sold.Eof do
        begin
          ///
          /// Analyse de la nature des produits
          ///
          if (self.netshop_items_sold.fieldbyname('items_sold_owner_id').Value < 100000) and
            (self.netshop_items_sold.fieldbyname('items_sold_supplier_id').Value < 100000) then
          begin
            VatProcessed := False;
            if self.Products.FindKey([self.netshop_items_sold.fieldbyname('items_sold_model').Value]) then
            begin

              if self.Products.fieldbyname('products_promo').AsString <> 'True' then
                LowMargin := False
              else
                LowMargin := True;

              // Ventilation par TVA
              if self.Products.FieldByName('products_tax_class_id').Value = 1 then
              begin
                New21 := New21 + self.netshop_items_sold.fieldbyname('items_sold_price_Stock').Value *
                  self.netshop_items_sold.fieldbyname('items_sold_quantity').Value;
                VatProcessed := True;
              end;
              if self.Products.FieldByName('products_tax_class_id').Value = 2 then
              begin
                New6 := New6 + self.netshop_items_sold.fieldbyname('items_sold_price_Stock').Value *
                  self.netshop_items_sold.fieldbyname('items_sold_quantity').Value;
                VatProcessed := True;
              end;
              if self.Products.FieldByName('products_tax_class_id').Value = 3 then
              begin
                New0 := New0 + self.netshop_items_sold.fieldbyname('items_sold_price_Stock').Value *
                  self.netshop_items_sold.fieldbyname('items_sold_quantity').Value;
                VatProcessed := True;
              end;

            end;
            if not VatProcessed then
            begin
              // Showmessage('Produit supprimé '+Self.Products.FieldByName('products_model').asstring+ ' ' +Self.CDSProDescFR.FieldByName('products_name').asstring);
              New21 := New21 + self.netshop_items_sold.fieldbyname('items_sold_price_Stock').Value *
                self.netshop_items_sold.fieldbyname('items_sold_quantity').Value;
            end;

            if not LowMargin then
            begin
              New := New + self.netshop_items_sold.fieldbyname('items_sold_price_Stock').Value *
                self.netshop_items_sold.fieldbyname('items_sold_quantity').Value;
            end else begin
              NoMargin := NoMargin + self.netshop_items_sold.fieldbyname('items_sold_price_Stock').Value *
                self.netshop_items_sold.fieldbyname('items_sold_quantity').Value;
            end;

          end else begin
            SH := SH + self.netshop_items_sold.fieldbyname('items_sold_price_Stock').Value * self.netshop_items_sold.fieldbyname('items_sold_quantity').Value;
            if (self.netshop_items_sold.fieldbyname('items_sold_owner_id').Value >= 100000) then
              SHDeposit := SHDeposit + self.netshop_items_sold.fieldbyname('items_sold_price_Stock').Value *
                self.netshop_items_sold.fieldbyname('items_sold_quantity').Value;
            if (self.netshop_items_sold.fieldbyname('items_sold_owner_id').Value < 100000) and
              (self.netshop_items_sold.fieldbyname('items_sold_supplier_id').Value >= 100000) then
            begin
              SHBought := SHBought + self.netshop_items_sold.fieldbyname('items_sold_price_Stock').Value *
                self.netshop_items_sold.fieldbyname('items_sold_quantity').Value;
              SHCostOfBought := SHCostOfBought + self.netshop_items_sold.fieldbyname('items_sold_price_gross').Value *
                self.netshop_items_sold.fieldbyname('items_sold_quantity').Value;
            end;
          end;

          ///
          /// Analyse concordance Montants Items et Sales
          ///
          CurrentSaleSubTot := CurrentSaleSubTot + self.netshop_items_sold.fieldbyname('items_sold_price_Stock').Value *
            self.netshop_items_sold.fieldbyname('items_sold_quantity').Value;
          Application.ProcessMessages;
          self.netshop_items_sold.Next;
        end;
      end;
      ActualSaleSubTot := netshop_sales.fieldbyname('sales_paid_total').AsFloat;
      if not(CurrentSaleSubTot = ActualSaleSubTot) then
      begin
        messagedlg('La Vente ' + netshop_sales.fieldbyname('sales_id').AsString + ' pose problème. Sous total produits = ' + FloatToStr(CurrentSaleSubTot) +
          ' <> Total Vente = ' + netshop_sales.fieldbyname('sales_paid_total').AsString, mtwarning, [mbYes, mbNo], 0)
      end;
      self.netshop_sales.Next;
    end;

    ///
    /// Analyse Retours
    ///
    self.netshop_refunds.Filter := '(' + FloatToStr(startdate) + '< refunds_date_time and refunds_date_time < ' + FloatToStr(enddate + 1) +
      ') and (refunds_shop_id = ' + inttostr(CONNECTEDSHOP) + ') and (refunds_nature = ' + QuotedStr('Retour') + ')';
    self.netshop_refunds.Filtered := True;
    self.netshop_refunds.First;
    VatProcessed := False;
    while not self.netshop_refunds.Eof do
    begin
      Open := True;
      if self.Products.FindKey([self.netshop_refunds.fieldbyname('refunds_items_id').Value]) then
      begin
        // Ventilation par TVA
        if self.Products.fieldbyname('products_tax_class_id').Value = 1 then
        begin
          Return21     := Return21 + self.netshop_refunds.fieldbyname('refunds_amount').Value;
          VatProcessed := True;
        end;
        if self.Products.fieldbyname('products_tax_class_id').Value = 2 then
        begin
          Return6      := Return6 + self.netshop_refunds.fieldbyname('refunds_amount').Value;
          VatProcessed := True;
        end;

      end;
      if not VatProcessed then
      begin
        Return21 := Return21 + self.netshop_refunds.fieldbyname('refunds_amount').Value;
      end;

      Returns := Returns + self.netshop_refunds.fieldbyname('refunds_amount').Value;
      self.netshop_refunds.Next;
    end;
    self.netshop_refunds.Filter   := '';
    self.netshop_refunds.Filtered := False;

    ///
    /// Analyse Rembours
    ///
    self.netshop_refunds.Filter := '(' + FloatToStr(startdate) + '< refunds_date_time and refunds_date_time < ' + FloatToStr(enddate + 1) +
      ') and (refunds_shop_id = ' + inttostr(CONNECTEDSHOP) + ') and (refunds_nature = ' + QuotedStr('Retrait') + ')';
    self.netshop_refunds.Filtered := True;
    self.netshop_refunds.First;
    while not self.netshop_refunds.Eof do
    begin
      Open    := True;
      Refunds := Refunds - self.netshop_refunds.fieldbyname('refunds_amount').Value;
      self.netshop_refunds.Next;
    end;

    ///
    /// Analyse Achats
    ///
    self.netshop_refunds.Filter := '(' + FloatToStr(startdate) + '< refunds_date_time and refunds_date_time < ' + FloatToStr(enddate + 1) +
      ') and (refunds_shop_id = ' + inttostr(CONNECTEDSHOP) + ') and (refunds_nature = ' + QuotedStr('Achat') + ')';
    self.netshop_refunds.Filtered := True;
    self.netshop_refunds.First;
    while not self.netshop_refunds.Eof do
    begin
      Open      := True;
      Purchased := Purchased + self.netshop_refunds.fieldbyname('refunds_amount').Value;
      self.netshop_refunds.Next;
    end;

    ///
    /// Anayse Dépenses
    ///
    self.netshop_expenses.Filter := '(' + FloatToStr(startdate) + '< expenses_date_time and expenses_date_time < ' + FloatToStr(enddate + 1) +
      ') and (expenses_shop_id = ' + inttostr(CONNECTEDSHOP) + ')';
    self.netshop_expenses.Filtered := True;
    self.netshop_expenses.First;
    while not self.netshop_expenses.Eof do
    begin
      Open     := True;
      Expenses := Expenses + netshop_expenses.fieldbyname('expenses_amount').AsFloat;
      if ExpensesDesc <> '' then
        ExpensesDesc := ExpensesDesc + ' - ';
      ExpensesDesc   := ExpensesDesc + self.netshop_expenses.fieldbyname('expenses_description').AsString;
      self.netshop_expenses.Next;
    end;

    TotalNature := New + NoMargin + SH + Service + Returns;
    TotalPay    := Cash - Refunds + Returns - Expenses - Purchased;
  end;

  netshop_items_sold.Filter    := '';
  netshop_items_sold.Filtered  := False;
  netshop_items_sold.IndexName := ITempIndex;
  netshop_items_sold.EnableControls;

  netshop_sales.Filter    := '';
  netshop_sales.Filtered  := False;
  netshop_sales.IndexName := StempIndex;
  self.netshop_sales.EnableControls;

  self.netshop_refunds.Filter   := '';
  self.netshop_refunds.Filtered := False;

  self.Products.EnableControls;
end;

function TRemoteDB.CalcInvoiceTVA(TaxClassRate: integer): double;
begin
  Result := 0;
  with self.netshop_invoices_items do
  begin
    First;
    while not Eof do
    begin
      if fieldbyname('invoices_items_tva_rate').Value = TaxClassRate then
      begin
        Result := Result + (fieldbyname('invoices_items_price_tva').Value * fieldbyname('invoices_items_quantity').Value);
      end;
      Next;
    end;
  end;
end;

function TRemoteDB.CalcInvoiceTVABase(TaxClassRate: integer): double;
begin
  Result := 0;
  with self.netshop_invoices_items do
  begin
    First;
    while not Eof do
    begin
      if fieldbyname('invoices_items_tva_rate').Value = TaxClassRate then
      begin
        Result := Result + (fieldbyname('invoices_items_price_catalog').Value * fieldbyname('invoices_items_quantity').Value);
      end;
      Next;
    end;
  end;
end;

function TRemoteDB.GetMotherCategory(Category_id: integer): integer;
var
  CloneDS: TClientDataSet;
begin
  CloneDS := TClientDataSet.Create(nil);
  try
    CloneDS.CloneCursor(Categories, True);
    CloneDS.IndexFieldNames := 'categories_id';
    CloneDS.FindKey([Category_id]);
    while not((CloneDS.fieldbyname('parent_id').Value = 0) or (CloneDS.fieldbyname('parent_id').Value = 116)) do
    begin
      CloneDS.FindKey([CloneDS.fieldbyname('parent_id').Value]);
    end;
    Result := CloneDS.fieldbyname('categories_id').Value
  finally
    CloneDS.Free;
  end;
end;

function TRemoteDB.GetRootCategoryName(Category_id: integer): string;
var
  CloneDS: TClientDataSet;
begin
  CloneDS := TClientDataSet.Create(nil);
  try
    Result:='';
    CloneDS.CloneCursor(Categories, True);
    CloneDS.IndexFieldNames := 'categories_id';
    CloneDS.FindKey([Category_id]);
    while not((CloneDS.fieldbyname('parent_id').Value = 0) or (CloneDS.fieldbyname('parent_id').Value = 116)) do
    begin
      if CloneDS.FindKey([CloneDS.fieldbyname('parent_id').Value]) then begin
       if self.Categories.locate('categories_id', CloneDS.fieldbyname('categories_id').Value, []) then begin
         if Result='' then
         Result :=  self.Categories.FieldByName('categories_name').asString
         else
         Result :=  self.Categories.FieldByName('categories_name').asString + ' - '  + Result;
       end;
      end else begin
       Exit;
      end;
    end;
  finally
    CloneDS.Free;
  end;
end;

function TRemoteDB.IsArchive(Category_id: integer): Boolean;
var
  CloneDS: TClientDataSet;
begin
  CloneDS := TClientDataSet.Create(nil);
  try
    CloneDS.CloneCursor(Categories, True);
    CloneDS.IndexFieldNames := 'categories_id';
    CloneDS.FindKey([Category_id]);
    while not((CloneDS.fieldbyname('parent_id').Value = 0)) do
    begin
      CloneDS.FindKey([CloneDS.fieldbyname('parent_id').Value]);
    end;
    if CloneDS.fieldbyname('categories_id').Value = 116 then
      Result := True
    else
      Result := False;
  finally
    CloneDS.Free;
  end;
end;

function TRemoteDB.GetRootCategory(Category_id: integer): integer;
var
  CloneDS: TClientDataSet;
begin
  CloneDS := TClientDataSet.Create(nil);
  try
    CloneDS.CloneCursor(Categories, True);
    CloneDS.IndexFieldNames := 'categories_id';
    CloneDS.FindKey([Category_id]);
    while not((CloneDS.fieldbyname('parent_id').Value = 0)) do
    begin
      CloneDS.FindKey([CloneDS.fieldbyname('parent_id').Value]);
    end;
    Result := CloneDS.fieldbyname('categories_id').Value
  finally
    CloneDS.Free;
  end;
end;

procedure TRemoteDB.ProductsRebuildRootCatNames;
var
  CatName: string;
begin
  Products.DisableControls;
  Categories.DisableControls;
  try
    Products.First;
    while not Products.Eof do
    begin
      CatName := '';
      if self.Categories.locate('categories_id', self.GetMotherCategory(Products.fieldbyname('categories_id').Value), []) then
      begin
        CatName := self.Categoriescategories_name.AsString;
        Products.Edit;
        if IsArchive(Products.fieldbyname('categories_id').Value) then
          Products.fieldbyname('products_isobsolete').AsString := 'True'
        else
          Products.fieldbyname('products_isobsolete').AsString := 'False';
        Products.fieldbyname('products_root_category_name').AsString := CatName;
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
var
  CatName: string;
begin
  //if self.Categories.locate('categories_id', self.GetMotherCategory(Products.fieldbyname('categories_id').Value), []) then
  begin
    //CatName := self.Categories.FieldByName('categories_name').AsString;
    // Products.Edit;
    //Products.fieldbyname('products_root_category_name').AsString := CatName;
     Products.fieldbyname('products_root_category_name').AsString := Self.GetRootCategoryName(Products.fieldbyname('categories_id').Value);
    if IsArchive(Products.fieldbyname('categories_id').Value) then
      Products.fieldbyname('products_isobsolete').AsString := 'True'
    else
      Products.fieldbyname('products_isobsolete').AsString := 'False';
    // Products.Post
  end;
end;

function TRemoteDB.GetPurchasePrice(ProductModel: string; Margin: integer): double;
begin

end;

end.
