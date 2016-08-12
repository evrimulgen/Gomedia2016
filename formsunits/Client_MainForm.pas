unit Client_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WideStrings, DbxDatasnap, StdCtrls, OleCtrls, Jpeg, ComCtrls,StrUtils,

  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, IdFTPList, IdFTPCommon,
  IdRawBase, IdRawClient, IdIcmpClient, IdBaseComponent,

  SQlExpr, DB, DBClient, DBTables, DBCGrids,

  ClientFunctions,CustomerDisplayFRMUnit, FTPConn,

  Phidget21COM_TLB, Grids, DBGrids, DSConnect, Buttons, BaseGrid, AdvGrid,
  DBAdvGrid, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid;

type
  TFormGLightMain = class(TForm)
    PhidgetRFID: TPhidgetRFID;
    MainConnection: TSQLConnection;
    DSCustomers: TDataSource;
    Customers: TClientDataSet;
    DSProviderConnection: TDSProviderConnection;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditCustomerFilterFirstName: TEdit;
    EditCustomerFilterLastName: TEdit;
    EditCustomerFilterEmail: TEdit;
    BitBtnCustomersFilter: TBitBtn;
    cxGridCustomers: TcxGrid;
    cxGridCustomersDBTableViewCustomers: TcxGridDBTableView;
    cxGridCustomersLevel1: TcxGridLevel;
    cxGridCustomersDBTableViewCustomerscustomers_credit: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_dob: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_email_address: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_fax: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_firstname: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_gender: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_htprice: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_identity: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_isTVA: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_language_id: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_lastname: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_memo: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_nbr: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_newsletter: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_password: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_points: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_rent_enabled: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_telephone: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_TVA: TcxGridDBColumn;
    cxGridCustomersDBTableViewCustomerscustomers_rfid: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CustomersAfterPost(DataSet: TDataSet);
    procedure PhidgetRFIDAttach(Sender: TObject);
    procedure PhidgetRFIDOutputChange(ASender: TObject; Index: Integer;
      NewState: WordBool);
    procedure PhidgetRFIDTagLost(ASender: TObject; const TagNumber: WideString);
    procedure PhidgetRFIDTag(ASender: TObject; const TagNumber: WideString);
    procedure BitBtnCustomersFilterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGLightMain: TFormGLightMain;
  ACustomerDisplay:TFormCustomerDisplay;
  myGomedia:TDSServerModuleRFIDPanelClient;
  myFTPConn:TFTPConn;

const
  DEBUG=0;

implementation

uses GlobalsUnit;

{$R *.dfm}

procedure TFormGLightMain.BitBtnCustomersFilterClick(Sender: TObject);
var filter:string;
begin
 filter:='';
 if EditCustomerFilterFirstName.Text<>'' then filter := 'customers_firstname LIKE '+QuotedStr('%'+EditCustomerFilterFirstName.Text+'%')+' ';
 if (filter<>'') and (EditCustomerFilterLastName.Text<>'') then filter:=Filter+' and ';
 if EditCustomerFilterLastName.Text<>'' then filter := 'customers_lastname LIKE '+QuotedStr('%'+EditCustomerFilterLastName.Text+'%')+' ';
 if (filter<>'') and (EditCustomerFilterEmail.Text<>'') then filter:=Filter+' and ';
 if EditCustomerFilterEmail.Text<>'' then filter := 'customers_email_address LIKE '+QuotedStr('%'+EditCustomerFilterEmail.Text+'%')+' ';

 Customers.Filter:=Filter;
 Customers.Filtered:=True;
end;

procedure TFormGLightMain.CustomersAfterPost(DataSet: TDataSet);
begin
 if Customers.ApplyUpdates(-1)=0 then Customers.Refresh;
end;

procedure TFormGLightMain.FormCreate(Sender: TObject);
begin
  if DEBUG=0 then begin
   MainConnection.Params.Values['HostName'] :='192.168.1.240';
  end else begin
   MainConnection.Params.Values['HostName'] :='localhost';
  end;

  MainConnection.Open;

  myGomedia:=TDSServerModuleRFIDPanelClient.Create(MainConnection.DBXConnection);

  Customers.Open;


  ChDir( ExtractFilePath(ParamStr(0)) );
  if not(DirectoryExists('posbank')) then begin
   CreateDir('posbank');
  end else begin
   RemoveDir('posbank');
   CreateDir('posbank');
  end;

  PhidgetRFID.Open(-1);
  Self.Width:=1020;
  Self.Height:=720;
end;

procedure TFormGLightMain.FormShow(Sender: TObject);
Var
 DirList: TIdFTPListItems;
 DirItem: TIdFTPListItem;
 TempItem: TTreeNode;
 LS: TStringList;
 AFTP: TidFTP;
 i,r:integer;
 DirInfo: TSearchRec;
 Dest,DestExt:string;
 source:string;
 aJpegImage:TJpegImage;

function InvertiBarre(sSource:string) : string;
begin
        Result := StringReplace(sSource, '/', '\', [rfReplaceAll])
end;

begin


  myFTPConn:=JSONToFTPConn(myGomedia.GetJSONFTPConn);


  PhidgetRFID:=TPhidgetRFID.Create(self);


  ACustomerDisplay:=TFormCustomerDisplay.Create(self);
  ACustomerDisplay.Left:=1024;
  ACustomerDisplay.Top:=0;
  ACustomerDisplay.Show;

  if Debug=0 then begin
   // Delete Older images
   r := FindFirst((ExtractFilePath(ParamStr(0)))+'posbank\*.jpg', FaAnyfile, DirInfo);
   while r = 0 do  begin
     if ((DirInfo.Attr and FaDirectory <> FaDirectory) and
         (DirInfo.Attr and FaVolumeId <> FaVolumeID)) then
       if DeleteFile(pChar((ExtractFilePath(ParamStr(0)))+'posbank\' + DirInfo.Name))
          = false then
        ShowMessage('Unable to delete : '+(ExtractFilePath(ParamStr(0)))+'posbank\'+
                    DirInfo.Name);
     r := FindNext(DirInfo);
   end;
   SysUtils.FindClose(DirInfo);
   // Retrieve new images

   AFTP:=TidFTP.Create(self);
   AFTP.Passive:=True;
   AFTP.TransferType := ftBinary;
   AFTP.Host:=myFTPConn.host;
   AFTP.Username:=myFTPConn.login;
   AFTP.Password:=myFTPConn.pass;
   source:=myFTPConn.dir+'posbank/';
   LS := TStringList.Create;
   try
    LS.Sorted := True;
    AFTP.connect;

      if (Source <> '') then
      AFTP.ChangeDir(Source);

      AFTP.List(nil);

      DirList := AFTP.DirectoryListing;
      for i := 0 to DirList.Count - 1 do
         begin
         try
             DirItem := DirList.Items[i];
             if (DirItem.ItemType = ditDirectory) then
                 begin
                  LS.Add(Trim(DirItem.FileName) + '/');
                 end
             else
                 begin
                  Dest:=(ExtractFilePath(ParamStr(0)))+'posbank\'+DirItem.FileName;
                  AFTP.get(DirItem.FileName, Dest);
                  DestExt:=ExtractFileExt(dest);
                  if DestExt='.jpg' then begin
                   aJpegImage:=TJpegImage.Create;
                   aJpegImage.LoadFromFile(Dest);
                   ACustomerDisplay.JpegListAdvert.Add(aJpegImage);
                  end;
                 end;
         except
         end;//try
      end;//for
   finally
      LS.Free;
      AFTP.Free;
   end;

  end; // End if DB Connected

 aCustomerDisplay.PanelAdvert.Visible:=True;
 aCustomerDisplay.PanelCustomerData.Visible:=False;
 aCustomerDisplay.PanelCustomerSale.Visible:=False;

end;

procedure TFormGLightMain.PhidgetRFIDAttach(Sender: TObject);
begin
 PhidgetRFID.AntennaOn:=True;
end;

procedure TFormGLightMain.PhidgetRFIDOutputChange(ASender: TObject;
  Index: Integer; NewState: WordBool);
begin
  PhidgetRFID.AntennaOn:=True;
end;

procedure TFormGLightMain.PhidgetRFIDTag(ASender: TObject;
  const TagNumber: WideString);
begin
   if myGomedia.GetName(TagNumber)<>'' then begin

    aCustomerDisplay.PanelAdvert.Visible:=False;
    aCustomerDisplay.PanelCustomerSale.Visible:=False;
    aCustomerDisplay.PanelCustomerData.Visible:=True;

    aCustomerDisplay.LabelCustomerSold.Caption:=myGomedia.GetSoldItems(TagNumber);
    aCustomerDisplay.LabelCustomerOrder.Caption:=myGomedia.GetOrderedItems(TagNumber);
    aCustomerDisplay.LabelCustomerName.Caption:=myGomedia.GetName(TagNumber);
    aCustomerDisplay.LabelCustomerVoucher.Caption:=myGomedia.GetCredit(TagNumber);

   end else begin
     //if (PageControlMainForm.ActivePage=TabsheetCustomers) AND ((RemoteDB.Customers.State=dsEdit) or (RemoteDB.Customers.State=dsInsert)) then begin
     //  RemoteDB.Customers.FieldByName('customers_rfid').AsString:=TagNumber;
     //end;
   end;
end;

procedure TFormGLightMain.PhidgetRFIDTagLost(ASender: TObject;
  const TagNumber: WideString);
begin
   aCustomerDisplay.PanelAdvert.Visible:=True;
   aCustomerDisplay.PanelCustomerData.Visible:=False;
   aCustomerDisplay.PanelCustomerSale.Visible:=False;
   aCustomerDisplay.LabelCustomerName.Caption:='Nom : ';
end;

end.
