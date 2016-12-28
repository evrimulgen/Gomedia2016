unit TransferRequestFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  DB, dxPSEngn,
  dxPSCore,
  dxPSDBBasedXplorer, dxPgsDlg, dxPScxCommon, dxPrnDlg, dxBar,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, ClientDMUnit, FMTBcd,
  Provider, DBClient, SqlExpr, cxGridExportLink, dxBarExtItems, ComCtrls,
  ExtCtrls, Grids, DBGrids, StdCtrls,

  dxPScxGridLnk, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  dxPrnDev, dxPSGlbl, dxPSUtl, dxPrnPg, dxBkgnd, dxWrap, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwRibbon, dxPSPrVwAdv,
  dxPScxPageControlProducer, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers;

type
  TTransferRequestForm = class(TForm)
    dxBarManager: TdxBarManager;
    dxBarButtonPrint: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarGroup1: TdxBarGroup;
    dxPrintDialog: TdxPrintDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    dxPrintStyleManager: TdxPrintStyleManager;
    dxPageSetupDialog: TdxPageSetupDialog;
    dxPSDBBasedExplorer1: TdxPSDBBasedExplorer;
    dxPSEngineController: TdxPSEngineController;
    SaveDialog: TSaveDialog;
    dxBarButtonCompute: TdxBarButton;
    PageControl: TPageControl;
    TabSheetIn: TTabSheet;
    cxGridSuggest: TcxGrid;
    cxGridDBTableViewTransfer: TcxGridDBTableView;
    cxGridLevel7: TcxGridLevel;
    TabSheetOut: TTabSheet;
    cxGridRequest: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    TabSheetNew: TTabSheet;
    PanelNewRequestTop: TPanel;
    DBGridRequest: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LabelCategory: TLabel;
    LabelName: TLabel;
    LabelModel: TLabel;
    cxGridDBTableViewTransferid: TcxGridDBColumn;
    cxGridDBTableViewTransferproduct_model: TcxGridDBColumn;
    cxGridDBTableViewTransferproduct_name: TcxGridDBColumn;
    cxGridDBTableViewTransferproduct_root_category: TcxGridDBColumn;
    cxGridDBTableViewTransferproduct_price_stock: TcxGridDBColumn;
    cxGridDBTableViewTransferproduct_origin: TcxGridDBColumn;
    cxGridDBTableViewTransferproduct_destination: TcxGridDBColumn;
    cxGridDBTableViewTransferproduct_quantity: TcxGridDBColumn;
    cxGridDBTableViewTransferproduct_supplier_id: TcxGridDBColumn;
    cxGridDBTableViewTransferproduct_owner_id: TcxGridDBColumn;
    cxGridDBTableViewTransferdate_added: TcxGridDBColumn;
    cxGridDBTableViewTransferprocessed: TcxGridDBColumn;
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1product_model: TcxGridDBColumn;
    cxGridDBTableView1product_name: TcxGridDBColumn;
    cxGridDBTableView1product_root_category: TcxGridDBColumn;
    cxGridDBTableView1product_price_stock: TcxGridDBColumn;
    cxGridDBTableView1product_origin: TcxGridDBColumn;
    cxGridDBTableView1product_destination: TcxGridDBColumn;
    cxGridDBTableView1product_quantity: TcxGridDBColumn;
    cxGridDBTableView1product_supplier_id: TcxGridDBColumn;
    cxGridDBTableView1product_owner_id: TcxGridDBColumn;
    cxGridDBTableView1date_added: TcxGridDBColumn;
    cxGridDBTableView1processed: TcxGridDBColumn;
    Label4: TLabel;
    DPStockExt: TDataSetProvider;
    StockExt: TClientDataSet;
    DSStockExt: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButtonPrintClick(Sender: TObject);
    procedure StockSummedCalcFields(DataSet: TDataSet);
    procedure DBGridRequestDblClick(Sender: TObject);

  private
    { Private declarations }
    procedure Compute;
  public
    products_model, products_root_category, products_name: string;
    { Public declarations }
  end;

var
  TransferRequestForm: TTransferRequestForm;
  aSqlCon: TSqlConnection;
  aSqlDataset: TSqlDataset;

implementation

uses MainFRMUnit, GlobalsUnit, Threadsunit;

{$R *.dfm}

procedure TTransferRequestForm.dxBarButton2Click(Sender: TObject);
var
  Filename: string;
begin
  if PageControl.ActivePage = TabSheetIn then
  begin
    Filename := 'Transfer-a-recevoir' + '.xls';
    Self.SaveDialog.Filename := Filename;
    if Self.SaveDialog.Execute then
    begin
      ExportGridToExcel(Self.SaveDialog.Filename, cxGridSuggest, True,
        True, True);
    end;
  end;
  if PageControl.ActivePage = TabSheetOut then
  begin
    Filename := 'Transfer-a-envoyer' + '.xls';
    Self.SaveDialog.Filename := Filename;
    if Self.SaveDialog.Execute then
    begin
      ExportGridToExcel(Self.SaveDialog.Filename, cxGridRequest, True,
        True, True);
    end;
  end;
end;

procedure TTransferRequestForm.dxBarButtonPrintClick(Sender: TObject);
begin
  if PageControl.ActivePage = TabSheetIn then
    dxComponentPrinterLink1.Component := cxGridRequest;
  if PageControl.ActivePage = TabSheetOut then
    dxComponentPrinterLink1.Component := cxGridSuggest;
  dxComponentPrinter.Print(True, nil);
end;

procedure TTransferRequestForm.Compute;
var
  threshold: integer;
  ProductsClone, StockClone: TClientDataSet;

begin
  aSqlDataset.CommandType := ctQuery;
  aSqlDataset.CommandText :=
    'SELECT nst.id AS ID,nst.product_quantity AS Q,nsh.shops_name AS Magasin, nsh.shops_id Num,nsh.Shops_phone As Tel,nst.product_owner_id AS Client,nst.product_price_stock AS Prix from netshop_stock nst, netshop_shops nsh'
    + ' WHERE nsh.shops_visible=1 and nst.product_location <> ' +
    intToStr(CONNECTEDSHOP) + ' AND nst.product_model = ' +
    QuotedStr(Self.products_model) +
    ' AND nsh.shops_id=nst.product_location order by nst.product_price_stock ASC';
  DPStockExt.DataSet := aSqlDataset;
  StockExt.Open;
  Application.ProcessMessages;
end;

procedure TTransferRequestForm.DBGridRequestDblClick(Sender: TObject);
var
  MessageSubject, MessageSender: string;
  MessageBody: TStringList;
  aSendEmail, bSendEmail: TSmartSendEmail;
begin

  aSqlDataset.CommandText := '' + 'INSERT INTO `netshop_transfer_request` (' +
    '`id` ,' + '`product_model` ,' + '`product_name` ,' +
    '`product_root_category` ,' + '`product_price_stock` ,' +
    '`product_origin` ,' + '`product_destination` ,' + '`product_quantity` ,' +
    '`product_owner_id` ,' + '`date_added` ,' + '`processed`' +
    ') VALUES ( NULL,' + QuotedStr(Self.products_model) + ',' +
    QuotedStr(Self.products_name) + ',' + QuotedStr(Self.products_root_category)
    + ',' + QuotedStr(StockExt.FieldByName('Prix').AsString) + ',' +
    QuotedStr(StockExt.FieldByName('Num').AsString) + ',' +
    QuotedStr(intToStr(CONNECTEDSHOP)) + ',' + QuotedStr('1') + ',' +
    QuotedStr(StockExt.FieldByName('Client').AsString) + ',' + ' CURDATE() ,' +
    QuotedStr('0') + ')';

  aSqlDataset.ExecSQL(True);

  RemoteDB.Shops.FindKey([CONNECTEDSHOP]);
  RemoteDB.AllShops.Locate('shops_id', StockExt.FieldByName('Num').AsString,
    [locaseinsensitive]);

  MessageSubject := 'Demande de transfer intermagasins';
  MessageSender := RemoteDB.Shops.FieldByName('shops_name').AsString;
  MessageBody := TStringList.Create;
  MessageBody.Add('Demande de transfer intermagasins');
  MessageBody.Add('Depart : ' + StockExt.FieldByName('Num').AsString + ' ' +
    RemoteDB.AllShops.FieldByName('shops_name').AsString);
  MessageBody.Add('EAN# : ' + Self.products_model);
  MessageBody.Add('1x ' + Self.products_name + ' ' +
    Self.products_root_category);
  MessageBody.Add('Prix : ' + StockExt.FieldByName('Prix').AsString);
  MessageBody.Add('Destination : ' + RemoteDB.Shops.FieldByName('shops_name')
    .AsString);

  // RemoteDB.Shopsshops_manager_email.AsString

  aSendEmail := TSmartSendEmail.Create(MainForm.Shopdata1.Text,
    MainForm.Shopdata5.Text, RemoteDB.AllShops.FieldByName
    ('shops_manager_email').AsString, MessageSubject, '', MessageBody);
  bSendEmail := TSmartSendEmail.Create(MainForm.Shopdata1.Text,
    MainForm.Shopdata5.Text, TransferExtraDest, MessageSubject, '',
    MessageBody);

  RemoteDB.netshop_customers_alerts.Edit;
  RemoteDB.netshop_customers_alerts.FieldByName('customers_alerts_comment')
    .AsString := 'TFT DE ' + RemoteDB.AllShops.FieldByName
    ('shops_name').AsString;
  RemoteDB.netshop_customers_alerts.Post;

  MessageBody.Free;

  ShowMessage('Demande de tansfer envoyée');
  Self.Close;
end;

procedure TTransferRequestForm.FormShow(Sender: TObject);
begin


  // aSqlCon:=TsqlConnection.Create(self);
  // with aSqlCon do begin
  // Params.Clear;
  // DriverName := RemoteDB.SQLConnection.DriverName;
  // GetDriverFunc := RemoteDB.SQLConnection.GetDriverFunc;
  // LibraryName := RemoteDB.SQLConnection.LibraryName;
  // VendorLib := RemoteDB.SQLConnection.VendorLib;
  // Params.Append('Database='+RemoteDB.SQLConnection.Params.Values['Database']);
  // Params.Append('User_Name='+RemoteDB.SQLConnection.Params.Values['User_Name']);
  // Params.Append('Password='+RemoteDB.SQLConnection.Params.Values['Password']);
  // Params.Append('HostName='+RemoteDB.SQLConnection.Params.Values['Hostname']);
  // Params.Append('Compressed='+RemoteDB.SQLConnection.Params.Values['Compressed']);
  // LoginPrompt:=false;
  // // Open;
  // end;

  aSqlDataset := TSqlDataset.Create(Self);
  aSqlDataset.SQLConnection := RemoteDB.SQLConnection;

  if Self.products_model <> '' then
  begin
    LabelModel.Caption := Self.products_model;
    LabelName.Caption := Self.products_name;
    LabelCategory.Caption := Self.products_root_category;
    TabSheetNew.Enabled := True;
    Self.PageControl.ActivePage := TabSheetNew;
    Compute;
  end;
end;

procedure TTransferRequestForm.StockSummedCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('product_quantity_total').Value :=
    DataSet.FieldByName('product_quantity_new').Value +
    DataSet.FieldByName('product_quantity_used').Value;
end;

end.
