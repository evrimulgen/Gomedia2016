unit ExportPriceMinisterFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, BaseGrid, AdvGrid, ExtCtrls;

type
  TExportPriceMinisterForm = class(TForm)
    PanelButtonBar: TPanel;
    ExportGrid: TAdvStringGrid;
    SpeedButton1: TSpeedButton;
    SaveDialog: TSaveDialog;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExportPriceMinisterForm: TExportPriceMinisterForm;

implementation

uses ClientDMUnit,GlobalsUnit;

{$R *.dfm}

procedure TExportPriceMinisterForm.SpeedButton1Click(Sender: TObject);
begin
 SaveDialog.FileName:='priceminister.csv';
 if SaveDialog.Execute then begin
  ExportGrid.SaveToCSV(SaveDialog.FileName);
 end;
end;

procedure TExportPriceMinisterForm.FormCreate(Sender: TObject);
begin
 try
  ExportGrid.Cells[1,ExportGrid.RowCount-1]:='Code barre';
  ExportGrid.Cells[2,ExportGrid.RowCount-1]:='Prix';
  ExportGrid.Cells[4,ExportGrid.RowCount-1]:='Pays';
  ExportGrid.Cells[5,ExportGrid.RowCount-1]:='Quantit�';
  ExportGrid.Cells[6,ExportGrid.RowCount-1]:='Commentaire';
  ExportGrid.Cells[7,ExportGrid.RowCount-1]:='Mode envoi';
  ExportGrid.Cells[8,ExportGrid.RowCount-1]:='Type';
  ExportGrid.Cells[9,ExportGrid.RowCount-1]:='Cat�gorie console';
  ExportGrid.Cells[10,ExportGrid.RowCount-1]:='Etat';
  RemoteDB.Stock.DisableControls;
  RemoteDB.Products.DisableControls;
  RemoteDB.Stock.Filter:='product_owner_id = '+inttostr(CONNECTEDSHOP)+' and product_supplier_id>1000';
  RemoteDB.Stock.Filtered:=True;
  RemoteDB.Stock.First;
  while not RemoteDB.Stock.Eof do begin
   if RemoteDB.Products.Locate('products_model',RemoteDB.Stockproduct_model.AsString,[]) then begin
     ExportGrid.AddRow;
     ExportGrid.Cells[1,ExportGrid.RowCount-1]:=RemoteDB.Stockproduct_model.AsString;
     ExportGrid.Cells[2,ExportGrid.RowCount-1]:=floattostrf(RemoteDB.Stockproduct_price_stock.AsFloat*1.15,fffixed,7,2);
     ExportGrid.Cells[4,ExportGrid.RowCount-1]:='BE';
     ExportGrid.Cells[5,ExportGrid.RowCount-1]:='1';
     ExportGrid.Cells[6,ExportGrid.RowCount-1]:='Envoi Rapide sous Bulles - Versions Francaises';
     ExportGrid.Cells[7,ExportGrid.RowCount-1]:='Normal Recommand�';
     ExportGrid.Cells[8,ExportGrid.RowCount-1]:='Jeux-video';
     ExportGrid.Cells[9,ExportGrid.RowCount-1]:=RemoteDB.Productsproducts_root_category_name.Value;
     ExportGrid.Cells[10,ExportGrid.RowCount-1]:='0';
   end;
   RemoteDB.Stock.Next;
  end;

  RemoteDB.Stock.Filter:='product_owner_id = '+inttostr(CONNECTEDSHOP)+' and product_supplier_id<1000';
  RemoteDB.Stock.Filtered:=True;
  RemoteDB.Stock.First;
  while not RemoteDB.Stock.Eof do begin
   if RemoteDB.Products.Locate('products_model',RemoteDB.Stockproduct_model.AsString,[]) then begin
     ExportGrid.AddRow;
     ExportGrid.Cells[1,ExportGrid.RowCount-1]:=RemoteDB.Stockproduct_model.AsString;
     ExportGrid.Cells[2,ExportGrid.RowCount-1]:=floattostrf(RemoteDB.Stockproduct_price_stock.AsFloat,fffixed,7,2);
     ExportGrid.Cells[4,ExportGrid.RowCount-1]:='N';
     ExportGrid.Cells[5,ExportGrid.RowCount-1]:='1';
     ExportGrid.Cells[6,ExportGrid.RowCount-1]:='Neuf sous Blister - Envoi Rapide sous Bulles - Versions Francaises';
     ExportGrid.Cells[7,ExportGrid.RowCount-1]:='Normal Recommand�';
     ExportGrid.Cells[8,ExportGrid.RowCount-1]:='Jeux-video';
     ExportGrid.Cells[9,ExportGrid.RowCount-1]:=RemoteDB.Productsproducts_root_category_name.Value;
     ExportGrid.Cells[10,ExportGrid.RowCount-1]:='2';
   end;
   RemoteDB.Stock.Next;
  end;

 finally
  RemoteDB.Stock.Filtered:=False;
  RemoteDB.Stock.Filter:='';
  RemoteDB.Stock.EnableControls;
  RemoteDB.Products.EnableControls;
 end;
end;

procedure TExportPriceMinisterForm.SpeedButton2Click(Sender: TObject);
begin
 SaveDialog.FileName:='priceminister.xls';
 if SaveDialog.Execute then begin
  ExportGrid.SaveToXLS(SaveDialog.FileName);
 end;
end;

end.
