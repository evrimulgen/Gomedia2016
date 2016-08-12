unit StockCheckFrmUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBClient, StdCtrls,
  ExtCtrls, JvCaptionPanel, Buttons, Menus,
  JvExExtCtrls,
  cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, JvExtComponent, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData;

type
  TStockCheckForm = class(TForm)
    JvCaptionPanel1: TJvCaptionPanel;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    SpeedButtonToRent: TSpeedButton;
    SpeedButtonToSales: TSpeedButton;
    JvCaptionPanelCustomersDeposit: TJvCaptionPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1product_model: TcxGridDBColumn;
    cxGrid1DBTableView1product_name: TcxGridDBColumn;
    cxGrid1DBTableView1product_owner_id: TcxGridDBColumn;
    cxGrid1DBTableView1product_price_stock: TcxGridDBColumn;
    cxGrid1DBTableView1product_quantity: TcxGridDBColumn;
    cxGrid1DBTableView1product_supplier_id: TcxGridDBColumn;
    cxGrid1DBTableView1product_price_gross: TcxGridDBColumn;
    cxGrid1DBTableView1product_date_in_display: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1rent_stock_condition: TcxGridDBColumn;
    cxGridDBTableView1rent_stock_count: TcxGridDBColumn;
    cxGridDBTableView1rent_stock_state: TcxGridDBColumn;
    cxGridDBTableView1rent_stock_date_added: TcxGridDBColumn;
    cxGridDBTableView1rent_stock_last_rent: TcxGridDBColumn;
    cxGridDBTableView1rent_stock_location: TcxGridDBColumn;
    cxGridDBTableView1rent_stock_name: TcxGridDBColumn;
    cxGridDBTableView1rent_stock_product_model: TcxGridDBColumn;
    cxGridDBTableView1rent_stock_last_rent_disp: TcxGridDBColumn;
    JvCaptionPanel2: TJvCaptionPanel;
    DBGrid1: TDBGrid;
    procedure SpeedButtonToRentClick(Sender: TObject);
    procedure SBEnterLibraryClick(Sender: TObject);
    procedure SpeedButtonPrintLabelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    model: string;
  end;

var
  StockCheckForm: TStockCheckForm;
  StockClone: TClientDataset;
  IndexTmp: string;

implementation

uses ClientDMunit, EnterLibFrmUnit, DavidUtilsUnit, MainFRMunit;

{$R *.dfm}

procedure TStockCheckForm.SpeedButtonToRentClick(Sender: TObject);
begin
  // Confirmation pour stock occasion
  if RemoteDB.netshop_stock.Eof and RemoteDB.netshop_stock.Bof then
    exit;
  if RemoteDB.netshop_stock.FieldByName('product_owner_id').Value > 100 then
  begin
    if messagedlg('Vous transferez un produit en depot, ce produit sera irr�m�diablement marqu� comme vendu pour le client, voulez vous continuer ?', mtwarning,
      [mbyes, mbno], 0) = mrNo then
      exit;
    // V�rification de la table sales coh�rence items sold
    if not RemoteDB.netshop_sales.Locate('sales_id', 0, []) then
    begin
      RemoteDB.netshop_sales.Append;
      RemoteDB.netshop_sales.FieldByName('sales_id').AsFloat := 0;
      RemoteDB.netshop_sales.FieldByName('sales_paid_bct').AsFloat := 0;
      RemoteDB.netshop_sales.FieldByName('sales_date_time').AsFloat := 0;
      RemoteDB.netshop_sales.FieldByName('sales_paid_proton').AsFloat := 0;
      RemoteDB.netshop_sales.FieldByName('sales_paid_visa').AsFloat := 0;
      RemoteDB.netshop_sales.FieldByName('sales_paid_voucher').AsFloat := 0;
      RemoteDB.netshop_sales.FieldByName('sales_paid_cash').AsFloat := 0;
      RemoteDB.netshop_sales.Post;
    end;
    // Transfer du produit occasion en Items Sold
    RemoteDB.netshop_items_sold.Append;
    RemoteDB.netshop_items_sold.FieldByName('items_sold_model').AsString := RemoteDB.netshop_stock.FieldByName('product_model').AsString;
    RemoteDB.netshop_items_sold.FieldByName('items_sold_name').AsString := RemoteDB.netshop_stock.FieldByName('product_name').AsString;
    RemoteDB.netshop_items_sold.FieldByName('items_sold_quantity').Value := 1;
    RemoteDB.netshop_items_sold.FieldByName('items_sold_price_catalog').AsFloat := RemoteDB.Products.FieldByName('products_price').AsFloat;
    RemoteDB.netshop_items_sold.FieldByName('items_sold_price_Stock').AsFloat := RemoteDB.netshop_stock.FieldByName('product_price_stock').AsFloat;
    RemoteDB.netshop_items_sold.FieldByName('items_sold_price_gross').AsFloat := RemoteDB.netshop_stock.FieldByName('product_price_gross').AsFloat;
    RemoteDB.netshop_items_sold.FieldByName('items_sold_owner_id').AsInteger := RemoteDB.netshop_stock.FieldByName('product_owner_id').AsInteger;
    RemoteDB.netshop_items_sold.FieldByName('items_sold_supplier_id').AsInteger := RemoteDB.netshop_stock.FieldByName('product_supplier_id').AsInteger;
    RemoteDB.netshop_items_sold.FieldByName('items_sold_date_in').AsString := RemoteDB.netshop_stock.FieldByName('product_date_in').AsString;
    RemoteDB.netshop_items_sold.Post;
  end;

  // Transfer d'une unit� de stock
  RemoteDB.netshop_rent_stock.Append;
  RemoteDB.netshop_rent_stock.FieldByName('rent_stock_product_model').Value := RemoteDB.netshop_stock.FieldByName('product_model').Value;
  RemoteDB.netshop_rent_stock.FieldByName('rent_stock_name').Value := RemoteDB.netshop_stock.FieldByName('product_name').Value;
  RemoteDB.netshop_rent_stock.Post;
  if RemoteDB.netshop_stock.FieldByName('product_quantity').Value > 1 then
  begin
    // Plusieurs unit�s disponibles
    RemoteDB.netshop_stock.Edit;
    RemoteDB.netshop_stock.FieldByName('product_quantity').Value := RemoteDB.netshop_stock.FieldByName('product_quantity').Value - 1;
    RemoteDB.netshop_stock.Post;
  end else begin
    // 1 seul titre disponible
    RemoteDB.netshop_stock.Delete;
  end;
end;

procedure TStockCheckForm.FormShow(Sender: TObject);
begin
  RemoteDB.SQLQuery.CommandText := 'CALL StockNewSum(' + (model) + ');';
  RemoteDB.CDSQuery.Open;
end;

procedure TStockCheckForm.SBEnterLibraryClick(Sender: TObject);
var
  AEnterLib: TFormEnterLibrary;
begin
  AEnterLib := TFormEnterLibrary.Create(nil);
  try
    AEnterLib.Enter(RemoteDB.netshop_stock.FieldByName('product_owner_id').AsString, RemoteDB.netshop_stock.FieldByName('product_model').AsString);
  finally
    AEnterLib.Free;
  end;

end;

procedure TStockCheckForm.SpeedButtonPrintLabelClick(Sender: TObject);
var
  LabelRent: TLabelRent;
begin
  LabelRent              := TLabelRent.Create;
  LabelRent.LabelPrinter := (MainForm.Parameter['PrintersLabelPrinter']);
  LabelRent.Print(RemoteDB.netshop_rent_stock.FieldByName('rent_stock_product_model').Value, RemoteDB.netshop_rent_stock.FieldByName('rent_stock_name').Value,
    RemoteDB.netshop_rent_stock.FieldByName('rent_stock_id').Value, (StrToBool(MainForm.Parameter['PrintersLabelDialog'])));
end;

end.
