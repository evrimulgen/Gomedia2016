unit SalesCorrectFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, math;

type
  TSalesCorrectForm = class(TForm)
    DBEditCash: TDBEdit;
    DBEditBct: TDBEdit;
    DBEditProt: TDBEdit;
    DBEditVisa: TDBEdit;
    DBEditVoucher: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Initvalue: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButtonVoucher: TSpeedButton;
    SpeedButtonVisa: TSpeedButton;
    SpeedButtonProton: TSpeedButton;
    SpeedButtonBCT: TSpeedButton;
    SpeedButtonCash: TSpeedButton;
    SpeedButtonCashClear: TSpeedButton;
    SpeedButtonBCTClear: TSpeedButton;
    SpeedButtonProtonClear: TSpeedButton;
    SpeedButtonVisaClear: TSpeedButton;
    SpeedButtonVoucherClear: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    Button_process: TBitBtn;
    BitBtn1: TBitBtn;
    lblCustomer: TLabel;
    Label8: TLabel;
    dbedtCustomer: TDBEdit;
    procedure SpeedButtonCashClearClick(Sender: TObject);
    procedure SpeedButtonBCTClearClick(Sender: TObject);
    procedure SpeedButtonProtonClearClick(Sender: TObject);
    procedure SpeedButtonVisaClearClick(Sender: TObject);
    procedure SpeedButtonVoucherClearClick(Sender: TObject);
    procedure SpeedButtonCashClick(Sender: TObject);
    procedure SpeedButtonBCTClick(Sender: TObject);
    procedure SpeedButtonProtonClick(Sender: TObject);
    procedure SpeedButtonVisaClick(Sender: TObject);
    procedure SpeedButtonVoucherClick(Sender: TObject);
    procedure Button_processClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalesCorrectForm: TSalesCorrectForm;

implementation

uses ClientDMUnit;

{$R *.dfm}

procedure TSalesCorrectForm.SpeedButtonCashClearClick(Sender: TObject);
begin
  RemoteDB.netshop_sales.Edit;
  RemoteDB.netshop_sales.FieldByName('sales_paid_cash').AsFloat := 0;
  RemoteDB.netshop_sales.Post;
end;

procedure TSalesCorrectForm.SpeedButtonBCTClearClick(Sender: TObject);
begin
  RemoteDB.netshop_sales.Edit;
  RemoteDB.netshop_sales.FieldByName('sales_paid_bct').AsFloat := 0;
  RemoteDB.netshop_sales.Post;
end;

procedure TSalesCorrectForm.SpeedButtonProtonClearClick(Sender: TObject);
begin
  RemoteDB.netshop_sales.Edit;
  RemoteDB.netshop_sales.FieldByName('sales_paid_proton').AsFloat := 0;
  RemoteDB.netshop_sales.Post;
end;

procedure TSalesCorrectForm.SpeedButtonVisaClearClick(Sender: TObject);
begin
  RemoteDB.netshop_sales.Edit;
  RemoteDB.netshop_sales.FieldByName('sales_paid_visa').AsFloat := 0;
  RemoteDB.netshop_sales.Post;
end;

procedure TSalesCorrectForm.SpeedButtonVoucherClearClick(Sender: TObject);
begin
  RemoteDB.netshop_sales.Edit;
  RemoteDB.netshop_sales.FieldByName('sales_paid_voucher').AsFloat := 0;
  RemoteDB.netshop_sales.Post;
end;

procedure TSalesCorrectForm.SpeedButtonCashClick(Sender: TObject);
var
  saldo: real;
begin
  with RemoteDB.netshop_sales do
  begin
    Edit;
    saldo := (strtofloat(Initvalue.Caption) - (FieldByName('sales_paid_voucher')
      .AsFloat + FieldByName('sales_paid_visa').AsFloat +
      FieldByName('sales_paid_proton').AsFloat + FieldByName('sales_paid_bct')
      .AsFloat));
    if saldo < 0 then
      FieldByName('sales_paid_cash').AsFloat := Min(0, saldo);
    if saldo > 0 then
      FieldByName('sales_paid_cash').AsFloat := Max(0, saldo);
    Post;
  end;
end;

procedure TSalesCorrectForm.SpeedButtonBCTClick(Sender: TObject);
var
  saldo: real;
begin
  with RemoteDB.netshop_sales do
  begin
    Edit;
    saldo := (strtofloat(Initvalue.Caption) - (FieldByName('sales_paid_voucher')
      .AsFloat + FieldByName('sales_paid_visa').AsFloat +
      FieldByName('sales_paid_proton').AsFloat + FieldByName('sales_paid_cash')
      .AsFloat));
    if saldo < 0 then
      FieldByName('sales_paid_bct').AsFloat := Min(0, saldo);
    if saldo > 0 then
      FieldByName('sales_paid_bct').AsFloat := Max(0, saldo);
    Post;
  end;
end;

procedure TSalesCorrectForm.SpeedButtonProtonClick(Sender: TObject);
var
  saldo: real;
begin
  with RemoteDB.netshop_sales do
  begin
    Edit;
    saldo := (strtofloat(Initvalue.Caption) - (FieldByName('sales_paid_voucher')
      .AsFloat + FieldByName('sales_paid_visa').AsFloat +
      FieldByName('sales_paid_cash').AsFloat + FieldByName('sales_paid_bct')
      .AsFloat));
    if saldo < 0 then
      FieldByName('sales_paid_proton').AsFloat := Min(0, saldo);
    if saldo > 0 then
      FieldByName('sales_paid_proton').AsFloat := Max(0, saldo);
    Post;
  end;
end;

procedure TSalesCorrectForm.SpeedButtonVisaClick(Sender: TObject);
var
  saldo: real;
begin
  with RemoteDB.netshop_sales do
  begin
    Edit;
    saldo := (strtofloat(Initvalue.Caption) - (FieldByName('sales_paid_voucher')
      .AsFloat + FieldByName('sales_paid_cash').AsFloat +
      FieldByName('sales_paid_proton').AsFloat + FieldByName('sales_paid_bct')
      .AsFloat));
    if saldo < 0 then
      FieldByName('sales_paid_visa').AsFloat := Min(0, saldo);
    if saldo > 0 then
      FieldByName('sales_paid_visa').AsFloat := Max(0, saldo);
    Post;
  end;
end;

procedure TSalesCorrectForm.SpeedButtonVoucherClick(Sender: TObject);
var
  saldo: real;
begin
  with RemoteDB.netshop_sales do
  begin
    Edit;
    saldo := (strtofloat(Initvalue.Caption) - (FieldByName('sales_paid_cash')
      .AsFloat + FieldByName('sales_paid_visa').AsFloat +
      FieldByName('sales_paid_proton').AsFloat + FieldByName('sales_paid_bct')
      .AsFloat));
    if saldo < 0 then
      FieldByName('sales_paid_voucher').AsFloat := Min(0, saldo);
    if saldo > 0 then
      FieldByName('sales_paid_voucher').AsFloat := Max(0, saldo);
    Post;
  end;
end;

procedure TSalesCorrectForm.Button_processClick(Sender: TObject);
var
  orig, new: string;
begin
  orig := RemoteDB.netshop_sales.FieldByName('sales_paid_total').asstring;
  new := Initvalue.Caption;
  if orig = new then
  begin
    Self.ModalResult := mrOk;
  end
  else
  begin
    messagedlg('Les nouveaux totaux ne sont pas �gaux � la valeur initiale',
      mtwarning, [mbOk], 0)
  end;
end;

end.
