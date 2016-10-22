unit OrderCheckFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  DB, dxBar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, dxPSEngn,
  dxPSCore,
  dxPSDBBasedXplorer, dxPgsDlg, dxPrnDlg, cxGridExportLink,
  StdCtrls, ExtCtrls,




  dxPScxGridLnk, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  dxPSGlbl, dxPSUtl, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwRibbon, dxPSPrVwAdv,
  dxPScxPageControlProducer, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, cxCheckBox;

type
  TOrderCheckForm = class(TForm)
    cxGridCustomersAlert: TcxGrid;
    cxGridDBTableViewCustomersOrders: TcxGridDBTableView;
    cxGridDBTableViewCustomersOrderscustomers_alerts_products_name: TcxGridDBColumn;
    cxGridDBTableViewCustomersOrderscustomers_alerts_products_cat: TcxGridDBColumn;
    cxGridDBTableViewCustomersOrderscustomers_alerts_used: TcxGridDBColumn;
    cxGridDBTableViewCustomersOrderscustomers_alerts_date_disp: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    dxBarManager: TdxBarManager;
    dxBarButtonPrint: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarGroup1: TdxBarGroup;
    cxGridDBTableViewCustomersOrderscustomers_alerts_customers_nbr: TcxGridDBColumn;
    SaveDialog: TSaveDialog;
    PanelTop: TPanel;
    LabelReserved: TLabel;
    cxGridDBTableViewCustomersOrderscustomers_alerts_quantity: TcxGridDBColumn;
    EditMessage: TEdit;
    ButtonSms: TButton;
    Button1: TButton;
    RadioButtonAlertsreserved: TRadioButton;
    RadioButtonAlertsArrived: TRadioButton;
    RadioButtonAlertsNotified: TRadioButton;
    RadioButtonAlertsBought: TRadioButton;
    cxgrdbclmnGridDBTableViewCustomersOrderscustomers_alerts_dwnpay: TcxGridDBColumn;
    dxComponentPrinter: TdxComponentPrinter;
    dxPSEngineController: TdxPSEngineController;
    dxPrintStyleManager: TdxPrintStyleManager;
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButtonPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButtonSmsClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioButtonAlertsreservedClick(Sender: TObject);
    procedure RadioButtonAlertsArrivedClick(Sender: TObject);
    procedure RadioButtonAlertsNotifiedClick(Sender: TObject);
    procedure RadioButtonAlertsBoughtClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Q: integer;
    Model: string;
  end;

var
  OrderCheckForm: TOrderCheckForm;

implementation

uses ClientDMUnit, SMS_COMAPILib_TLB, MainFRMUnit, DavidUtilsUnit, ThreadsUnit;

{$R *.dfm}

procedure TOrderCheckForm.Button1Click(Sender: TObject);
var
  mailtext: TStringList;
  aSendEmail: TSmartSendEmail;
begin
  RemoteDB.netshop_customers_alerts.First;
  mailtext := TStringList.Create;
  mailtext.add(EditMessage.Text);
  while not RemoteDB.netshop_customers_alerts.Eof do
  begin
    if RemoteDB.Customers.Locate('customers_nbr', RemoteDB.netshop_customers_alerts.FieldByName('customers_alerts_customers_nbr').AsString, [locaseinsensitive])
    then
    begin
      aSendEmail := TSmartSendEmail.Create(MainForm.Shopdata1.Text, MainForm.Shopdata5.Text, RemoteDB.Customerscustomers_email_address.AsString,
        'Concernant votre r�servation chez ' + MainForm.Shopdata1.Text, '', mailtext);
    end;
    RemoteDB.netshop_customers_alerts.Next;
  end;
  mailtext.Free;

end;

procedure TOrderCheckForm.ButtonSmsClick(Sender: TObject);


begin
  if  (Length(Trim(EditMessage.Text)) < 10) and (Trim(EditMessage.Text) <> 'Message � envoyer')  then
  begin
    MessageDLG('Message Vide ou inf�rieur � 10 charact�res !', mtwarning, [mbOK], 0);
    exit;
  end;

  try

    RemoteDB.netshop_customers_alerts.First;
    while not RemoteDB.netshop_customers_alerts.Eof do
    begin
      if RemoteDB.Customers.Locate('customers_nbr', RemoteDB.netshop_customers_alerts.FieldByName('customers_alerts_customers_nbr').AsString,
        [locaseinsensitive]) then
      begin
          RemoteDB.netshop_customers_alerts.Append;
          RemoteDB.netshop_customers_alerts.FieldByName('customers_alerts_products_model').AsString := 'MICRO';
          RemoteDB.netshop_customers_alerts.FieldByName('customers_alerts_products_name').AsString := 'SMS Message';
          RemoteDB.netshop_customers_alerts.FieldByName('customers_alerts_customers_nbr').AsString := RemoteDB.Customers.FieldByName('customers_nbr').AsString;
          RemoteDB.netshop_customers_alerts.FieldByName('customers_alerts_status').Value := 1;
          RemoteDB.netshop_customers_alerts.FieldByName('customers_alerts_message').AsString := EditMessage.Text;
          RemoteDB.netshop_customers_alerts.Post;
      end;
      RemoteDB.netshop_customers_alerts.Next;
    end;

    ShowMessage('Les messages sont dans la queue d''envoi');

  finally

  end;
end;

procedure TOrderCheckForm.dxBarButton2Click(Sender: TObject);
var
  Filename: string;
begin
  Filename := 'R�servations ' + RemoteDB.CDSProDescFR.FieldByName('products_name').AsString + ' ' +
    RemoteDB.Productsproducts_root_category_name.AsString + '.xls';
  SaveDialog.Filename := Filename;
  if SaveDialog.Execute then
  begin
    ExportGridToExcel(SaveDialog.Filename, cxGridCustomersAlert, True, True, True);
  end;
end;

procedure TOrderCheckForm.dxBarButtonPrintClick(Sender: TObject);
begin
  dxComponentPrinter.Print(True, nil);
end;

procedure TOrderCheckForm.FormShow(Sender: TObject);
var
  Q: integer;
begin
  RadioButtonAlertsreserved.Checked := True;
  RadioButtonAlertsreservedClick(self);
end;

procedure TOrderCheckForm.RadioButtonAlertsArrivedClick(Sender: TObject);
begin
  RemoteDB.netshop_customers_alerts.Filtered := False;
  RemoteDB.netshop_customers_alerts.Filter   := '( (customers_alerts_status=1) and (customers_alerts_products_model = ' + QuotedStr(Model) + ') )';
  RemoteDB.netshop_customers_alerts.Filtered := True;
  RemoteDB.netshop_customers_alerts.First;
  Q := 0;
  while not RemoteDB.netshop_customers_alerts.Eof do
  begin
    Q := Q + RemoteDB.netshop_customers_alerts.FieldByName('customers_alerts_quantity').AsInteger;
    RemoteDB.netshop_customers_alerts.Next;
  end;
  LabelReserved.Caption := 'Arriv� : ' + inttostr(Q);
end;

procedure TOrderCheckForm.RadioButtonAlertsBoughtClick(Sender: TObject);
begin
  RemoteDB.netshop_customers_alerts.Filtered := False;
  RemoteDB.netshop_customers_alerts.Filter   := '( (customers_alerts_status=3) and (customers_alerts_products_model = ' + QuotedStr(Model) + ') )';
  RemoteDB.netshop_customers_alerts.Filtered := True;
  RemoteDB.netshop_customers_alerts.First;
  Q := 0;
  while not RemoteDB.netshop_customers_alerts.Eof do
  begin
    Q := Q + RemoteDB.netshop_customers_alerts.FieldByName('customers_alerts_quantity').AsInteger;
    RemoteDB.netshop_customers_alerts.Next;
  end;
  LabelReserved.Caption := 'Achet� : ' + inttostr(Q);
end;

procedure TOrderCheckForm.RadioButtonAlertsNotifiedClick(Sender: TObject);
begin
  RemoteDB.netshop_customers_alerts.Filtered := False;
  RemoteDB.netshop_customers_alerts.Filter   := '( (customers_alerts_status=2) and (customers_alerts_products_model = ' + QuotedStr(Model) + ') )';
  RemoteDB.netshop_customers_alerts.Filtered := True;
  RemoteDB.netshop_customers_alerts.First;
  Q := 0;
  while not RemoteDB.netshop_customers_alerts.Eof do
  begin
    Q := Q + RemoteDB.netshop_customers_alerts.FieldByName('customers_alerts_quantity').AsInteger;
    RemoteDB.netshop_customers_alerts.Next;
  end;
  LabelReserved.Caption := 'Notifi� : ' + inttostr(Q);
end;

procedure TOrderCheckForm.RadioButtonAlertsreservedClick(Sender: TObject);
begin
  RemoteDB.netshop_customers_alerts.Filtered := False;
  RemoteDB.netshop_customers_alerts.Filter   := '( (customers_alerts_status=0) and (customers_alerts_products_model = ' + QuotedStr(Model) + ') )';
  RemoteDB.netshop_customers_alerts.Filtered := True;
  RemoteDB.netshop_customers_alerts.First;
  Q := 0;
  while not RemoteDB.netshop_customers_alerts.Eof do
  begin
    Q := Q + RemoteDB.netshop_customers_alerts.FieldByName('customers_alerts_quantity').AsInteger;
    RemoteDB.netshop_customers_alerts.Next;
  end;
  LabelReserved.Caption := 'R�serv� : ' + inttostr(Q);
end;

end.
