unit StockGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFormStockGrid = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1product_model: TcxGridDBColumn;
    cxGrid1DBTableView1product_name: TcxGridDBColumn;
    cxGrid1DBTableView1product_owner_id: TcxGridDBColumn;
    cxGrid1DBTableView1product_price_stock: TcxGridDBColumn;
    cxGrid1DBTableView1product_location: TcxGridDBColumn;
    cxGrid1DBTableView1product_quantity: TcxGridDBColumn;
    cxGrid1DBTableView1product_supplier_id: TcxGridDBColumn;
    cxGrid1DBTableView1product_date_in: TcxGridDBColumn;
    cxGrid1DBTableView1product_price_gross: TcxGridDBColumn;
    cxGrid1DBTableView1product_isdefect: TcxGridDBColumn;
    cxGrid1DBTableView1product_price_gross_total: TcxGridDBColumn;
    cxGrid1DBTableView1product_date_in_display: TcxGridDBColumn;
    cxGrid1DBTableView1product_price_stock_total: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStockGrid: TFormStockGrid;

implementation

uses ClientDMUnit;

{$R *.dfm}

end.
