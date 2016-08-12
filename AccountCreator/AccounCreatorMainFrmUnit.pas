unit AccounCreatorMainFrmUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxEditor, dxEdLib, dxCntner, StdCtrls, DB, Grids, DBGrids,
  ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection,
  ExtCtrls, DBAdvNavigator, ToolWin, ActnMan, ActnCtrls, ActnList,
  XPStyleActnCtrls, ImgList, JvDBComb, DBClient;

type
  TMainForm = class(TForm)
    ZConnection: TZConnection;
    ZQueryTable: TZQuery;
    ZUpdateSQL: TZUpdateSQL;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ZQueryTablefield1: TIntegerField;
    ZQueryTablefield2: TStringField;
    ZQueryTablefield3: TStringField;
    ZQueryTablefield4: TStringField;
    ZQueryTablefield5: TStringField;
    ZQueryTablefield6: TStringField;
    ZQueryTablefield7: TStringField;
    ZQueryTablefield8: TStringField;
    ZQueryTablefield9: TStringField;
    ZQueryTablefield10: TStringField;
    dxEditStyleController1: TdxEditStyleController;
    DBAdvNavigator1: TDBAdvNavigator;
    Servers: TClientDataSet;
    ServersServersName: TStringField;
    ServersServersDBHost: TStringField;
    ServersServersDBName: TStringField;
    ServersServersDBUser: TStringField;
    ServersServersDBPass: TStringField;
    DataSourceServers: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EditCustLogin: TdxEdit;
    EditCustGroupID: TdxMaskEdit;
    EditCustPass: TdxEdit;
    EditDBHost: TdxEdit;
    EditDBName: TdxEdit;
    EditDBLogin: TdxEdit;
    EditDBPass: TdxEdit;
    EditCustUrl: TdxEdit;
    EditCustID: TdxMaskEdit;
    JvDBComboBox1: TJvDBComboBox;
    ImageList: TImageList;
    ActionManager1: TActionManager;
    ActionClear: TAction;
    Action2: TAction;
    ActionToolBar1: TActionToolBar;
    ActionManageServers: TAction;
    procedure FormCreate(Sender: TObject);
    procedure ActionClearExecute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses
 LbCipher,LbString;

var
 key128b : TKey128;

Const
 USERDBLogin='/W4MSrXiGmJm7stZdQu/yw==';
 USERDBPwd='ZObrpTuDXUM+kNLhZ1OHog==';
 USERDBHost='yRwS8qatphEVykqfaAwtpg==';
 USERDBName='WbJPeNMFL4cfBoWitp6iOg==';

 {$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
 GenerateLMDKey(Key128b,sizeof(Key128b),'jonamedia');
 ZConnection.HostName:=Trim(RDLEncryptStringEx(USERDBHost,Key128b,16,False));
 ZConnection.Database:=Trim(RDLEncryptStringEx(USERDBName,Key128b,16,False));
 ZConnection.User:=Trim(RDLEncryptStringEx(USERDBLogin,Key128b,16,False));
 ZConnection.Password:=Trim(RDLEncryptStringEx(USERDBpwd,Key128b,16,False));
 ZQueryTable.Open;
end;

procedure TMainForm.ActionClearExecute(Sender: TObject);
begin
 EditCustLogin.Text:='';
 EditCustPass.Text:='';
 EditCustUrl.Text:='';
 EditCustID.Text:='0000';
 EditCustGroupID.Text:='0000';
 EditDBHost.Text:='';
 EditDBLogin.Text:='';
 EditDBPass.Text:='';
 EditDBName.Text:='';
end;

procedure TMainForm.Action2Execute(Sender: TObject);
begin
 ZQueryTable.Append;
  ZQueryTable.FieldByName('Field2').Value:=EditCustLogin.Text;
  ZQueryTable.FieldByName('Field3').Value:=RDLEncryptStringEx(EditCustPass.Text,Key128b,16,True);
  ZQueryTable.FieldByName('Field4').Value:=RDLEncryptStringEx(EditDBHost.Text,Key128b,16,True);
  ZQueryTable.FieldByName('Field5').Value:=RDLEncryptStringEx(EditDBLogin.Text,Key128b,16,True);
  ZQueryTable.FieldByName('Field6').Value:=RDLEncryptStringEx(EditDBPass.Text,Key128b,16,True);
  ZQueryTable.FieldByName('Field7').Value:=RDLEncryptStringEx(EditDBName.Text,Key128b,16,True);
  ZQueryTable.FieldByName('Field8').Value:=RDLEncryptStringEx(EditCustId.Text,Key128b,16,True);
  ZQueryTable.FieldByName('Field9').Value:=RDLEncryptStringEx(EditCustUrl.Text,Key128b,16,True);
  ZQueryTable.FieldByName('Field10').Value:=RDLEncryptStringEx(EditCustGroupId.Text,Key128b,16,True);
 ZQueryTable.Post;
 ZQueryTable.Refresh;
end;

end.
