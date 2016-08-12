unit DialogCancelSalesFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, cxMaskEdit, Spin, ComCtrls, math, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters;

type
  TCancelSalesForm = class(TForm)
    BitBtnOk: TBitBtn;
    BitBtnCancel: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    UpDown1: TUpDown;
    EditQmax: TcxMaskEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBMaskEdit1: TcxDBMaskEdit;
    procedure BitBtnOkClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BitBtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CancelSalesForm: TCancelSalesForm;

implementation

uses ClientDMUnit;

{$R *.dfm}

procedure TCancelSalesForm.BitBtnOkClick(Sender: TObject);
var
  StockSP, Items_soldSP, CustomersSP, RefundsSP, Items_RefundedSP: integer;
begin
  StockSP          := RemoteDB.netshop_stock.SavePoint;
  Items_soldSP     := RemoteDB.netshop_items_sold.SavePoint;
  CustomersSP      := RemoteDB.Customers.SavePoint;
  RefundsSP        := RemoteDB.netshop_refunds.SavePoint;
  Items_RefundedSP := RemoteDB.netshop_items_refunded.SavePoint;
  try
    // Ajout du refund et du Item_refunded
    RemoteDB.netshop_refunds.Append;
    RemoteDB.netshop_refunds.FieldByName('refunds_amount').AsFloat := -RemoteDB.netshop_items_sold.FieldByName('items_sold_price_stock').AsFloat *
      StrToInt(EditQmax.Text);
    RemoteDB.netshop_refunds.FieldByName('refunds_nature').Value := 'Retour';
    RemoteDB.netshop_refunds.FieldByName('refunds_customer_nbr').Value := RemoteDB.CustomersCustomers_nbr.Value;
    RemoteDB.netshop_refunds.FieldByName('refunds_items_id').Value := RemoteDB.netshop_items_sold.FieldByName('items_sold_id').Value;
    RemoteDB.netshop_refunds.Post;

    RemoteDB.netshop_items_refunded.Append;
    RemoteDB.netshop_items_refunded.FieldByName('items_refunded_refunds_shop_id').Value := RemoteDB.netshop_refunds.FieldByName('refunds_shop_id').Value;
    RemoteDB.netshop_items_refunded.FieldByName('items_refunded_refunds_id').Value := RemoteDB.netshop_refunds.FieldByName('refunds_id').Value;
    RemoteDB.netshop_items_refunded.FieldByName('items_refunded_model').Value := RemoteDB.netshop_items_sold.FieldByName('items_sold_model').Value;
    RemoteDB.netshop_items_refunded.FieldByName('items_refunded_name').Value := RemoteDB.netshop_items_sold.FieldByName('items_sold_name').Value;
    RemoteDB.netshop_items_refunded.FieldByName('items_refunded_quantity').Value := StrToInt(EditQmax.Text);
    RemoteDB.netshop_items_refunded.FieldByName('items_refunded_price_gross').Value := RemoteDB.netshop_items_sold.FieldByName('items_sold_price_gross').Value;
    RemoteDB.netshop_items_refunded.FieldByName('items_refunded_price_catalog').Value :=
      RemoteDB.netshop_items_sold.FieldByName('items_sold_price_catalog').Value;
    RemoteDB.netshop_items_refunded.FieldByName('items_refunded_price_stock').Value := RemoteDB.netshop_items_sold.FieldByName('items_sold_price_stock').Value;
    RemoteDB.netshop_items_refunded.FieldByName('items_refunded_owner_id').Value := RemoteDB.netshop_items_sold.FieldByName('items_sold_owner_id').Value;
    RemoteDB.netshop_items_refunded.FieldByName('items_refunded_supplier_id').Value := RemoteDB.netshop_items_sold.FieldByName('items_sold_supplier_id').Value;
    RemoteDB.netshop_items_refunded.FieldByName('items_refunded_date_in').Value := RemoteDB.netshop_items_sold.FieldByName('items_sold_date_in').Value;
    RemoteDB.netshop_items_refunded.Post;

    RemoteDB.netshop_items_sold.Edit;
    RemoteDB.netshop_items_sold.FieldByName('items_refunded').Value := RemoteDB.netshop_items_sold.FieldByName('items_refunded').Value +
      StrToInt(EditQmax.Text);
    RemoteDB.netshop_items_sold.Post;

    RemoteDB.FreeStockTo;
    RemoteDB.netshop_stock.Filtered := False;
    RemoteDB.netshop_stock.Append;
    RemoteDB.netshop_stock.FieldByName('product_model').Value := RemoteDB.netshop_items_sold.FieldByName('items_sold_model').Value;
    RemoteDB.netshop_stock.FieldByName('product_name').Value := RemoteDB.netshop_items_sold.FieldByName('items_sold_name').Value;
    RemoteDB.netshop_stock.FieldByName('product_quantity').Value := StrToInt(EditQmax.Text);
    RemoteDB.netshop_stock.FieldByName('product_price_gross').Value := RemoteDB.netshop_items_sold.FieldByName('items_sold_price_gross').Value;
    RemoteDB.netshop_stock.FieldByName('product_price_stock').Value := RemoteDB.netshop_items_sold.FieldByName('items_sold_price_stock').Value;
    RemoteDB.netshop_stock.FieldByName('product_owner_id').Value := RemoteDB.netshop_items_sold.FieldByName('items_sold_owner_id').Value;
    RemoteDB.netshop_stock.FieldByName('product_supplier_id').Value := RemoteDB.netshop_items_sold.FieldByName('items_sold_supplier_id').Value;
    RemoteDB.netshop_stock.FieldByName('product_date_in').Value := RemoteDB.netshop_items_sold.FieldByName('items_sold_date_in').Value;
    RemoteDB.netshop_stock.Post;
    RemoteDB.netshop_stock.Filtered := True;

  except
    RemoteDB.netshop_stock.SavePoint          := StockSP;
    RemoteDB.netshop_items_sold.SavePoint     := Items_soldSP;
    RemoteDB.Customers.SavePoint              := CustomersSP;
    RemoteDB.netshop_refunds.SavePoint        := RefundsSP;
    RemoteDB.netshop_items_refunded.SavePoint := Items_RefundedSP;
    ShowMessage('Erreur durant le remboursement');
  end;
  Self.ModalResult := mrok
end;

procedure TCancelSalesForm.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  if Button = btNext then
  begin
    EditQmax.Text := inttostr(min(StrToInt(EditQmax.Text) + 1, RemoteDB.netshop_items_sold.FieldByName('items_sold_quantity').AsInteger));
  end;
  if Button = btPrev then
  begin
    EditQmax.Text := inttostr(max(StrToInt(EditQmax.Text) - 1, 1));
  end;

end;

procedure TCancelSalesForm.BitBtnCancelClick(Sender: TObject);
begin
  Self.ModalResult := mrcancel
end;

end.
