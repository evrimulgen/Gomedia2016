unit ChangePriceFrmUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ClientDMUnit, StdCtrls, Buttons, DBCtrls,
  cxControls, cxContainer,
  cxEdit, cxTextEdit, cxCurrencyEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters;

type
  TChangePriceForm = class(TForm)
    LabelCurrent: TLabel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBTextName: TDBText;
    EditNewPrice: TcxCurrencyEdit;
    EditOldPrice: TcxCurrencyEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangePriceForm: TChangePriceForm;

implementation

{$R *.dfm}

procedure TChangePriceForm.FormShow(Sender: TObject);
begin
  EditOldPrice.Value := RemoteDB.netshop_stock.FieldByName('product_price_Stock').AsFloat;
  EditNewPrice.SetFocus;
end;

procedure TChangePriceForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  RemoteDB.netshop_stock.Edit;
  RemoteDB.netshop_stock.FieldByName('product_price_Stock').AsFloat := EditNewPrice.Value;
  // RemoteDB.netshop_stock.Post;
  // Table is posted in the calling function
end;

end.