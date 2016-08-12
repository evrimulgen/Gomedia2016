unit DacalEmptyUnsoldFRMUnit;

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
  TFormDacalEmptyUnsold = class(TForm)
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
  FormDacalEmptyUnsold: TFormDacalEmptyUnsold;
  CloneDS: TClientDataSet;
  CloneStockDS: TClientDataSet;

implementation

uses ClientDMunit, ThreadsUnit, DavidUtilsUnit;

{$R *.dfm}

procedure TFormDacalEmptyUnsold.BitBtnErrorClick(Sender: TObject);
begin
  CloneDS.Delete;
  Self.Cycle
end;

procedure TFormDacalEmptyUnsold.BtMainClick(Sender: TObject);
begin
  CloneDS.Next;
  Self.Cycle;
end;

procedure TFormDacalEmptyUnsold.Button1Click(Sender: TObject);
begin
  CloneDS.Locate('machine_id;slot_id', Vararrayof([EditMachine.Text, EditSlot.Text]), [locaseinsensitive]);
end;

procedure TFormDacalEmptyUnsold.Button2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormDacalEmptyUnsold.Cycle;
var
  USBCDMoveOpen: TUSBCDMoveOpen;
  Slot: Integer;
  ProductIsGood: Boolean;
  DateIn: TDateTime;
  DlgMsg: string;

begin
  if not CloneDS.Eof then
  begin
    RemoteDB.Products.Locate('products_model', CloneDS.FieldByName('model').AsString, [locaseinsensitive]);
    if CloneStockDS.Locate('product_model;product_owner_id', Vararrayof([CloneDS.FieldByName('model').AsString, CloneDS.FieldByName('customer_nbr').AsString]
      ), []) then
    begin
      DateIn := OSCToVCLDate(CloneStockDS.FieldByName('Product_Date_In').Value);
      if DateIn < Now - 180 then
      begin
        // Vieux Produit
        ProductIsGood := false;
        DlgMsg := 'Le CD ' + RemoteDB.CDSProDescFR.FieldByName('products_name').AsString + ' entr� le ' + CloneStockDS.FieldByName('Product_Date_In').Value +
          ' doit il rester dans le caroussel ?';
      end else begin
        // Produit r�cent
        ProductIsGood := true;
      end;
    end else begin
      // Pas trouv� dans le stock
      DlgMsg := 'Le CD ' + RemoteDB.CDSProDescFR.FieldByName('products_name').AsString + ' entr� le ' + CloneStockDS.FieldByName('Product_Date_In').Value +
        ' ne semble pus �tre dans le stock doit il rester dans le caroussel ?';
      ProductIsGood := false;
    end;

    if not ProductIsGood then
    begin
      USBCDMoveOpen        := TUSBCDMoveOpen.Create(CloneDS.FieldByName('machine_id').Value, CloneDS.FieldByName('slot_id').Value);
      MessageLabel.Caption := DlgMsg;
      Slot                 := CloneDS.FieldByName('slot_id').Value;
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
      CloneDS.Next;
      Self.Cycle;
    end;
  end else begin
    // EOF
    Application.ProcessMessages;
    Self.Close;
  end;
end;

procedure TFormDacalEmptyUnsold.FormCreate(Sender: TObject);
begin

  CloneDS := TClientDataSet.Create(Self);
  CloneDS.CloneCursor(RemoteDB.Caroussel, true);
  CloneDS.IndexFieldNames := 'machine_id;slot_id';
  CloneDS.First;

  CloneStockDS := TClientDataSet.Create(Self);
  CloneStockDS.CloneCursor(RemoteDB.netshop_stock, true);
  CloneStockDS.IndexFieldNames := 'product_model;product_owner_id';
  CloneStockDS.Filter          := '(product_owner_id>99999) or ( (product_owner_id<100000) and (product_supplier_id>99999) )';
  CloneStockDS.Filtered        := true;
  CloneStockDS.First;

end;

procedure TFormDacalEmptyUnsold.FormShow(Sender: TObject);
begin
  Self.Cycle;
end;

end.
