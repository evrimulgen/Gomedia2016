unit AccountCreatorMainFrmUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, ExtCtrls, ToolWin, ActnMan, ActnCtrls, ActnList,
  XPStyleActnCtrls, ImgList, DBClient, DBCtrls, dxBar,
  dxBarExtDBItems, ComCtrls, Midaslib,  dxBarDBNav, FMTBcd, SqlExpr, Provider,
  DBGrids, WideStrings, cxClasses, DBXDynalink, DBXMySQL, DCPcrypt2,
  DCPblockciphers, DCPrijndael, DCPsha1, System.Actions, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid;

  const
  CM_SHOWNEDITOR = WM_USER + 0;

type
  TMainForm = class(TForm)
    DSUsers: TDataSource;
    Servers: TClientDataSet;
    DataSourceServers: TDataSource;
    ImageList: TImageList;
    ActionManager1: TActionManager;
    ActionClear: TAction;
    ActionCreateAccount: TAction;
    ActionManageServers: TAction;
    dxBarManager1: TdxBarManager;
    dxBarButtonClear: TdxBarButton;
    dxBarButtonCreateAccount: TdxBarButton;
    dxBarButtonGenerateData: TdxBarButton;
    serverlookup: TdxBarLookupCombo;
    dxBarButton1: TdxBarButton;
    PanelCustomerData: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    PanelDbGrid: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    PageControlGrids: TPageControl;
    TabSheetUsers: TTabSheet;
    TabSheetShops: TTabSheet;
    DSShops: TDataSource;
    DBGridShops: TDBGrid;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavRefresh1: TdxBarDBNavButton;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    DPShops: TDataSetProvider;
    SQLDSShops: TSQLDataSet;
    CDShops: TClientDataSet;
    EditCustLogin: TEdit;
    EditCustPass: TEdit;
    EditCustUrl: TEdit;
    EditCustID: TEdit;
    EditCustGroupId: TEdit;
    EditFTPHost: TEdit;
    EditDBNAme: TEdit;
    EditDBLogin: TEdit;
    EditDBPass: TEdit;
    SQLDSUsers: TSQLDataSet;
    DPUsers: TDataSetProvider;
    EditDBHost: TEdit;
    EditFTPUser: TEdit;
    EditFTPPwd: TEdit;
    EditFTPDir: TEdit;
    ServersServersName: TStringField;
    ServersServersDBHost: TStringField;
    ServersServersDBName: TStringField;
    ServersServersDBUser: TStringField;
    ServersServersDBPass: TStringField;
    ServersServersFTPHost: TStringField;
    ServersServersFTPUser: TStringField;
    ServersServersFTPPwd: TStringField;
    ServersServersFTPDir: TStringField;
    CDUsers: TClientDataSet;
    dxBarButton2: TdxBarButton;
    SQLDSUsersfield1: TIntegerField;
    SQLDSUsersfield2: TStringField;
    SQLDSUsersfield3: TStringField;
    SQLDSUsersfield4: TStringField;
    SQLDSUsersfield5: TStringField;
    SQLDSUsersfield6: TStringField;
    SQLDSUsersfield7: TStringField;
    SQLDSUsersfield8: TStringField;
    SQLDSUsersfield9: TStringField;
    SQLDSUsersfield10: TStringField;
    SQLDSUsersfield11: TStringField;
    SQLDSUsersfield12: TStringField;
    SQLDSUsersfield13: TStringField;
    SQLDSUsersfield14: TStringField;
    SQLConnectionMainDB: TSQLConnection;
    conCredentials: TSQLConnection;
    DCPCipher: TDCP_rijndael;
    DCP_sha11: TDCP_sha1;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label33: TLabel;
    EditUserType: TEdit;
    Label34: TLabel;
    EditAdmin: TEdit;
    CDUsersfield1: TIntegerField;
    CDUsersfield2: TStringField;
    CDUsersfield3: TStringField;
    CDUsersfield4: TStringField;
    CDUsersfield5: TStringField;
    CDUsersfield6: TStringField;
    CDUsersfield7: TStringField;
    CDUsersfield8: TStringField;
    CDUsersfield9: TStringField;
    CDUsersfield10: TStringField;
    CDUsersfield11: TStringField;
    CDUsersfield12: TStringField;
    CDUsersfield13: TStringField;
    CDUsersfield14: TStringField;
    SQLDSUsersField15: TIntegerField;
    SQLDSUsersfield16: TShortintField;
    CDUsersField15: TIntegerField;
    CDUsersfield16: TShortintField;
    cxgrd1: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrdbclmnGrid1DBTableView1field1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1field2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1field3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1field4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1field5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1field6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1field7: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1field8: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1field9: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1field10: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1field11: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1field12: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1field13: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1field14: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Field15: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1field16: TcxGridDBColumn;
    strngfldSQLDSUsersSmsAccount: TStringField;
    strngfldSQLDSUsersSmsLogin: TStringField;
    strngfldSQLDSUsersSmsPassword: TStringField;
    strngfldSQLDSUsersCLDLogin: TStringField;
    strngfldSQLDSUsersCLDPass: TStringField;
    strngfldCDUsersSmsAccount: TStringField;
    strngfldCDUsersSmsLogin: TStringField;
    strngfldCDUsersSmsPassword: TStringField;
    strngfldCDUsersCLDLogin: TStringField;
    strngfldCDUsersCLDPass: TStringField;
    cxgrdbclmnGrid1DBTableView1SmsAccount: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1SmsLogin: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1SmsPassword: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1CLDLogin: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1CLDPass: TcxGridDBColumn;
    procedure dxBarButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActionClearExecute(Sender: TObject);
    procedure ActionCreateAccountExecute(Sender: TObject);
    procedure ActionManageServersExecute(Sender: TObject);
    procedure serverlookupChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure PageControlGridsChange(Sender: TObject);
    procedure DPUsersBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cxgrdbtblvwGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxgrdbtblvwGrid1DBTableView1Editing(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var AAllow: Boolean);
    procedure cxgrdbtblvwGrid1DBTableView1InitEdit(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit);
    procedure cxgrdbtblvwGrid1DBTableView1EditValueChanged(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
  private
    procedure CmShownEditor(var Msg: TMessage);  message CM_SHOWNEDITOR;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses
 ServersManagersFrmUnit;

const
  Host='sql.smartoys.be';
  Login='account_creator';
  Pass='sonnetx2';
  DB='catalog';


 {$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin

 CDUsers.Open;

  DCPCipher.InitStr('smartoys.be',TDCP_sha1);
    DCPCipher.Reset;
 Edit1.Text:=DCPCipher.EncryptString(HOST);
    DCPCipher.Reset;
Edit2.Text:=DCPCipher.EncryptString(Login);
   DCPCipher.Reset;
Edit3.Text:=DCPCipher.EncryptString(Pass);
   DCPCipher.Reset;
Edit4.Text:=DCPCipher.EncryptString(DB);
// SQLQueryRequests.Open
end;

procedure TMainForm.ActionClearExecute(Sender: TObject);
begin
// EditCustLogin.Text:='';
// EditCustPass.Text:='';
// EditCustUrl.Text:='';
 EditCustID.Text:='0000';
 EditCustGroupID.Text:='0000';
// EditDBHost.Text:='';
// EditDBLogin.Text:='';
// EditDBPass.Text:='';
// EditDBName.Text:='';

end;

procedure TMainForm.ActionCreateAccountExecute(Sender: TObject);
begin
 ///
 /// Création du Shop et Customer
 ///

 ///
 /// Création du User SoftWare
 ///
 ///
 DCPCipher.InitStr('smartoys.be',TDCP_sha1);
 If (Length(EditCustLogin.Text)>4) and (Length(EditCustPass.Text)>4) then begin
  if Not CDUsers.Locate('Field2',EditCustLogin.Text,[locaseinsensitive])then begin
   CDUsers.Append;
   CDUsers.FieldByName('Field1').Value:=-1;
   CDUsers.FieldByName('Field2').Value:=EditCustLogin.Text;
   DCPCipher.Reset;
   CDUsers.FieldByName('Field3').Value:=DCPCipher.EncryptString(EditCustPass.Text);
   DCPCipher.Reset;
   CDUsers.FieldByName('Field4').Value:=DCPCipher.EncryptString(EditDBHost.Text);
   DCPCipher.Reset;
   CDUsers.FieldByName('Field5').Value:=DCPCipher.EncryptString(EditDBLogin.Text);
   DCPCipher.Reset;
   CDUsers.FieldByName('Field6').Value:=DCPCipher.EncryptString(EditDBPass.Text);
   DCPCipher.Reset;
   CDUsers.FieldByName('Field7').Value:=DCPCipher.EncryptString(EditDBName.Text);
   DCPCipher.Reset;
   CDUsers.FieldByName('Field8').Value:=DCPCipher.EncryptString(EditCustId.Text);
   DCPCipher.Reset;
   CDUsers.FieldByName('Field9').Value:=DCPCipher.EncryptString(EditCustUrl.Text);
   DCPCipher.Reset;
   CDUsers.FieldByName('Field10').Value:=DCPCipher.EncryptString(EditCustGroupId.Text);
   DCPCipher.Reset;
   CDUsers.FieldByName('Field11').Value:=DCPCipher.EncryptString(EditFTPHost.Text);
   DCPCipher.Reset;
   CDUsers.FieldByName('Field12').Value:=DCPCipher.EncryptString(EditFTPUser.Text);
   DCPCipher.Reset;
   CDUsers.FieldByName('Field13').Value:=DCPCipher.EncryptString(EditFTPPwd.Text);
   DCPCipher.Reset;
   CDUsers.FieldByName('Field14').Value:=DCPCipher.EncryptString(EditFTPDir.Text);
   DCPCipher.Reset;
   CDUsers.FieldByName('Field15').Value:=(EditAdmin.Text);
   CDUsers.FieldByName('Field16').Value:=(EditUserType.Text);
 CDUsers.Post;
//   CDUsers.Refresh;
  end else messagedlg('Ce login existe déjà',mtwarning,[mbok],0);
 end else messagedlg('Le login et mot de passe doivent être de min. 5 charactères',mtwarning,[mbok],0);
 ///
 /// Création du Shop et Customer
 ///
 if CDUsers.ApplyUpdates(-1)=0 then CdUsers.Refresh;
end;

procedure TMainForm.ActionManageServersExecute(Sender: TObject);
begin
 FormManageServers.ShowModal;
end;

procedure TMainForm.cxgrdbtblvwGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  RectColor: TRect;
  RectText : TRect;
    varValue: Variant;
begin
  ACanvas.Canvas.FillRect(AViewInfo.Bounds);

  RectColor := AViewInfo.Bounds;
  InflateRect(RectColor, -3, -3);

  RectText := AViewInfo.Bounds;
  RectText.Top    := AViewInfo.TextBounds.Top;
  RectText.Bottom := AViewInfo.TextBounds.Bottom;
  //RectText.Left   := RectText.Left + 25;

  ACanvas.Font.Color := AViewInfo.Params.TextColor;   //&lt;&lt;ADD THIS LINE


  if (AViewInfo.Value <> null) then
  if (AViewInfo.Item.Index <> cxgrdbclmnGrid1DBTableView1field2.Index) and
   (AViewInfo.Item.Index <> cxgrdbclmnGrid1DBTableView1field1.Index) and
    (AViewInfo.Item.Index <> cxgrdbclmnGrid1DBTableView1field15.Index) and
    (AViewInfo.Item.Index <> cxgrdbclmnGrid1DBTableView1field16.Index)   then begin
     DCPCipher.Reset;
  ACanvas.DrawText(DCPCipher.DecryptString(AViewInfo.Value), RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);
          end else begin
 ACanvas.DrawText(AViewInfo.Value, RectText, cxAlignVCenter or cxAlignLeft or cxShowEndEllipsis);

          end;

  //RectColor.Right := RectColor.Left + 10;
  //ACanvas.Pen.Color := clWindowText;
  //ACanvas.Brush.Color := clRed;
  //ACanvas.Canvas.Rectangle(RectColor);

  ADone := True;
end;


procedure TMainForm.cxgrdbtblvwGrid1DBTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
    if (AItem.Index <> cxgrdbclmnGrid1DBTableView1field2.Index) and
   (AItem.Index <> cxgrdbclmnGrid1DBTableView1field1.Index) and
    (AItem.Index <> cxgrdbclmnGrid1DBTableView1field15.Index) and
    (AItem.Index <> cxgrdbclmnGrid1DBTableView1field16.Index)   then begin

      DCPCipher.Reset;
      if not VarIsNull(AItem .EditValue)  then

      AItem.EditValue := DCPCipher.DecryptString(AItem .EditValue);

    end;
end;

procedure TMainForm.cxgrdbtblvwGrid1DBTableView1EditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
        Sender.Controller.EditingController.Edit.PostEditValue;
  if (AItem.Index <> cxgrdbclmnGrid1DBTableView1field2.Index) and
   (AItem.Index <> cxgrdbclmnGrid1DBTableView1field1.Index) and
    (AItem.Index <> cxgrdbclmnGrid1DBTableView1field15.Index) and
    (AItem.Index <> cxgrdbclmnGrid1DBTableView1field16.Index)   then begin

      DCPCipher.Reset;
      AItem.EditValue := DCPCipher.EncryptString(Sender.Controller.EditingController.Edit.EditingValue);
    end;
end;

procedure TMainForm.cxgrdbtblvwGrid1DBTableView1InitEdit(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
begin

  if  (AItem.Index <> cxgrdbclmnGrid1DBTableView1field2.Index) and
   (AItem.Index <> cxgrdbclmnGrid1DBTableView1field1.Index) and
    (AItem.Index <> cxgrdbclmnGrid1DBTableView1field15.Index) and
    (AItem.Index <> cxgrdbclmnGrid1DBTableView1field16.Index)   then

    PostMessage(Handle, CM_SHOWNEDITOR, Integer(AEdit), 0);
end;

procedure TMainForm.CmShownEditor(var Msg: TMessage);

begin

  if TObject(Msg.WParam) is TcxCustomEdit then

    TcxCustomEdit(Msg.WParam).ModifiedAfterEnter := True;

end;

procedure TMainForm.serverlookupChange(Sender: TObject);
begin
 CDshops.Close;
// CDcustomers.Close;
 SQLConnectionMainDB.CloseDataSets;
 SQLConnectionMainDB.Close;
 EditDBHost.Text:=Servers.FieldByName('ServersDBHost').Value;
 EditDBName.Text:=Servers.FieldByName('ServersDBName').Value;
 EditDBLogin.Text:=Servers.FieldByName('ServersDBUser').Value;
 EditDBPass.Text:=Servers.FieldByName('ServersDBPass').Value;
 EditFTPHost.Text:=Servers.FieldByName('ServersFTPHost').Value;
 EditFTPUser.Text:=Servers.FieldByName('ServersFTPUser').Value;
 EditFTPPwd.Text:=Servers.FieldByName('ServersFTPPwd').Value;
 EditFTPDir.Text:=Servers.FieldByName('ServersFTPDir').Value;
 conCredentials.Params.Values['user_name']:=EditDBName.Text;
 conCredentials.Params.Values['PassWord']:=EditDBPass.Text;
 conCredentials.Params.Values['HostName']:=EditDBHost.Text;
 conCredentials.Params.Values['Database']:=EditDBLogin.Text;
 CDShops.Open;
// ZCustomers.Open;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 conCredentials.CloseDataSets;
 conCredentials.Close;
end;

procedure TMainForm.PageControlGridsChange(Sender: TObject);
begin
 if PageControlGrids.ActivePage=TabsheetUsers then begin

 end;
 if PageControlGrids.ActivePage=TabsheetShops then begin

 end;
end;

procedure TMainForm.DPUsersBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
var
Connection:TSQLConnection;
SQL,ID:String;
IdResult:Variant;
i,lastId:integer;
IdQuery:TSqlDataset;
begin
  // Obtain a pointer to the connection from the source dataset
  Connection := (SourceDS as TCustomSQLDataSet).SQLConnection;
  case UpdateKind of
    ukInsert: begin
      // Insertion dans la table customers
      SQL := Format('INSERT INTO users (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)',
        [
         'field2',
         'field3',
         'field4',
         'field5',
         'field6',
         'field7',
         'field8',
         'field9',
         'field10',
         'field11',
         'field12',
         'field13',
         'field14',

         QuotedStr(vartostr(DeltaDs.FieldByName('field2').NewValue)),
         QuotedStr(vartostr(DeltaDs.FieldByName('field3').NewValue)),
         QuotedStr(vartostr(DeltaDs.FieldByName('field4').NewValue)),
         QuotedStr(vartostr(DeltaDs.FieldByName('field5').NewValue)),
         QuotedStr(vartostr(DeltaDs.FieldByName('field6').NewValue)),
         QuotedStr(vartostr(DeltaDs.FieldByName('field7').NewValue)),
         QuotedStr(vartostr(DeltaDs.FieldByName('field8').NewValue)),
         QuotedStr(vartostr(DeltaDs.FieldByName('field9').NewValue)),
         QuotedStr(vartostr(DeltaDs.FieldByName('field10').NewValue)),
         QuotedStr(vartostr(DeltaDs.FieldByName('field11').NewValue)),
         QuotedStr(vartostr(DeltaDs.FieldByName('field12').NewValue)),
         QuotedStr(vartostr(DeltaDs.FieldByName('field13').NewValue)),
         QuotedStr(vartostr(DeltaDs.FieldByName('field14').NewValue))

        ]);

      Connection.Execute(SQL, nil, nil);
      Applied:=True;
     end;
   end;
//   Connection.Free;


end;

procedure TMainForm.dxBarButton2Click(Sender: TObject);
begin
 if CDUsers.ApplyUpdates(0)=0 then CDUsers.Refresh else showmessage('Error');
end;

end.
