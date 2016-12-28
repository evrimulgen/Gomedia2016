unit ExportWinbooksFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvWizard, JvExControls,
  JvWizardRouteMapNodes, dateutils, ComCtrls, JvSpin,
  WinbooksExport,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters;

type
  TFormExportWinbooks = class(TForm)
    JvWizardWinbooks: TJvWizard;
    JvWizardInteriorPage1: TJvWizardInteriorPage;
    ComboBoxSelectPeriod: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    JvWizardRouteMapNodes1: TJvWizardRouteMapNodes;
    StartDate: TMonthCalendar;
    Label2: TLabel;
    JvWizardInteriorPage2: TJvWizardInteriorPage;
    JvSpinEditStartDocNbr: TJvSpinEdit;
    CheckBoxsales: TCheckBox;
    Label4: TLabel;
    CheckBoxInvoices: TCheckBox;
    CheckBoxExcel: TCheckBox;
    JvWizardInteriorPage3: TJvWizardInteriorPage;
    Label5: TLabel;
    ComboBoxPeriod: TcxComboBox;
    ProgressBar: TProgressBar;
    EndDate: TMonthCalendar;
    procedure ComboBoxSelectPeriodSelect(Sender: TObject);
    procedure JvWizardWinbooksFinishButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExportWinbooks: TFormExportWinbooks;

implementation

uses MainFrmUnit, CashRegistryFRMUnit, ClientDMunit;

{$R *.dfm}

procedure TFormExportWinbooks.ComboBoxSelectPeriodSelect(Sender: TObject);
var
  workYear, startmonth, i: integer;
  tmpdate: tDateTime;
begin
  if ComboBoxSelectPeriod.ItemIndex = 0 then
  begin
    StartDate.Date := EndOfTheMonth(EndOfTheMonth(Now) - 32) + 1;
    EndDate.Date   := EndOfTheMonth(Now);
  end;
  if ComboBoxSelectPeriod.ItemIndex = 1 then
  begin
    StartDate.Date := EndOfTheMonth(EndOfTheMonth(Now) - 63) + 1;
    EndDate.Date   := EndOfTheMonth(EndOfTheMonth(Now) - 32);
  end;
  if ComboBoxSelectPeriod.ItemIndex = 2 then
  begin
    i := MonthofTheYear(Now) div 3;
    if MonthofTheYear(Now) mod 3 = 0 then
      i := i - 1;
    if TryEncodeDate(yearof(Now), i * 3 + 1, 1, tmpdate) then
      StartDate.Date := tmpdate;
    if TryEncodeDate(yearof(Now), i * 3 + 3, 1, tmpdate) then
    begin
      EndDate.Date := EndOfTheMonth(tmpdate);
    end;
  end;
  if ComboBoxSelectPeriod.ItemIndex = 3 then
  begin
    i := MonthofTheYear(Now) div 3;
    if MonthofTheYear(Now) mod 3 = 0 then
      i := i - 1;
    if i = 0 then
    begin
      workYear   := yearof(Now) - 1;
      startmonth := 10;
    end else begin
      workYear   := yearof(Now);
      startmonth := i * 3 - 2
    end;
    if TryEncodeDate(workYear, startmonth, 1, tmpdate) then
      StartDate.Date := tmpdate;
    if TryEncodeDate(workYear, startmonth + 2, 1, tmpdate) then
    begin
      EndDate.Date := EndOfTheMonth(tmpdate);
    end;
  end;

end;

procedure TFormExportWinbooks.JvWizardWinbooksFinishButtonClick(Sender: TObject);
var
  i, nbr: integer;
  ExportACTDB: TACTDBCASH;
  DayCashierSummary: TDayCashierSummary;
  AFormCashRegister: TFormCashRegister;
  Accu: Double;

begin
  RemoteDB.SetItemsTosales;
  RemoteDB.SetAddress_bookToCustomers;

  RemoteDB.FreeStockto;
  RemoteDB.freesalesto;
  RemoteDB.FreeRefundsTo;
  RemoteDB.FreeRentTo;
  RemoteDB.FreeInvoicesItems;
  RemoteDB.FreeInvoicesToCustomers;
  RemoteDB.FreeAlertsTo;

  RemoteDB.Products.IndexName := 'ProductsIXModel';
  RemoteDB.Products.Filter    := '';
  RemoteDB.Products.Filtered  := False;

  ProgressBar.Visible := True;
  ProgressBar.Min     := 0;
  ProgressBar.Max     := round(EndDate.Date - StartDate.Date);
  ProgressBar.Step    := 1;
  AFormCashRegister   := TFormCashRegister.Create(self);
  ExportACTDB         := TACTDBCASH.Create(Mainform.Parameter['WBShopClientCode'], Mainform.Parameter['WBShopBookCode'], Mainform.Parameter['WBShopAccount'],
    Mainform.Parameter['WBShopEAccount'], Mainform.Parameter['WBShopInvoiceCode'], ComboBoxPeriod.Text, RemoteDB);
  Accu := 0;
  nbr  := trunc(JvSpinEditStartDocNbr.Value);
  try
    for i := trunc(StartDate.Date) to trunc(EndDate.Date) do
    begin
      DayCashierSummary := RemoteDB.CalcDayCahsierSummary(i, i);
      if DayCashierSummary.Open then
      begin
        Accu := Accu + DayCashierSummary.TotalPay;
        AFormCashRegister.CashData.Append;
        AFormCashRegister.CashData.FieldByName('Nbr').Value := AFormCashRegister.CashData.FieldByName('Nbr').Value + 1;
        AFormCashRegister.CashData.FieldByName('Date').Value := i;
        AFormCashRegister.CashData.FieldByName('NEW-0').Value := DayCashierSummary.New0;
        AFormCashRegister.CashData.FieldByName('NEW-6').Value := DayCashierSummary.New6;
        AFormCashRegister.CashData.FieldByName('NEW-21').Value := DayCashierSummary.New21;
        AFormCashRegister.CashData.FieldByName('New').Value := DayCashierSummary.New + DayCashierSummary.NoMargin;
        AFormCashRegister.CashData.FieldByName('SH').Value := DayCashierSummary.SH;
        AFormCashRegister.CashData.FieldByName('Depot').Value := DayCashierSummary.SHDeposit;
        AFormCashRegister.CashData.FieldByName('Rachat').Value := DayCashierSummary.SHBought;
        AFormCashRegister.CashData.FieldByName('Serv').Value := DayCashierSummary.Service;
        AFormCashRegister.CashData.FieldByName('Returns').Value := DayCashierSummary.Returns;
        AFormCashRegister.CashData.FieldByName('Total').Value := DayCashierSummary.TotalNature;
        AFormCashRegister.CashData.FieldByName('Cash').Value := DayCashierSummary.Cash;
        AFormCashRegister.CashData.FieldByName('Bct').Value := DayCashierSummary.BCT;
        AFormCashRegister.CashData.FieldByName('Visa').Value := DayCashierSummary.Visa;
        AFormCashRegister.CashData.FieldByName('Proton').Value := DayCashierSummary.Proton;
        AFormCashRegister.CashData.FieldByName('Voucher').Value := DayCashierSummary.Voucher;
        AFormCashRegister.CashData.FieldByName('Refunds').Value := DayCashierSummary.Refunds;
        AFormCashRegister.CashData.FieldByName('TotalPay').Value := DayCashierSummary.TotalPay;
        AFormCashRegister.CashData.FieldByName('CaisseTot').Value := Accu;
        AFormCashRegister.CashData.FieldByName('Expenses').Value := DayCashierSummary.Expenses;
        AFormCashRegister.CashData.FieldByName('ExpensesDesc').Value := DayCashierSummary.ExpensesDesc;
        AFormCashRegister.CashData.FieldByName('INV-21').Value := DayCashierSummary.Invoice21;
        AFormCashRegister.CashData.FieldByName('INV-6').Value := DayCashierSummary.Invoice6;
        AFormCashRegister.CashData.FieldByName('INV-0').Value := DayCashierSummary.Invoice0;
        AFormCashRegister.CashData.Post;
        ExportACTDB.AddDaySales(nbr, i, DayCashierSummary);
        if CheckBoxInvoices.State = cbChecked then
          ExportACTDB.AddDayInvoices(i);
        nbr := nbr + 1;
      end;
      ProgressBar.Position := i - trunc(StartDate.Date);
      Application.ProcessMessages;
    end;
    ExportACTDB.SaveToDbf;
    AFormCashRegister.saveGrid(Mainform.Parameter['WBShopBookCode']);
  finally
    ExportACTDB.Free;
    AFormCashRegister.Free;
    ProgressBar.Visible := False;
    self.Close;
    RemoteDB.FreeAddress_booktoCustomers;
  end;

end;

procedure TFormExportWinbooks.FormShow(Sender: TObject);
begin
  self.JvWizardWinbooks.ActivePage := JvWizardInteriorPage1;
  ComboBoxSelectPeriod.ItemIndex   := 1;
  ComboBoxSelectPeriodSelect(self);
end;

end.
