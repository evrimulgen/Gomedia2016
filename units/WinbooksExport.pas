unit WinbooksExport;

interface

uses DBClient, DB, Qexport4, Qexport4DBFPATCH, sysutils, clientDMUnit, Dialogs,
  Controls, DateUtils, GlobalsUnit;

type
  TCSFDB = class
    CSFDS: TclientDataset;
  private
    aRemoteDB: TRemoteDB;
  public
    constructor Create(RemoteDB: TRemoteDB);
    procedure SaveToDbf;
    procedure AddCurrentCustomer;
  published
  end;

  TACTDB = class
    ACTDS: TclientDataset;
    ACSFDB: TCSFDB;
  private
    aRemoteDB: TRemoteDB;
  public
    constructor Create(RemoteDB: TRemoteDB);
    procedure SaveToDbf;
  published
  end;

  TACTDBBANK = class(TACTDB)
  private
  public
  published
    procedure AddVisaIn(DateExec, DateDoc: tdatetime; Nbr, ShopAccount: string; AmountGross, AmountDisc: double; Comment: string);
    procedure AddBCTIn(DateExec, DateDoc: tdatetime; Nbr, ShopAccount: string; AmountGross: double; Comment: string);
    procedure AddSupplierOut(DateExec, DateDoc: tdatetime; Nbr, SupplierAccount: string; AmountGross: double; Comment: string);
    procedure AddCustomerIn(DateExec, DateDoc: tdatetime; Nbr, CustomerAccount: string; AmountGross: double; Comment: string);
    procedure AddVarious;
  end;

  TACTDBCASH = class(TACTDB)

  private
    ADayCashierSummary: TDayCashierSummary;
    ACTShopClientCode: string;
    ACTShopBookCode: string;
    ACTShopAccount: string;
    ACTSHOPEaccount: string;
    ACTPeriod: string;
    ACTSHOPInvoiceCode: string;
    DateProcessing: Tdate;
    NbrProcessing: integer;
    procedure WriteSale(amount: double; account: string); overload;
    procedure WriteSale(amount: double; account, Comment: string); overload;
    procedure WritePurchase(amount: double; account, Comment: string); overload;
    procedure WriteEPayment(amount: double); overload;
    procedure WriteEPayment(amount: double; Comment: string); overload;
    procedure WriteInvoice(amount: double; account, Comment: string);
    procedure AddSales(Date: Tdate);
    procedure AddInvoices(Date: Tdate);
    procedure AddExpenses(Date: Tdate);
    procedure AddInput(Date: Tdate);
    procedure AddRefunds;
    procedure WriteExpense(amount: double; Comment: string);
    procedure AddPurchased;
  public
    InvoiceData: TclientDataset;
    Base6: double;
    Tax6: double;
    Base21: double;
    Tax21: double;
    Base0: double;
    constructor Create(ShopClientCode, ShopBookCode, ShopAccount, ShopEAccount, ShopInvoiceCode, Period: string; RemoteDB: TRemoteDB);
    procedure AddDaySales(Nbr: integer; Date: Tdate; DayCashier: TDayCashierSummary);
    procedure AddDayInvoices(Date: Tdate);
    procedure WriteVCOInvoice(DOCNUMBER: integer; AMOUNTEUR: double; ACCOUNTRP, Comment: string);

  published
  end;

implementation

{ TACTDBCASH }
constructor TACTDBCASH.Create(ShopClientCode, ShopBookCode, ShopAccount, ShopEAccount, ShopInvoiceCode, Period: string; RemoteDB: TRemoteDB);
begin
  Self.ACTShopClientCode  := ShopClientCode;
  Self.ACTShopBookCode    := ShopBookCode;
  Self.ACTShopAccount     := ShopAccount;
  Self.ACTSHOPEaccount    := ShopEAccount;
  Self.ACTSHOPInvoiceCode := ShopInvoiceCode;
  Self.ACTPeriod          := Period;
  Self.aRemoteDB          := RemoteDB;

  Self.InvoiceData := TclientDataset.Create(nil);

  Self.InvoiceData.FieldDefs.Add('Rate', ftfloat);
  Self.InvoiceData.FieldDefs.Add('Base', ftfloat);
  Self.InvoiceData.FieldDefs.Add('Tax', ftfloat);
  Self.InvoiceData.FieldDefs.Add('Account', ftInteger);

  Self.InvoiceData.CreateDataSet;

  inherited Create(RemoteDB);

end;

procedure TACTDBCASH.AddDaySales(Nbr: integer; Date: Tdate; DayCashier: TDayCashierSummary);
begin
  Self.DateProcessing     := Date;
  Self.NbrProcessing      := Nbr;
  Self.ADayCashierSummary := DayCashier;
  AddSales(Date);
  AddInput(Date);
  AddInvoices(Date);
  AddRefunds;
  AddPurchased;
  AddExpenses(Date);
end;

procedure TACTDBCASH.AddExpenses(Date: Tdate);
begin
  aRemoteDB.netshop_expenses.Filter := '(' + floattostr(Trunc(DateProcessing)) + '< expenses_date_time and expenses_date_time < ' +
    floattostr(Trunc(DateProcessing) + 1) + ')';
  aRemoteDB.netshop_expenses.Filtered := True;
  aRemoteDB.netshop_expenses.DisableControls;
  aRemoteDB.netshop_expenses.First;
  try
    while not aRemoteDB.netshop_expenses.Eof do
    begin
      Self.WriteExpense(aRemoteDB.netshop_expenses.FieldByName('expenses_amount').AsFloat,
        'Sortie : ' + aRemoteDB.netshop_expenses.FieldByName('expenses_description').AsString);
      aRemoteDB.netshop_expenses.Next;
    end;
  finally
    aRemoteDB.netshop_expenses.Filter   := '';
    aRemoteDB.netshop_expenses.Filtered := False;
    aRemoteDB.netshop_expenses.EnableControls;
  end;
end;

procedure TACTDBCASH.AddInvoices(Date: Tdate);
begin
  aRemoteDB.netshop_invoices.Filter := '(' + floattostr(Trunc(DateProcessing)) + '< invoices_date_time and invoices_date_time < ' +
    floattostr(Trunc(DateProcessing) + 1) + ')';
  aRemoteDB.netshop_invoices.Filtered := True;
  aRemoteDB.netshop_invoices.DisableControls;
  aRemoteDB.netshop_invoices.First;
  while not aRemoteDB.netshop_invoices.Eof do
  begin
    if aRemoteDB.netshop_invoices.FieldByName('invoices_closed').Value <> 1 then
    begin
      aRemoteDB.netshop_invoices.Edit;
      aRemoteDB.netshop_invoices.FieldByName('invoices_closed').Value := 1;
      aRemoteDB.netshop_invoices.Post;
    end;
    if aRemoteDB.Customers.Locate('customers_nbr', aRemoteDB.netshop_invoices.FieldByName('invoices_customer_id').Value, []) then
      Self.ACSFDB.AddCurrentCustomer;

    {
      if aRemoteDB.Invoicesinvoices_paid_proton.AsFloat <> 0 then begin
      self.WriteSale(-aRemoteDB.Invoicesinvoices_paid_proton.AsFloat,aRemoteDB.Invoicesinvoices_customer_id.AsString,'Facture '+aRemoteDB.Invoicesinvoices_location.AsString+'-'+aRemoteDB.Invoicesinvoices_id.AsString);
      end;
    }

    // Ecriture Transfer du Compte client comptoir vers client id
    Self.WriteSale(aRemoteDB.netshop_invoices.FieldByName('invoices_paid_TotalTTC').Value, aRemoteDB.netshop_invoices.FieldByName('invoices_customer_id')
      .AsString, 'Pointe caisse Fact. ' + aRemoteDB.netshop_invoices.FieldByName('invoices_location').AsString + '-' +
      aRemoteDB.netshop_invoices.FieldByName('invoices_id').AsString);
    Self.WriteSale(-aRemoteDB.netshop_invoices.FieldByName('invoices_paid_TotalTTC').Value, Self.ACTShopClientCode);
    aRemoteDB.netshop_invoices.Next;
  end;
  aRemoteDB.netshop_invoices.EnableControls;

  Self.ACSFDB.SaveToDbf;
end;

procedure TACTDBCASH.AddInput(Date: Tdate);
begin
  if ADayCashierSummary.BCT <> 0 then
    Self.WriteEPayment(ADayCashierSummary.BCT);
  if ADayCashierSummary.Visa <> 0 then
    Self.WriteEPayment(ADayCashierSummary.Visa);
  if ADayCashierSummary.Proton <> 0 then
  begin
    aRemoteDB.netshop_sales.Filter := '(' + floattostr(Date) + '< sales_date_time and sales_date_time < ' + floattostr(Date + 1) + ') and (sales_location = ' +
      inttoSTR(CONNECTEDSHOP) + ')';
    aRemoteDB.netshop_sales.Filtered := True;
    aRemoteDB.netshop_sales.First;
    while not aRemoteDB.netshop_sales.Eof do
    begin
      if aRemoteDB.netshop_sales.FieldByName('sales_paid_proton').AsFloat > 0 then
      begin
        if aRemoteDB.netshop_salessales_customer_id.Value = CONNECTEDSHOP then
          ShowMessage('Paiement par banque authorisť sur le compte client comptoir, vente : ' + aRemoteDB.netshop_salessales_id.AsString);
        Self.WriteSale(-aRemoteDB.netshop_salessales_paid_proton.AsFloat, aRemoteDB.netshop_salessales_customer_id.AsString,
          'Paiement banque ' + aRemoteDB.netshop_salessales_id.AsString);
      end;
      aRemoteDB.netshop_sales.Next;
    end;
  end;
end;

procedure TACTDBCASH.AddSales(Date: Tdate);
begin
  if Self.ADayCashierSummary.New + Self.ADayCashierSummary.NoMargin <> 0 then
    Self.WriteSale(Self.ADayCashierSummary.New + Self.ADayCashierSummary.NoMargin, Self.ACTShopClientCode, 'Ventes neufs');
  if Self.ADayCashierSummary.SH <> 0 then
    Self.WriteSale(Self.ADayCashierSummary.SH, Self.ACTShopClientCode, 'Ventes occasions');
  if Self.ADayCashierSummary.Service <> 0 then
    Self.WriteSale(Self.ADayCashierSummary.Service, Self.ACTShopClientCode, 'Services');
  if Self.ADayCashierSummary.Returns <> 0 then
    Self.WriteSale(Self.ADayCashierSummary.Returns, Self.ACTShopClientCode, 'Annulation vente');
end;

procedure TACTDBCASH.AddRefunds;
begin
  if ADayCashierSummary.Voucher <> 0 then
    Self.WriteSale(-ADayCashierSummary.Voucher, Self.ACTShopClientCode, 'Bon achat');
  if ADayCashierSummary.Refunds <> 0 then
    Self.WriteSale(-ADayCashierSummary.Refunds, Self.ACTShopClientCode, 'Rembours');
end;

procedure TACTDBCASH.AddPurchased;
begin
  if ADayCashierSummary.Purchased <> 0 then
    Self.WritePurchase(-ADayCashierSummary.Purchased, Self.ACTShopClientCode, 'Achat occasion');
end;

procedure TACTDBCASH.AddDayInvoices(Date: Tdate);
begin
  Self.DateProcessing := Date;
  aRemoteDB.SetInvoicesItemsToInvoices;
  aRemoteDB.netshop_invoices.Filter := '(' + floattostr(Trunc(DateProcessing)) + '< invoices_date_time and invoices_date_time < ' +
    floattostr(Trunc(DateProcessing) + 1) + ')';
  aRemoteDB.netshop_invoices.Filtered := True;
  aRemoteDB.netshop_invoices.First;
  while not aRemoteDB.netshop_invoices.Eof do
  begin
    Self.InvoiceData.First;
    while not Self.InvoiceData.Eof do
    begin
      Self.InvoiceData.Delete;
    end;
    aRemoteDB.netshop_invoices_items.First;
    while not aRemoteDB.netshop_invoices_items.Eof do
    begin
      if InvoiceData.Locate('rate', aRemoteDB.netshop_invoices_items.FieldByName('invoices_items_tva_rate').AsFloat, []) then
      begin
        InvoiceData.Edit;
        InvoiceData.FieldByName('base').Value := InvoiceData.FieldByName('base').Value + aRemoteDB.netshop_invoices_items.FieldByName
          ('invoices_items_PTOTHT').Value;
        InvoiceData.FieldByName('tax').Value := InvoiceData.FieldByName('tax').Value + aRemoteDB.netshop_invoices_items.FieldByName
          ('invoices_items_PTOTTVA').Value;
      end else begin
        InvoiceData.Append;
        InvoiceData.FieldByName('Rate').Value := aRemoteDB.netshop_invoices_items.FieldByName('invoices_items_tva_rate').AsFloat;
        InvoiceData.FieldByName('base').Value := aRemoteDB.netshop_invoices_items.FieldByName('invoices_items_PTOTHT').Value;
        InvoiceData.FieldByName('tax').Value  := aRemoteDB.netshop_invoices_items.FieldByName('invoices_items_PTOTTVA').Value;
        InvoiceData.Post;
      end;
      aRemoteDB.netshop_invoices_items.Next;
    end;
    Self.WriteInvoice(aRemoteDB.netshop_invoices.FieldByName('invoices_paid_totalTTC').AsFloat, aRemoteDB.netshop_invoices.FieldByName('invoices_customer_id')
      .AsString, '');
    aRemoteDB.netshop_invoices.Next;
  end;
  aRemoteDB.netshop_invoices.Filtered := False;
end;

procedure TACTDBCASH.WriteSale(amount: double; account: string);
begin
  // Imputation sur le compte de caisse +
  with Self.ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '3';
    FieldByName('DBKCODE').AsString := Self.ACTShopBookCode;
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsInteger := Round(Self.NbrProcessing);
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := Self.ACTShopAccount;
    FieldByName('ACCOUNTRP').AsString := '';
    // FieldByName('BOOKYEAR');
    FieldByName('PERIOD').AsString    := Self.ACTPeriod;
    FieldByName('DATE').AsDateTime    := Self.DateProcessing;
    FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
    // FieldByName('DUEDATE');
    // FieldByName('COMMENT');
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := amount;
    // FieldByName('VATBASE');
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;

  // Imputation sur le compte client -
  with Self.ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '1';
    FieldByName('DBKCODE').AsString := Self.ACTShopBookCode;
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsInteger := Round(Self.NbrProcessing);
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := '400000';
    FieldByName('ACCOUNTRP').AsString := account;
    // FieldByName('BOOKYEAR');
    FieldByName('PERIOD').AsString    := Self.ACTPeriod;
    FieldByName('DATE').AsDateTime    := Self.DateProcessing;
    FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
    // FieldByName('DUEDATE');
    // FieldByName('COMMENT');
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := -amount;
    // FieldByName('VATBASE');
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;
end;

procedure TACTDBCASH.WriteSale(amount: double; account, Comment: string);
begin
  // Imputation sur le compte de caisse +
  with Self.ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '3';
    FieldByName('DBKCODE').AsString := Self.ACTShopBookCode;
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsInteger := Round(Self.NbrProcessing);
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := Self.ACTShopAccount;
    FieldByName('ACCOUNTRP').AsString := '';
    // FieldByName('BOOKYEAR');
    FieldByName('PERIOD').AsString    := Self.ACTPeriod;
    FieldByName('DATE').AsDateTime    := Self.DateProcessing;
    FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
    // FieldByName('DUEDATE');
    // FieldByName('COMMENT');
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := amount;
    // FieldByName('VATBASE');
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;

  // Imputation sur le compte client -
  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '1';
    FieldByName('DBKCODE').AsString := Self.ACTShopBookCode;
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsInteger := Round(Self.NbrProcessing);
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := '400000';
    FieldByName('ACCOUNTRP').AsString := account;
    // FieldByName('BOOKYEAR');
    FieldByName('PERIOD').AsString    := Self.ACTPeriod;
    FieldByName('DATE').AsDateTime    := Self.DateProcessing;
    FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
    // FieldByName('DUEDATE');
    FieldByName('COMMENT').AsString := Comment;
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := -amount;
    // FieldByName('VATBASE');
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;
end;

procedure TACTDBCASH.WritePurchase(amount: double; account, Comment: string);
begin
  // Imputation sur le compte de caisse +
  with Self.ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '3';
    FieldByName('DBKCODE').AsString := Self.ACTShopBookCode;
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsInteger := Round(Self.NbrProcessing);
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := Self.ACTShopAccount;
    FieldByName('ACCOUNTRP').AsString := '';
    // FieldByName('BOOKYEAR');
    FieldByName('PERIOD').AsString    := Self.ACTPeriod;
    FieldByName('DATE').AsDateTime    := Self.DateProcessing;
    FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
    // FieldByName('DUEDATE');
    // FieldByName('COMMENT');
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := amount;
    // FieldByName('VATBASE');
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;

  // Imputation sur le compte Fournisseur -
  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '2';
    FieldByName('DBKCODE').AsString := Self.ACTShopBookCode;
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsInteger := Round(Self.NbrProcessing);
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := '440000';
    FieldByName('ACCOUNTRP').AsString := account;
    // FieldByName('BOOKYEAR');
    FieldByName('PERIOD').AsString    := Self.ACTPeriod;
    FieldByName('DATE').AsDateTime    := Self.DateProcessing;
    FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
    // FieldByName('DUEDATE');
    FieldByName('COMMENT').AsString := Comment;
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := -amount;
    // FieldByName('VATBASE');
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;
end;

procedure TACTDBCASH.WriteEPayment(amount: double);
begin
  // Imputation sur le compte de caisse +
  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '3';
    FieldByName('DBKCODE').AsString := Self.ACTShopBookCode;
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsInteger := Round(Self.NbrProcessing);
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := Self.ACTShopAccount;
    FieldByName('ACCOUNTRP').AsString := '';
    // FieldByName('BOOKYEAR');
    FieldByName('PERIOD').AsString    := Self.ACTPeriod;
    FieldByName('DATE').AsDateTime    := Self.DateProcessing;
    FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
    // FieldByName('DUEDATE');
    // FieldByName('COMMENT');
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := -amount;
    // FieldByName('VATBASE');
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;

  // Imputation sur le compte client -
  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '3';
    FieldByName('DBKCODE').AsString := Self.ACTShopBookCode;
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsInteger := Round(Self.NbrProcessing);
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := Self.ACTSHOPEaccount;
    FieldByName('ACCOUNTRP').AsString := '';
    // FieldByName('BOOKYEAR');
    FieldByName('PERIOD').AsString    := Self.ACTPeriod;
    FieldByName('DATE').AsDateTime    := Self.DateProcessing;
    FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
    // FieldByName('DUEDATE');
    // FieldByName('COMMENT');
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := +amount;
    // FieldByName('VATBASE');
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;
end;

procedure TACTDBCASH.WriteEPayment(amount: double; Comment: string);
begin
  // Imputation sur le compte de caisse +
  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '3';
    FieldByName('DBKCODE').AsString := Self.ACTShopBookCode;
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsInteger := Round(Self.NbrProcessing);
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := Self.ACTShopAccount;
    FieldByName('ACCOUNTRP').AsString := '';
    // FieldByName('BOOKYEAR');
    FieldByName('PERIOD').AsString    := Self.ACTPeriod;
    FieldByName('DATE').AsDateTime    := Self.DateProcessing;
    FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
    // FieldByName('DUEDATE');
    // FieldByName('COMMENT');
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := -amount;
    // FieldByName('VATBASE');
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;

  // Imputation sur le compte client -
  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '3';
    FieldByName('DBKCODE').AsString := Self.ACTShopBookCode;
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsInteger := Round(Self.NbrProcessing);
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := Self.ACTSHOPEaccount;
    FieldByName('ACCOUNTRP').AsString := '';
    // FieldByName('BOOKYEAR');
    FieldByName('PERIOD').AsString    := Self.ACTPeriod;
    FieldByName('DATE').AsDateTime    := Self.DateProcessing;
    FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
    // FieldByName('DUEDATE');
    FieldByName('COMMENT').AsString := Comment;
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := +amount;
    // FieldByName('VATBASE');
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;
end;

procedure TACTDBCASH.WriteExpense(amount: double; Comment: string);
var
  PROCESSED: BOOLEAN;
begin

  // Imputation sur le financier de caisse +
  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '3';
    FieldByName('DBKCODE').AsString := Self.ACTShopBookCode;
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsInteger := Round(Self.NbrProcessing);
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := Self.ACTShopAccount;
    FieldByName('ACCOUNTRP').AsString := '';
    // FieldByName('BOOKYEAR');
    FieldByName('PERIOD').AsString    := Self.ACTPeriod;
    FieldByName('DATE').AsDateTime    := Self.DateProcessing;
    FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
    // FieldByName('DUEDATE');
    // FieldByName('COMMENT');
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := -amount;
    // FieldByName('VATBASE');
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;

  // Imputation sur le compte d'attente
  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '3';
    FieldByName('DBKCODE').AsString := Self.ACTShopBookCode;
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsInteger := Round(Self.NbrProcessing);
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    PROCESSED := False;
    if aNSIPos(UpperCase('poste'), UpperCase(Comment)) > 0 then
    begin
      FieldByName('ACCOUNTGL').AsString := '612030';
      PROCESSED                         := True;
    end;
    if aNSIPos(UpperCase('banque'), UpperCase(Comment)) > 0 then
    begin
      FieldByName('ACCOUNTGL').AsString := '580000';
      PROCESSED                         := True;
    end;
    if not PROCESSED then
    begin
      FieldByName('ACCOUNTGL').AsString := '499000';
    end;
    FieldByName('ACCOUNTRP').AsString := '';
    // FieldByName('BOOKYEAR');
    FieldByName('PERIOD').AsString    := Self.ACTPeriod;
    FieldByName('DATE').AsDateTime    := Self.DateProcessing;
    FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
    // FieldByName('DUEDATE');
    FieldByName('COMMENT').AsString := Comment;
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := +amount;
    // FieldByName('VATBASE');
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;
end;

procedure TACTDBCASH.WriteInvoice(amount: double; account, Comment: string);
var
  BaseTot: double;
begin
  BaseTot := 0;
  InvoiceData.First;
  while not InvoiceData.Eof do
  begin
    BaseTot := BaseTot + InvoiceData.FieldValues['Base'];
    InvoiceData.Next;
  end;
  // Imputation 4000 Client
  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '1';
    FieldByName('DBKCODE').AsString := Self.ACTSHOPInvoiceCode;
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsInteger := aRemoteDB.netshop_invoices.FieldByName('invoices_id').AsInteger;
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := '400000';
    FieldByName('ACCOUNTRP').AsString := account;
    // FieldByName('BOOKYEAR');
    FieldByName('PERIOD').AsString    := Self.ACTPeriod;
    FieldByName('DATE').AsDateTime    := Self.DateProcessing;
    FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
    // FieldByName('DUEDATE');
    // FieldByName('COMMENT');
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := amount;
    FieldByName('VATBASE').AsFloat := BaseTot;
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;

  // Imputation 70000
  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '3';
    FieldByName('DBKCODE').AsString := Self.ACTSHOPInvoiceCode;
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsInteger := aRemoteDB.netshop_invoices.FieldByName('invoices_id').AsInteger;
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := '700000';
    FieldByName('ACCOUNTRP').AsString := account;
    // FieldByName('BOOKYEAR');
    FieldByName('PERIOD').AsString    := Self.ACTPeriod;
    FieldByName('DATE').AsDateTime    := Self.DateProcessing;
    FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
    // FieldByName('DUEDATE');
    // FieldByName('COMMENT').AsString:=Comment;
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := -BaseTot;
    // FieldByName('VATBASE');
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;

    // Imputation des comptes TVA
    InvoiceData.First;
    while not InvoiceData.Eof do
    begin
      with ACTDS do
      begin
        Append;
        FieldByName('DOCTYPE').AsString := '3';
        FieldByName('DBKCODE').AsString := Self.ACTSHOPInvoiceCode;
        // FieldByName('DBKTYPE');
        FieldByName('DOCNUMBER').AsInteger := aRemoteDB.netshop_invoices.FieldByName('invoices_id').AsInteger;
        // FieldByName('DOCORDER');
        // FieldByName('OPCODE');
        FieldByName('ACCOUNTGL').AsString := '451000';
        FieldByName('ACCOUNTRP').AsString := account;
        // FieldByName('BOOKYEAR');
        FieldByName('PERIOD').AsString    := Self.ACTPeriod;
        FieldByName('DATE').AsDateTime    := Self.DateProcessing;
        FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
        // FieldByName('DUEDATE');
        // FieldByName('COMMENT').AsString:=Comment;
        // FieldByName('COMMENTEXT');
        FieldByName('AMOUNT').Value    := 0;
        FieldByName('AMOUNTEUR').Value := -InvoiceData.FieldValues['Tax'];
        FieldByName('VATBASE').Value   := InvoiceData.FieldValues['Base'];
        FieldByName('VATCODE').Value   := InvoiceData.FieldValues['Rate'];
        // FieldByName('CURRAMOUNT');
        // FieldByName('CURRCODE');
        /// FieldByName('CUREURBASE');
        // FieldByName('VATTAX');
        // FieldByName('VATIMPUT');
        // FieldByName('CURRATE');
        // FieldByName('REMINDLEV');
        // FieldByName('MATCHNO');
        // FieldByName('OLDDATE');
        FieldByName('ISMATCHED').Value  := False;
        FieldByName('ISLOCKED').Value   := False;
        FieldByName('ISIMPORTED').Value := False;;
        FieldByName('ISPOSITIVE').Value := False;
        FieldByName('ISTEMP').Value     := False;
        FieldByName('MEMOTYPE').Value   := '0';
        FieldByName('ISDOC').Value      := False;
        FieldByName('DOCSTATUS').Value  := '0';
        Post;
        InvoiceData.Next;
      end;
    end;
  end;
end;

procedure TACTDBCASH.WriteVCOInvoice(DOCNUMBER: integer; AMOUNTEUR: double; ACCOUNTRP, Comment: string);
var
  BaseTot: double;
begin
  BaseTot := 0;
  InvoiceData.First;
  while not InvoiceData.Eof do
  begin
    BaseTot := BaseTot + InvoiceData.FieldValues['Base'];
    InvoiceData.Next;
  end;
  // Imputation 4000 Client
  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '1';
    FieldByName('DBKCODE').AsString := 'VCO';
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsInteger := DOCNUMBER;
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := '400000';
    FieldByName('ACCOUNTRP').AsString := ACCOUNTRP;
    // FieldByName('BOOKYEAR');
    FieldByName('PERIOD').AsString    := Self.ACTPeriod;
    FieldByName('DATE').AsDateTime    := Self.DateProcessing;
    FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
    // FieldByName('DUEDATE');
    // FieldByName('COMMENT');
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := AMOUNTEUR;
    FieldByName('VATBASE').AsFloat := BaseTot;
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;

  // Imputation 70000
  // Imputation des comptes TVA
  InvoiceData.First;
  while not InvoiceData.Eof do
  begin
    with ACTDS do
    begin
      Append;
      FieldByName('DOCTYPE').AsString := '3';
      FieldByName('DBKCODE').AsString := 'VCO';
      // FieldByName('DBKTYPE');
      FieldByName('DOCNUMBER').AsInteger := DOCNUMBER;
      // FieldByName('DOCORDER');
      // FieldByName('OPCODE');
      FieldByName('ACCOUNTGL').AsString := InvoiceData.FieldValues['account'];;
      FieldByName('ACCOUNTRP').AsString := ACCOUNTRP;
      // FieldByName('BOOKYEAR');
      FieldByName('PERIOD').AsString    := Self.ACTPeriod;
      FieldByName('DATE').AsDateTime    := Self.DateProcessing;
      FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
      // FieldByName('DUEDATE');
      // FieldByName('COMMENT').AsString:=Comment;
      // FieldByName('COMMENTEXT');
      FieldByName('AMOUNT').Value    := 0;
      FieldByName('AMOUNTEUR').Value := -InvoiceData.FieldValues['base'];
      FieldByName('VATBASE').Value   := -InvoiceData.FieldValues['base'];
      // FieldByName('VATCODE');
      // FieldByName('CURRAMOUNT');
      // FieldByName('CURRCODE');
      /// FieldByName('CUREURBASE');
      // FieldByName('VATTAX');
      FieldByName('VATIMPUT').Value := InvoiceData.FieldValues['Rate'];
      // if InvoiceData.FieldValues['rate'].Value=0 then FieldByName('VATIMPUT').Value:=211100;
      // if InvoiceData.FieldValues['rate'].Value=6 then FieldByName('VATIMPUT').Value:=211200;
      // if InvoiceData.FieldValues['rate'].Value=21 then FieldByName('VATIMPUT').Value:=211400;
      // FieldByName('CURRATE');
      // FieldByName('REMINDLEV');
      // FieldByName('MATCHNO');
      // FieldByName('OLDDATE');
      FieldByName('ISMATCHED').Value  := False;
      FieldByName('ISLOCKED').Value   := False;
      FieldByName('ISIMPORTED').Value := False;;
      FieldByName('ISPOSITIVE').Value := False;
      FieldByName('ISTEMP').Value     := False;
      FieldByName('MEMOTYPE').Value   := '0';
      FieldByName('ISDOC').Value      := False;
      FieldByName('DOCSTATUS').Value  := '0';
      Post;
    end;
    InvoiceData.Next;
  end;

  // 21
  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '3';
    FieldByName('DBKCODE').AsString := 'VCO';
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsInteger := DOCNUMBER;
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := '451000';
    FieldByName('ACCOUNTRP').AsString := ACCOUNTRP;
    // FieldByName('BOOKYEAR');
    FieldByName('PERIOD').AsString    := Self.ACTPeriod;
    FieldByName('DATE').AsDateTime    := Self.DateProcessing;
    FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
    // FieldByName('DUEDATE');
    // FieldByName('COMMENT').AsString:=Comment;
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := -Tax21;
    FieldByName('VATBASE').Value   := Base21;
    FieldByName('VATCODE').Value   := 21;
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;

  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '3';
    FieldByName('DBKCODE').AsString := 'VCO';
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsInteger := DOCNUMBER;
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := '451000';
    FieldByName('ACCOUNTRP').AsString := ACCOUNTRP;
    // FieldByName('BOOKYEAR');
    FieldByName('PERIOD').AsString    := Self.ACTPeriod;
    FieldByName('DATE').AsDateTime    := Self.DateProcessing;
    FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
    // FieldByName('DUEDATE');
    // FieldByName('COMMENT').AsString:=Comment;
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := -Tax6;
    FieldByName('VATBASE').Value   := Base6;
    FieldByName('VATCODE').Value   := 6;
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;

  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '3';
    FieldByName('DBKCODE').AsString := 'VCO';
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsInteger := DOCNUMBER;
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := '451000';
    FieldByName('ACCOUNTRP').AsString := ACCOUNTRP;
    // FieldByName('BOOKYEAR');
    FieldByName('PERIOD').AsString    := Self.ACTPeriod;
    FieldByName('DATE').AsDateTime    := Self.DateProcessing;
    FieldByName('DATEDOC').AsDateTime := Self.DateProcessing;
    // FieldByName('DUEDATE');
    // FieldByName('COMMENT').AsString:=Comment;
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := 0;
    FieldByName('VATBASE').Value   := Base0;
    FieldByName('VATCODE').Value   := 0;
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;

end;

{ TCSFDB }

procedure TCSFDB.AddCurrentCustomer;
begin
  with CSFDS do
  begin
    Append;
    FieldByName('NUMBER').AsString := aRemoteDB.Customerscustomers_nbr.AsString;
    FieldByName('TYPE').AsString   := '1';
    if aRemoteDB.Customerscustomers_Lastname.AsString = '' then
    begin
      ShowMessage('Nom Obligatoire ! Erreur sur client # ' + inttoSTR(aRemoteDB.Customerscustomers_nbr.AsInteger));
      exit;
    end;
    FieldByName('NAME2').AsString    := aRemoteDB.Customerscustomers_firstname.AsString;
    FieldByName('NAME1').AsString    := aRemoteDB.Customerscustomers_Lastname.AsString;
    FieldByName('CIVNAME1').AsString := '';
    FieldByName('CIVNAME2').AsString := '';
    // DB2  FieldByName('ADRESS1').AsString:=aRemoteDB.Customersentry_street_address.AsString;
    FieldByName('ADRESS1').AsString := aRemoteDB.Address_Bookentry_street_address.AsString;
    FieldByName('ADRESS2').AsString := '';
    if aRemoteDB.Customerscustomers_isTVA.Value = 'True' then
      FieldByName('VATCAT').AsString := '1'
    else
      FieldByName('VATCAT').AsString  := '0';
    FieldByName('COUNTRY').AsString   := 'BE';
    FieldByName('VATNUMBER').AsString := aRemoteDB.Customerscustomers_TVA.AsString;
    FieldByName('PAYCODE').AsString   := aRemoteDB.Customerscustomers_paycode.AsString;
    FieldByName('TELNUMBER').AsString := aRemoteDB.Customerscustomers_telephone.AsString;
    FieldByName('FAXNUMBER').AsString := aRemoteDB.Customerscustomers_fax.AsString;
    FieldByName('BNKACCNT').AsString  := aRemoteDB.Customerscustomers_bank_account.AsString;
    // DB2  FieldByName('ZIPCODE').AsString:=aRemoteDB.Customersentry_postcode.AsString;
    // DB2  FieldByName('CITY').AsString:=aRemoteDB.Customersentry_city.AsString;
    FieldByName('ZIPCODE').AsString   := aRemoteDB.Address_Bookentry_postcode.AsString;
    FieldByName('CITY').AsString      := aRemoteDB.Address_Bookentry_city.AsString;
    FieldByName('DEFLTPOST').AsString := aRemoteDB.Customerscustomers_defltpost.AsString;
    FieldByName('LANG').AsString      := 'F';
    FieldByName('CENTRAL').AsString   := '';
    FieldByName('VATCODE').AsString   := '211400';
    Post;
  end;
end;

constructor TCSFDB.Create(RemoteDB: TRemoteDB);
begin
  Self.aRemoteDB := RemoteDB;
  Self.CSFDS     := TclientDataset.Create(nil);
  with CSFDS.FieldDefs do
  begin
    Add('NUMBER', ftstring, 10);
    Add('TYPE', ftstring, 1);
    Add('NAME1', ftstring, 40);
    Add('NAME2', ftstring, 40);
    Add('CIVNAME1', ftstring, 6);
    Add('CIVNAME2', ftstring, 6);
    Add('ADRESS1', ftstring, 40);
    Add('ADRESS2', ftstring, 40);
    Add('VATCAT', ftstring, 1);
    Add('COUNTRY', ftstring, 2);
    Add('VATNUMBER', ftstring, 17);
    Add('PAYCODE', ftstring, 4);
    Add('TELNUMBER', ftstring, 17);
    Add('FAXNUMBER', ftstring, 17);
    Add('BNKACCNT', ftstring, 14);
    Add('ZIPCODE', ftstring, 10);
    Add('CITY', ftstring, 30);
    Add('DEFLTPOST', ftstring, 10);
    Add('LANG', ftstring, 1);
    Add('CATEGORY', ftstring, 5);
    Add('CENTRAL', ftstring, 8);
    Add('VATCODE', ftstring, 10);
    Add('CURRENCY', ftstring, 3);
    Add('LASTREMLEV', ftstring, 1);
    Add('LASTREMDAT', ftdate);
    Add('TOTDEB1', ftfloat);
    Add('TOTCRE1', ftfloat);
    Add('TOTDEBTMP1', ftfloat);
    Add('TOTCRETMP1', ftfloat);
    Add('TOTDEB2', ftfloat);
    Add('TOTCRE2', ftfloat);
    Add('TOTDEBTMP2', ftfloat);
    Add('TOTCRETMP2', ftfloat);
    Add('ISLOCKED', ftboolean);
    Add('MEMOTYPE', ftstring, 1);
    Add('ISDOC', ftboolean);
  end;
  Self.CSFDS.CreateDataSet;

  inherited Create;
end;

procedure TCSFDB.SaveToDbf;
var
  Exporter: TQexport4DBF;
begin
  ChDir(ExtractFilePath(ParamStr(0)));
  if not(DirectoryExists('export')) then
  begin
    CreateDir('export');
  end;
  ChDir(ExtractFilePath(ParamStr(0)) + '/export');
  Exporter              := TQexport4DBF.Create(nil);
  Exporter.FileName     := 'CSF.DBF';
  Exporter.ExportSource := esDataset;
  Exporter.DataSet      := Self.CSFDS;
  Exporter.Execute;
end;

{ TACTDB }

procedure TACTDBBANK.AddBCTIn(DateExec, DateDoc: tdatetime; Nbr, ShopAccount: string; AmountGross: double; Comment: string);
begin
  // Imputation de la Base
  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '3';
    FieldByName('DBKCODE').AsString := 'F95';
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsString := Nbr;
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := ShopAccount;
    FieldByName('ACCOUNTRP').AsString := '';
    // Eventually Supplier or Customer MemoCode
    // FieldByName('BOOKYEAR');
    {
      if MonthOf(DateDoc)<4 then FieldByName('PERIOD').AsString:='04';
      if (MonthOf(DateDoc)<7) and (MonthOf(DateDoc)>3) then FieldByName('PERIOD').AsString:='01';
      if (MonthOf(DateDoc)<10) and (MonthOf(DateDoc)>6) then FieldByName('PERIOD').AsString:='02';
      if MonthOf(DateDoc)>9 then FieldByName('PERIOD').AsString:='03';
    }
    if (MonthOf(DateDoc) - 3) <= 0 then
    begin
      FieldByName('PERIOD').AsInteger := MonthOf(DateDoc) + 9;
    end else begin
      FieldByName('PERIOD').AsInteger := MonthOf(DateDoc) - 3;
    end;

    FieldByName('DATE').AsDateTime    := DateExec;
    FieldByName('DATEDOC').AsDateTime := DateDoc;
    // FieldByName('DUEDATE');
    FieldByName('COMMENT').AsString := Comment;
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := -AmountGross;
    // FieldByName('VATBASE');
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;
  Self.SaveToDbf;
end;

procedure TACTDBBANK.AddCustomerIn(DateExec, DateDoc: tdatetime; Nbr, CustomerAccount: string; AmountGross: double; Comment: string);
begin
  // Imputation de la Base
  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '1';
    FieldByName('DBKCODE').AsString := 'F95';
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsString := Nbr;
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := '400000';
    FieldByName('ACCOUNTRP').AsString := CustomerAccount;
    // Eventually Supplier or Customer MemoCode
    // FieldByName('BOOKYEAR');
    {
      if MonthOf(DateDoc)<4 then FieldByName('PERIOD').AsString:='04';
      if (MonthOf(DateDoc)<7) and (MonthOf(DateDoc)>3) then FieldByName('PERIOD').AsString:='01';
      if (MonthOf(DateDoc)<10) and (MonthOf(DateDoc)>6) then FieldByName('PERIOD').AsString:='02';
      if MonthOf(DateDoc)>9 then FieldByName('PERIOD').AsString:='03';
    }
    if (MonthOf(DateDoc) - 3) <= 0 then
    begin
      FieldByName('PERIOD').AsInteger := MonthOf(DateDoc) + 9;
    end else begin
      FieldByName('PERIOD').AsInteger := MonthOf(DateDoc) - 3;
    end;

    FieldByName('DATE').AsDateTime    := DateExec;
    FieldByName('DATEDOC').AsDateTime := DateDoc;
    // FieldByName('DUEDATE');
    FieldByName('COMMENT').AsString := Comment;
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := -AmountGross;
    // FieldByName('VATBASE');
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;
  Self.SaveToDbf;
end;

procedure TACTDBBANK.AddSupplierOut(DateExec, DateDoc: tdatetime; Nbr, SupplierAccount: string; AmountGross: double; Comment: string);
begin
  // Imputation de la Base
  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '2';
    FieldByName('DBKCODE').AsString := 'F95';
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsString := Nbr;
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := '440000';
    FieldByName('ACCOUNTRP').AsString := SupplierAccount;
    // Eventually Supplier or Customer MemoCode
    // FieldByName('BOOKYEAR');
    {
      if MonthOf(DateDoc)<4 then FieldByName('PERIOD').AsString:='04';
      if (MonthOf(DateDoc)<7) and (MonthOf(DateDoc)>3) then FieldByName('PERIOD').AsString:='01';
      if (MonthOf(DateDoc)<10) and (MonthOf(DateDoc)>6) then FieldByName('PERIOD').AsString:='02';
      if MonthOf(DateDoc)>9 then FieldByName('PERIOD').AsString:='03';
    }
    if (MonthOf(DateDoc) - 3) <= 0 then
    begin
      FieldByName('PERIOD').AsInteger := MonthOf(DateDoc) + 9;
    end else begin
      FieldByName('PERIOD').AsInteger := MonthOf(DateDoc) - 3;
    end;

    FieldByName('DATE').AsDateTime    := DateExec;
    FieldByName('DATEDOC').AsDateTime := DateDoc;
    // FieldByName('DUEDATE');
    FieldByName('COMMENT').AsString := Comment;
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := -AmountGross;
    // FieldByName('VATBASE');
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;
  Self.SaveToDbf;
end;

procedure TACTDBBANK.AddVarious;
begin
  Self.SaveToDbf;
end;

procedure TACTDBBANK.AddVisaIn(DateExec, DateDoc: tdatetime; Nbr, ShopAccount: string; AmountGross, AmountDisc: double; Comment: string);
begin
  // Imputation de la Base
  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '3';
    FieldByName('DBKCODE').AsString := 'F95';
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsString := Nbr;
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := ShopAccount;
    FieldByName('ACCOUNTRP').AsString := '';
    // Eventually Supplier or Customer MemoCode
    // FieldByName('BOOKYEAR');
    {
      if MonthOf(DateDoc)<4 then FieldByName('PERIOD').AsString:='04';
      if (MonthOf(DateDoc)<7) and (MonthOf(DateDoc)>3) then FieldByName('PERIOD').AsString:='01';
      if (MonthOf(DateDoc)<10) and (MonthOf(DateDoc)>6) then FieldByName('PERIOD').AsString:='02';
      if MonthOf(DateDoc)>9 then FieldByName('PERIOD').AsString:='03';
    }
    if (MonthOf(DateDoc) - 3) <= 0 then
    begin
      FieldByName('PERIOD').AsInteger := MonthOf(DateDoc) + 9;
    end else begin
      FieldByName('PERIOD').AsInteger := MonthOf(DateDoc) - 3;
    end;

    FieldByName('DATE').AsDateTime    := DateExec;
    FieldByName('DATEDOC').AsDateTime := DateDoc;
    // FieldByName('DUEDATE');
    FieldByName('COMMENT').AsString := Comment;
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := -AmountGross;
    // FieldByName('VATBASE');
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;

  // Imputation des Frais
  with ACTDS do
  begin
    Append;
    FieldByName('DOCTYPE').AsString := '3';
    FieldByName('DBKCODE').AsString := 'F95';
    // FieldByName('DBKTYPE');
    FieldByName('DOCNUMBER').AsString := Nbr;
    // FieldByName('DOCORDER');
    // FieldByName('OPCODE');
    FieldByName('ACCOUNTGL').AsString := '653000';
    FieldByName('ACCOUNTRP').AsString := '';
    // Eventually Supplier or Customer MemoCode
    // FieldByName('BOOKYEAR');
    {
      if MonthOf(DateDoc)<4 then FieldByName('PERIOD').AsString:='04';
      if (MonthOf(DateDoc)<7) and (MonthOf(DateDoc)>3) then FieldByName('PERIOD').AsString:='01';
      if (MonthOf(DateDoc)<10) and (MonthOf(DateDoc)>6) then FieldByName('PERIOD').AsString:='02';
      if MonthOf(DateDoc)>9 then FieldByName('PERIOD').AsString:='03';
    }
    if (MonthOf(DateDoc) - 3) <= 0 then
    begin
      FieldByName('PERIOD').AsInteger := MonthOf(DateDoc) + 9;
    end else begin
      FieldByName('PERIOD').AsInteger := MonthOf(DateDoc) - 3;
    end;

    FieldByName('DATE').AsDateTime    := DateExec;
    FieldByName('DATEDOC').AsDateTime := DateDoc;
    // FieldByName('DUEDATE');
    FieldByName('COMMENT').AsString := 'Escompte : ' + Comment;
    // FieldByName('COMMENTEXT');
    FieldByName('AMOUNT').Value    := 0;
    FieldByName('AMOUNTEUR').Value := AmountDisc;
    // FieldByName('VATBASE');
    // FieldByName('VATCODE');
    // FieldByName('CURRAMOUNT');
    // FieldByName('CURRCODE');
    /// FieldByName('CUREURBASE');
    // FieldByName('VATTAX');
    // FieldByName('VATIMPUT');
    // FieldByName('CURRATE');
    // FieldByName('REMINDLEV');
    // FieldByName('MATCHNO');
    // FieldByName('OLDDATE');
    FieldByName('ISMATCHED').Value  := False;
    FieldByName('ISLOCKED').Value   := False;
    FieldByName('ISIMPORTED').Value := False;;
    FieldByName('ISPOSITIVE').Value := False;
    FieldByName('ISTEMP').Value     := False;
    FieldByName('MEMOTYPE').Value   := '0';
    FieldByName('ISDOC').Value      := False;
    FieldByName('DOCSTATUS').Value  := '0';
    Post;
  end;
  Self.SaveToDbf;
end;

constructor TACTDB.Create(RemoteDB: TRemoteDB);
begin
  Self.aRemoteDB := RemoteDB;
  ACSFDB         := TCSFDB.Create(Self.aRemoteDB);
  ACTDS          := TclientDataset.Create(nil);
  with ACTDS.FieldDefs do
  begin
    Add('DOCTYPE', ftstring, 1);
    Add('DBKCODE', ftstring, 6);
    Add('DBKTYPE', ftstring, 1);
    Add('DOCNUMBER', ftstring, 8);
    Add('DOCORDER', ftstring, 3);
    Add('OPCODE', ftstring, 5);
    Add('ACCOUNTGL', ftstring, 8);
    Add('ACCOUNTRP', ftstring, 10);
    Add('BOOKYEAR', ftstring, 1);
    Add('PERIOD', ftstring, 2);
    Add('DATE', ftdate);
    Add('DATEDOC', ftdate);
    Add('DUEDATE', ftdate);
    Add('COMMENT', ftstring, 40);
    Add('COMMENTEXT', ftstring, 35);
    Add('AMOUNT', ftfloat);
    Add('AMOUNTEUR', ftfloat);
    Add('VATBASE', ftfloat);
    Add('VATCODE', ftstring, 6);
    Add('CURRAMOUNT', ftfloat);
    Add('CURRCODE', ftstring, 3);
    Add('CUREURBASE', ftfloat);
    Add('VATTAX', ftfloat);
    Add('VATIMPUT', ftstring, 6);

    with AddFieldDef do
    begin
      name      := 'CURRATE';
      DataType  := ftfloat;
      //Size      := 8;
      //Precision := 5;
    end;
    with AddFieldDef do
    begin
      name     := 'REMINDLEV';
      DataType := ftfloat;
      //Size      := 8;
      //Precision := 5;
    end;
    // Need to adpat the code of the TExport4DBF to allow size change

    Add('MATCHNO', ftstring, 8);
    Add('OLDDATE', ftdate);
    Add('ISMATCHED', ftboolean);
    Add('ISLOCKED', ftboolean);
    Add('ISIMPORTED', ftboolean);
    Add('ISPOSITIVE', ftboolean);
    Add('ISTEMP', ftboolean);
    Add('MEMOTYPE', ftstring, 1);
    Add('ISDOC', ftboolean);
    Add('DOCSTATUS', ftstring, 1);
  end;
  ACTDS.CreateDataSet;
  inherited Create;
end;

procedure TACTDB.SaveToDbf;
var
  Exporter: TQexport4DBF;
begin
  ChDir(ExtractFilePath(ParamStr(0)));
  ACTDS.FileName := 'database\winbooks.cds';
  ACTDS.savetofile;
  if not(DirectoryExists('export')) then
  begin
    CreateDir('export');
  end;
  ChDir(ExtractFilePath(ParamStr(0)) + 'export');
  Exporter                  := TQexport4DBF.Create(nil);
  Exporter.FileName         := 'ACT.DBF';
  Exporter.DefaultFloatSize := 11;
  Exporter.ExportSource     := esDataset;
  Exporter.DataSet          := ACTDS;

  Exporter.Execute;
end;

end.
