unit RepairNewFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ClientDMUnit, StdCtrls, Buttons, DBCtrls, Menus, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxContainer, cxEdit, cxControls, cxTextEdit,
  cxClasses, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters;

type
  TRepairNewForm = class(TForm)
    LabelCust_nbr: TLabel;
    LabelDate_in: TLabel;
    BitBtnOK: TBitBtn;
    BitBtnCancel: TBitBtn;
    Labelid: TLabel;
    LabelProductModel: TLabel;
    LabelProductSerial: TLabel;
    LabelLabelProblemDescription: TLabel;
    LabelProduct_name: TLabel;
    DBEditRepairId: TcxDBTextEdit;
    DBEditRepairCustNbr: TcxDBTextEdit;
    DBEditRepairDateIn: TcxDBTextEdit;
    cxEditStyleController1: TcxEditStyleController;
    DBEditRepairModel: TcxDBTextEdit;
    DBEditRepairProductName: TcxDBComboBox;
    DBEditRepairSerial: TcxDBTextEdit;
    DBEditRepairProblem: TcxDBTextEdit;
    procedure dxDBEditRepairModelExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure DBEditRepairProductNameExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepairNewForm: TRepairNewForm;

implementation

{$R *.dfm}

procedure TRepairNewForm.dxDBEditRepairModelExit(Sender: TObject);
begin
  if DBEditRepairModel.Text <> '' then
  begin
    DBEditRepairModel.Text := uppercase(DBEditRepairModel.Text);
    if not remoteDB.Products.Locate('products_model', remoteDB.netshop_repair.FieldbyName('repair_products_model').Value, []) then
    begin
      remoteDB.netshop_repair.FieldbyName('repair_products_model').Value := '';
      messagedlg('Veuillez entrer un mod�le valable', mtwarning, [mbok], 0);
    end else begin
      remoteDB.netshop_repair.FieldbyName('repair_products_name').Value := remoteDB.CDSProDescFR.FieldbyName('products_name').Value;
    end;
  end;
end;

procedure TRepairNewForm.FormShow(Sender: TObject);
begin
  remoteDB.Products.Filter   := 'products_promo=' + quotedstr('True');
  remoteDB.Products.Filtered := True;
  remoteDB.Products.First;
  DBEditRepairProductName.Properties.Items.Clear;
  while not remoteDB.Products.Eof do
  begin
    DBEditRepairProductName.Properties.Items.Add(remoteDB.CDSProDescFR.FieldbyName('products_name').AsString);
    remoteDB.Products.Next;
  end;
  remoteDB.Products.Filter   := '';
  remoteDB.Products.Filtered := False;
end;

procedure TRepairNewForm.BitBtnOKClick(Sender: TObject);
begin
  begin
    if not remoteDB.Products.Locate('products_model', remoteDB.netshop_repair.FieldbyName('repair_products_model').Value, []) then
    begin
      remoteDB.netshop_repair.FieldbyName('repair_products_model').Value := '';
      messagedlg('Veuillez entrer un mod�le valable', mtwarning, [mbok], 0);
      Abort;
    end;
    if length(remoteDB.netshop_repair.FieldbyName('repair_products_problem').AsString) < 5 then
    begin
      messagedlg('Veuillez entrer un description du probl�me valable', mtwarning, [mbok], 0);
      Abort;
    end;
    if length(remoteDB.netshop_repair.FieldbyName('repair_products_serial').AsString) < 5 then
    begin
      messagedlg('Veuillez entrer un N� de s�rie valable', mtwarning, [mbok], 0);
      Abort;
    end;
  end;
  Self.ModalResult := MrOk;
end;

procedure TRepairNewForm.DBEditRepairProductNameExit(Sender: TObject);
begin
  if DBEditRepairProductName.Text <> '' then
    if not remoteDB.CDSProDescFR.Locate('products_name', remoteDB.netshop_repair.FieldbyName('repair_products_name').Value, []) then
    begin
      remoteDB.netshop_repair.FieldbyName('repair_products_name').Value := '';
      messagedlg('Veuillez entrer un nom valable', mtwarning, [mbok], 0);
    end else begin
      remoteDB.netshop_repair.FieldbyName('repair_products_model').Value := remoteDB.Products.FieldbyName('products_model').Value;
    end;
end;

end.
