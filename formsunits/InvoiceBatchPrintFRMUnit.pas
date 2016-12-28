unit InvoiceBatchPrintFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvProgressBar, StdCtrls, JvDateTimePicker,
  RpBase,
  RpSystem, RpRave, RpDefine,
  Buttons, JvExComCtrls;

type
  TInvoiceBatchPrintForm = class(TForm)
    DateStart: TJvDateTimePicker;
    DateEnd: TJvDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Progress: TJvProgressBar;
    BitBtnPrintPrev: TBitBtn;
    BitBtnPrint: TBitBtn;
    procedure ButtonPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvoiceBatchPrintForm: TInvoiceBatchPrintForm;

implementation

uses clientdmunit, DavidUtilsunit, MainFrmUnit, ReportModuleUnit, printers,
  GlobalsUnit;

{$R *.dfm}

procedure TInvoiceBatchPrintForm.ButtonPrintClick(Sender: TObject);
var
  TicketToPrint: TTicketJob;
  BoxName: string;
  LastRate, Base, Tax: Real;
  Pindex: integer;
  LinkToCust: Boolean;

begin
  try
    LinkToCust := False;
    Pindex := Printer.printers.IndexOf
      ((Mainform.Parameter['PrintersRapportPrinter']));
    RemoteDB.netshop_invoices.Filter := '(invoices_date_time >=' +
      floattostr(Trunc(DateStart.Date)) + ') and (invoices_date_time <=' +
      floattostr(Trunc(DateEnd.Date) + 1) + ')';
    RemoteDB.netshop_invoices.Filtered := True;
    if RemoteDB.netshop_invoices.MasterSource = RemoteDB.CustomersSRC then
    begin
      RemoteDB.FreeInvoicesToCustomers;
      LinkToCust := True;
    end;
    Progress.Min := 0;
    Progress.Max := RemoteDB.netshop_invoices.RecordCount;
    RemoteDB.netshop_invoices.First;
    while not RemoteDB.netshop_invoices.Eof do
    begin
      RemoteDB.Customers.Locate('customers_nbr',
        RemoteDB.netshop_invoices.FieldByName('invoices_customer_id')
        .Value, []);
      RemoteDB.SetAddress_bookToCustomers;
      RemoteDB.SetInvoicesItemsToInvoices;
      Progress.Position := Progress.Position + 1;
      begin

        ChDir(ExtractFilePath(ParamStr(0)));
        RemoteDB.Shops.FindKey([CONNECTEDSHOP]);
        ReportModule.RvProject.Open;
        ReportModule.RvProject.SelectReport('ReportInvoice', True);
        ReportModule.RvProject.SetParam('TVA6',
          floattostr(RemoteDB.CalcInvoiceTVA(6)));
        ReportModule.RvProject.SetParam('TVA21',
          floattostr(RemoteDB.CalcInvoiceTVA(21)));
        ReportModule.RvProject.SetParam('BASE6',
          floattostr(RemoteDB.CalcInvoiceTVABASE(6)));
        ReportModule.RvProject.SetParam('BASE21',
          floattostr(RemoteDB.CalcInvoiceTVABASE(21)));
        ReportModule.RvProject.SetParam('URL', WEBURL);
        ReportModule.RvSystem.DefaultDest := rdPrinter;
        // ReportModule.RvSystem.DoNativeOutput := true;
        ReportModule.RvNDRWriter.PrinterIndex := Pindex;
        if Sender = BitBtnPrintPrev then
          ReportModule.RvSystem.SystemSetups :=
            ReportModule.RvSystem.SystemSetups + [ssAllowSetup];
        if Sender = BitBtnPrint then
          ReportModule.RvSystem.SystemSetups :=
            ReportModule.RvSystem.SystemSetups - [ssAllowSetup];
        ReportModule.RvSystem.SystemPreview.FormState := wsMaximized;
        ReportModule.RvProject.Execute;
        ReportModule.RvProject.Close;
      end;
      RemoteDB.netshop_invoices.Next;
    end;
  finally
    RemoteDB.netshop_invoices.Filter := '';
    RemoteDB.netshop_invoices.Filtered := False;
    if LinkToCust then
    begin
      RemoteDB.SetInvoicesToCustomers;
    end;
    Self.ModalResult := MrOk;
  end;
end;

procedure TInvoiceBatchPrintForm.FormShow(Sender: TObject);
begin
  DateStart.Date := Now;
  DateEnd.Date := Now;
  Progress.Position := 0;
end;

end.
