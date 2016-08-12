unit ServerModuleGLight;

interface

uses
  System.JSON, DBXJSONReflect, SysUtils, Classes, DSServer, DB, DBClient,
  GlobalsUnit, FTPConn, Datasnap.DSProviderDataModuleAdapter,
  Provider;

type
  TDSServerModuleRFIDPanel = class(TDSServerModule)
    CDSAlerts: TClientDataSet;
    CDSCustomers: TClientDataSet;
    CDSItems_Sold: TClientDataSet;
    CDSStock: TClientDataSet;
    DPCustomers: TDataSetProvider;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    function getFTPConn(): TFTPConn;
  public
    function GetJSONFTPConn: TJSONValue;
    function echo(s: string): string;
    function GetSoldItems(VIPID: string): string;
    function GetOrderedItems(VIPID: string): string;
    function GetName(VIPID: string): string;
    function GetCredit(VIPID: string): string;
  end;

var
  DSServerModuleRFIDPanel: TDSServerModuleRFIDPanel;

implementation

uses ClientDMUnit, MainFRMUnit;

{$R *.dfm}
{ TDSServerModule1 }

procedure TDSServerModuleRFIDPanel.DSServerModuleCreate(Sender: TObject);
begin
  CDSAlerts.CloneCursor(RemoteDB.netshop_customers_alerts, True);
  CDSCustomers.CloneCursor(RemoteDB.Customers, True);
  CDSStock.CloneCursor(RemoteDB.netshop_stock, True);
  CDSItems_Sold.CloneCursor(RemoteDB.netshop_items_sold, True);

end;

function TDSServerModuleRFIDPanel.echo(s: string): string;
begin
  CDSCustomers.Locate('customers_firstname', s, [locaseinsensitive]);
  Result := 'Returned data is ' + CDSCustomers.FieldByName('customers_lastname').AsString;
end;

function TDSServerModuleRFIDPanel.getFTPConn(): TFTPConn;
begin
  Result := TFTPConn.Create(FTPHOST, FTPDIR, FTPUSER, FTPPWD);
end;

// public
function TDSServerModuleRFIDPanel.GetJSONFTPConn(): TJSONValue;
var
  myFTPConn: TFTPConn;
begin
  myFTPConn := getFTPConn;
  Result    := FTPConnToJSON(myFTPConn);
  myFTPConn.Free;
end;

function TDSServerModuleRFIDPanel.GetName(VIPID: string): string;
begin
  Result := '';
  if CDSCustomers.Locate('customers_rfid', VIPID, [locaseinsensitive]) then
  begin
    if CDSCustomers.FieldByName('customers_nbr').Value > 99999 then
      MainForm.dxBarMRUListItemCustomers.AddItem(CDSCustomers.FieldByName('customers_nbr').AsString + ' - ' + CDSCustomers.FieldByName('customers_firstname')
        .AsString + ' ' + CDSCustomers.FieldByName('customers_lastname').AsString, nil);
    Result := 'Nom : ' + CDSCustomers.FieldByName('customers_firstname').AsString + ' ' + CDSCustomers.FieldByName('customers_lastname').AsString;
  end;
end;

function TDSServerModuleRFIDPanel.GetCredit(VIPID: string): string;
begin
  Result := '';
  if CDSCustomers.Locate('customers_rfid', VIPID, [locaseinsensitive]) then
  begin
    Result := 'Bon : ' + CDSCustomers.FieldByName('customers_credit').AsString + ' �';
  end;
end;

function TDSServerModuleRFIDPanel.GetOrderedItems(VIPID: string): string;
begin
  Result := '';
  if CDSCustomers.Locate('customers_rfid', VIPID, [locaseinsensitive]) then
  begin
    Result             := 'Jeux command�s : ' + #13#10;
    CDSAlerts.Filter   := 'customers_alerts_customers_nbr=' + CDSCustomers.FieldByName('customers_nbr').AsString;
    CDSAlerts.Filtered := True;
    CDSAlerts.First;
    while not RemoteDB.CloneDSAlerts.eof do
    begin
      Result := Result + #13#10 + CDSAlerts.FieldByName('customers_alerts_products_name').AsString;
      CDSAlerts.Next;
    end;
  end;
end;

function TDSServerModuleRFIDPanel.GetSoldItems(VIPID: string): string;
begin
  Result := '';
  if CDSCustomers.Locate('customers_rfid', VIPID, [locaseinsensitive]) then
  begin
    Result                 := 'D�p�t vendus : ' + #13#10;
    CDSItems_Sold.Filter   := 'items_sold_owner_id=' + CDSCustomers.FieldByName('customers_nbr').AsString + ' AND items_refunded=0';
    CDSItems_Sold.Filtered := True;
    CDSItems_Sold.First;
    while not CDSItems_Sold.eof do
    begin
      Result := Result + #13#10 + CDSItems_Sold.FieldByName('items_sold_name').AsString + ' � ' + CDSItems_Sold.FieldByName('items_sold_price_stock')
        .AsString + ' �';
      CDSItems_Sold.Next;
    end;
  end;
end;

end.
