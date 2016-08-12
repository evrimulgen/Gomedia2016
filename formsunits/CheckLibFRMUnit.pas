unit CheckLibFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, Menus,
  ComCtrls, DBCtrls, Mask, OleCtrls, DBCGrids, DBClient, MConnect,
  SConnect, Provider, FMTBcd, SqlExpr, variants,
  Midaslib,

  StrUtils, WSDLIntf,

  JvExStdCtrls, JvHtControls, JvExControls, JvSegmentedLEDDisplay, JvGIF;

type
  TFormCheckLib = class(TForm)
    Label1: TLabel;
    LedSlot: TJvSegmentedLEDDisplay;
    MessageLabel: TJvHTLabel;
    BtMain: TBitBtn;
    BitBtnError: TBitBtn;
    Image2: TImage;
    Panel1: TPanel;
    EditMachine: TEdit;
    EditSlot: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure BtMainClick(Sender: TObject);
    procedure BitBtnErrorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure Cycle;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCheckLib: TFormCheckLib;
  CloneDS: TClientDataSet;

implementation

uses ClientDMunit, ThreadsUnit;

{$R *.dfm}

procedure TFormCheckLib.BitBtnErrorClick(Sender: TObject);
begin
  CloneDS.Delete;
  Self.Cycle
end;

procedure TFormCheckLib.BtMainClick(Sender: TObject);
begin
  CloneDS.Next;
  Self.Cycle;
end;

procedure TFormCheckLib.Button1Click(Sender: TObject);
begin
  CloneDS.Locate('machine_id;slot_id', Vararrayof([EditMachine.Text, EditSlot.Text]), [locaseinsensitive]);
end;

procedure TFormCheckLib.Button2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormCheckLib.Cycle;
var
  USBCDMoveOpen: TUSBCDMoveOpen;
  Slot: Integer;
begin
  if not CloneDS.Eof then
  begin
    RemoteDB.Products.Locate('products_model', CloneDS.FieldByName('model').AsString, [locaseinsensitive]);
    USBCDMoveOpen        := TUSBCDMoveOpen.Create(CloneDS.FieldByName('machine_id').Value, CloneDS.FieldByName('slot_id').Value);
    MessageLabel.Caption := 'Le CD ' + RemoteDB.CDSProDescFR.FieldByName('products_name').AsString + ' du client ' + CloneDS.FieldByName('customer_nbr')
      .AsString + ' est-il dans le caroussel ?';
    Slot := CloneDS.FieldByName('slot_id').Value;
    if length(floattostr(Slot)) = 1 then
    begin
      LedSlot.Text := '00' + floattostr(Slot);
    end;
    if length(floattostr(Slot)) = 2 then
    begin
      LedSlot.Text := '0' + floattostr(Slot);
    end;
    if length(floattostr(Slot)) = 3 then
    begin
      LedSlot.Text := floattostr(Slot);
    end;
  end else begin
    Application.ProcessMessages;
    Self.Close;
  end;
end;

procedure TFormCheckLib.FormCreate(Sender: TObject);
begin
  CloneDS := TClientDataSet.Create(Self);
  CloneDS.CloneCursor(RemoteDB.Caroussel, True);
  CloneDS.IndexFieldNames := 'machine_id;slot_id';
  CloneDS.First;
end;

procedure TFormCheckLib.FormShow(Sender: TObject);
begin
  Self.Cycle;
end;

end.