//
// Created by the DataSnap proxy generator.
//

unit ClientFunctions;

interface

uses DBXCommon, DBXJSON, Classes, SysUtils, DB, SqlExpr, DBXDBReaders;

type
  TDSServerModuleRFIDPanelClient = class
  private
    FDBXConnection: TDBXConnection;
    FInstanceOwner: Boolean;
    FGetJSONFTPConnCommand: TDBXCommand;
    FechoCommand: TDBXCommand;
    FGetSoldItemsCommand: TDBXCommand;
    FGetOrderedItemsCommand: TDBXCommand;
    FGetNameCommand: TDBXCommand;
    FGetCreditCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetJSONFTPConn: TJSONValue;
    function echo(s: string): string;
    function GetSoldItems(VIPID: string): string;
    function GetOrderedItems(VIPID: string): string;
    function GetName(VIPID: string): string;
    function GetCredit(VIPID: string): string;
  end;

implementation

function TDSServerModuleRFIDPanelClient.GetJSONFTPConn: TJSONValue;
begin
  if FGetJSONFTPConnCommand = nil then
  begin
    FGetJSONFTPConnCommand := FDBXConnection.CreateCommand;
    FGetJSONFTPConnCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetJSONFTPConnCommand.Text := 'TDSServerModuleRFIDPanel.GetJSONFTPConn';
    FGetJSONFTPConnCommand.Prepare;
  end;
  FGetJSONFTPConnCommand.ExecuteUpdate;
  Result := TJSONValue(FGetJSONFTPConnCommand.Parameters[0].Value.GetJSONValue(FInstanceOwner));
end;

function TDSServerModuleRFIDPanelClient.echo(s: string): string;
begin
  if FechoCommand = nil then
  begin
    FechoCommand := FDBXConnection.CreateCommand;
    FechoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FechoCommand.Text := 'TDSServerModuleRFIDPanel.echo';
    FechoCommand.Prepare;
  end;
  FechoCommand.Parameters[0].Value.SetWideString(s);
  FechoCommand.ExecuteUpdate;
  Result := FechoCommand.Parameters[1].Value.GetWideString;
end;

function TDSServerModuleRFIDPanelClient.GetSoldItems(VIPID: string): string;
begin
  if FGetSoldItemsCommand = nil then
  begin
    FGetSoldItemsCommand := FDBXConnection.CreateCommand;
    FGetSoldItemsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetSoldItemsCommand.Text := 'TDSServerModuleRFIDPanel.GetSoldItems';
    FGetSoldItemsCommand.Prepare;
  end;
  FGetSoldItemsCommand.Parameters[0].Value.SetWideString(VIPID);
  FGetSoldItemsCommand.ExecuteUpdate;
  Result := FGetSoldItemsCommand.Parameters[1].Value.GetWideString;
end;

function TDSServerModuleRFIDPanelClient.GetOrderedItems(VIPID: string): string;
begin
  if FGetOrderedItemsCommand = nil then
  begin
    FGetOrderedItemsCommand := FDBXConnection.CreateCommand;
    FGetOrderedItemsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetOrderedItemsCommand.Text := 'TDSServerModuleRFIDPanel.GetOrderedItems';
    FGetOrderedItemsCommand.Prepare;
  end;
  FGetOrderedItemsCommand.Parameters[0].Value.SetWideString(VIPID);
  FGetOrderedItemsCommand.ExecuteUpdate;
  Result := FGetOrderedItemsCommand.Parameters[1].Value.GetWideString;
end;

function TDSServerModuleRFIDPanelClient.GetName(VIPID: string): string;
begin
  if FGetNameCommand = nil then
  begin
    FGetNameCommand := FDBXConnection.CreateCommand;
    FGetNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNameCommand.Text := 'TDSServerModuleRFIDPanel.GetName';
    FGetNameCommand.Prepare;
  end;
  FGetNameCommand.Parameters[0].Value.SetWideString(VIPID);
  FGetNameCommand.ExecuteUpdate;
  Result := FGetNameCommand.Parameters[1].Value.GetWideString;
end;

function TDSServerModuleRFIDPanelClient.GetCredit(VIPID: string): string;
begin
  if FGetCreditCommand = nil then
  begin
    FGetCreditCommand := FDBXConnection.CreateCommand;
    FGetCreditCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetCreditCommand.Text := 'TDSServerModuleRFIDPanel.GetCredit';
    FGetCreditCommand.Prepare;
  end;
  FGetCreditCommand.Parameters[0].Value.SetWideString(VIPID);
  FGetCreditCommand.ExecuteUpdate;
  Result := FGetCreditCommand.Parameters[1].Value.GetWideString;
end;


constructor TDSServerModuleRFIDPanelClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create;
  if ADBXConnection = nil then
    raise EInvalidOperation.Create('Connection cannot be nil.  Make sure the connection has been opened.');
  FDBXConnection := ADBXConnection;
  FInstanceOwner := True;
end;


constructor TDSServerModuleRFIDPanelClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create;
  if ADBXConnection = nil then
    raise EInvalidOperation.Create('Connection cannot be nil.  Make sure the connection has been opened.');
  FDBXConnection := ADBXConnection;
  FInstanceOwner := AInstanceOwner;
end;


destructor TDSServerModuleRFIDPanelClient.Destroy;
begin
  FreeAndNil(FGetJSONFTPConnCommand);
  FreeAndNil(FechoCommand);
  FreeAndNil(FGetSoldItemsCommand);
  FreeAndNil(FGetOrderedItemsCommand);
  FreeAndNil(FGetNameCommand);
  FreeAndNil(FGetCreditCommand);
  inherited;
end;

end.

