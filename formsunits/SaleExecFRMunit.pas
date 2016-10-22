unit SaleExecFRMunit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Printers, DBCtrls, Math, ExtCtrls, variants,
  cxControls, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, advPageControl, AdvGrid, OleCtrls, COPTRLib_TLB,
  cxCurrencyEdit, dxStatusBar,
  DB, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters;

type
  TFormProcessSale = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButtonCash: TSpeedButton;
    SpeedButtonBCT: TSpeedButton;
    SpeedButtonBank: TSpeedButton;
    SpeedButtonVisa: TSpeedButton;
    SpeedButtonVoucher: TSpeedButton;
    SpeedButtonCashClear: TSpeedButton;
    SpeedButtonBCTClear: TSpeedButton;
    SpeedButtonProtonClear: TSpeedButton;
    SpeedButtonVisaClear: TSpeedButton;
    SpeedButtonVoucherClear: TSpeedButton;
    Button_process_sale_no_ticket: TBitBtn;
    BitBtnSalesProcessTicket: TBitBtn;
    GroupBoxSalesexeccustomer: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    LabelTotal: TLabel;
    Labelpaid: TLabel;
    Labelsolde: TLabel;
    DBEditCustomerNbr: TcxDBTextEdit;
    DBEditCustomerName: TcxDBTextEdit;
    DBEditCustomerFirstName: TcxDBTextEdit;
    DBEditCustomerVoucher: TcxDBTextEdit;
    DBEditCustomerPoints: TcxDBTextEdit;
    NumberEditCash: TcxCurrencyEdit;
    NumberEditBCT: TcxCurrencyEdit;
    NumberEditBank: TcxCurrencyEdit;
    NumberEditVisa: TcxCurrencyEdit;
    NumberEditVoucher: TcxCurrencyEdit;
    dxStatusBar1: TdxStatusBar;
    procedure FormActivate(Sender: TObject);
    procedure PaymentModeEditChange(Sender: TObject);
    procedure SpeedButtonSaldoClick(Sender: TObject);
    procedure SpeedButtonClearClick(Sender: TObject);
    procedure Button_process_sale_no_ticketClick(Sender: TObject);
    procedure BitBtnSalesProcessTicketClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NumberEditCashEnter(Sender: TObject);
    procedure NumberEditBCTEnter(Sender: TObject);
    procedure NumberEditBankEnter(Sender: TObject);
    procedure NumberEditVisaEnter(Sender: TObject);
    procedure NumberEditVoucherEnter(Sender: TObject);
    procedure NumberEditCashClick(Sender: TObject);
    procedure NumberEditBCTClick(Sender: TObject);
    procedure NumberEditBankClick(Sender: TObject);
    procedure NumberEditVisaClick(Sender: TObject);
    procedure NumberEditVoucherClick(Sender: TObject);
  private
    procedure SalesProcess(Ticket: Boolean);
    function CheckSaldo: Boolean;
    function BookESD(GridIndex:integer): Boolean;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure UpdateLabels;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProcessSale: TFormProcessSale;
  CanPrint, HasESD: Boolean;

implementation

uses MainFRMunit, ClientDMunit, GlobalsUnit, DavidUtilsunit, ThreadsUnit,
  esd;

{$R *.DFM}

procedure TFormProcessSale.FormActivate(Sender: TObject);
var
  i, nowrow, Gridindex, LabelTotalIndex : integer;
  model: string;
begin
  // TTC
  for i := 0 to TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).ControlCount - 1 do
  begin
    if TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[i].Tag = 97 then
    begin
      LabelTotalIndex := i;
    end;
    // Find Grid
    if TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[i].ClassType = TAdvStringGrid then
    begin
      Gridindex := i;
    end;
  end;

  // Test if streetbloqued products
  CanPrint   := True;
  HasESD     := False;
  for nowrow := 1 to TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[Gridindex]).Rowcount - 2 do
  begin
    model := (TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[Gridindex]).Cells[0, nowrow]);
    if RemoteDB.Products.Locate('products_model', model, [locaseinsensitive]) then
    begin
      if RemoteDB.Products.FieldByName('products_street_block').AsString = 'True' then
      begin
        if RemoteDB.Products.FieldByName('products_date_available').AsDateTime > now then
          CanPrint := False;
      end;
      if RemoteDB.Products.FieldByName('products_esd').AsInteger = 1 then
      begin
        HasESD := True;
      end;
    end;
  end;

  if (HasESD) then begin
    BookESD(Gridindex);
    Button_process_sale_no_ticket.Enabled :=False;
  end else begin
    Button_process_sale_no_ticket.Enabled :=True;
  end;

  MainForm.StringGridSalesEditingDone(self);

  LabelTotal.Caption := TLabel(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[LabelTotalIndex]).Caption;

  Labelsolde.Caption      := LabelTotal.Caption;
  Labelpaid.Caption       := FloatToStrf(0, fffixed, 7, 2);
  NumberEditCash.Value    := 0;
  NumberEditBCT.Value     := 0;
  NumberEditBank.Value    := 0;
  NumberEditVisa.Value    := 0;
  NumberEditVoucher.Value := 0;

  if POSBANK then
  begin
    aCustomerDisplay.PanelAdvert.Visible         := False;
    aCustomerDisplay.PanelCustomerData.Visible   := False;
    aCustomerDisplay.PanelCustomerSale.Visible   := True;
    aCustomerDisplay.LabelTotalText.Caption      := 'Total : ' + LabelTotal.Caption;
    aCustomerDisplay.LabelCustomerBought.Caption := 'Produits achetés : ' + #13#10;

    for nowrow := 1 to TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[Gridindex]).Rowcount - 2 do
    begin
      aCustomerDisplay.LabelCustomerBought.Caption := aCustomerDisplay.LabelCustomerBought.Caption + #13#10 +
        (TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[Gridindex]).Cells[2, nowrow]) + ' X ' +
        (TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[Gridindex]).Cells[1, nowrow]) + ' à ' +
        (TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[Gridindex]).Cells[4, nowrow]) + ' € ';
    end;

  end;

end;

procedure TFormProcessSale.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
  begin
    ExStyle   := ExStyle or WS_EX_APPWINDOW;
    WndParent := GetDesktopwindow;
  end;
end;

procedure TFormProcessSale.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainForm.SalesClearSummary;
  NumberEditCash.Value    := 0;
  NumberEditBCT.Value     := 0;
  NumberEditBank.Value    := 0;
  NumberEditVisa.Value    := 0;
  NumberEditVoucher.Value := 0;
  if POSBANK then
  begin
    aCustomerDisplay.PanelAdvert.Visible       := True;
    aCustomerDisplay.PanelCustomerSale.Visible := False;
    aCustomerDisplay.PanelCustomerData.Visible := False;
  end;
end;

procedure TFormProcessSale.UpdateLabels();
begin
  Labelpaid.Caption := FloatToStrf(NumberEditCash.Value + NumberEditBCT.Value + NumberEditBank.Value + NumberEditVisa.Value + NumberEditVoucher.Value,
    fffixed, 7, 2);
  Labelsolde.Caption := FloatToStrf(strtofloat(LabelTotal.Caption) - strtofloat(Labelpaid.Caption), fffixed, 7, 2);

  if POSBANK then begin
  if strtofloat(Labelsolde.Caption) < strtofloat(LabelTotal.Caption)  then begin
    aCustomerDisplay.LabelTotalText.Caption      := 'Solde : ' + Labelsolde.Caption;
  end else begin
      aCustomerDisplay.LabelTotalText.Caption      := 'Total : ' + LabelTotal.Caption;
  end;
  end;

end;

procedure TFormProcessSale.PaymentModeEditChange(Sender: TObject);
var
  a, b, c, tot, visa, bct, voucher, bank: double;
begin

  UpdateLabels;

  bank    := NumberEditBank.Value;
  bct     := NumberEditBCT.Value;
  voucher := NumberEditVoucher.Value;
  visa    := NumberEditVisa.Value;
  tot     := strtofloat(LabelTotal.Caption);

  if Sender = NumberEditBank then
  begin

    c := (MinValue([tot, tot - visa - bct - voucher]));
    if NumberEditBank.Value > c then
    begin
      NumberEditBank.Value := (MinValue([tot, tot - visa - bct - voucher]));;
      messagedlg('Impossible de payer plus que le montant', mtwarning, [mbok], 0);
    end;
  end;
  if Sender = NumberEditVisa then
  begin
    c := (MinValue([tot, tot - bank - bct - voucher]));
    if NumberEditVisa.Value > c then
    begin
      NumberEditVisa.Value := (MinValue([tot, tot - bank - bct - voucher]));;
      messagedlg('Impossible de payer plus que le montant', mtwarning, [mbok], 0);
    end;
  end;
  if Sender = NumberEditBCT then
  begin
    c := (MinValue([tot, tot - visa - bank - voucher]));
    if NumberEditBCT.Value > c then
    begin
      NumberEditBCT.Value := (MinValue([tot, tot - visa - bank - voucher]));;
      messagedlg('Impossible de payer plus que le montant', mtwarning, [mbok], 0);
    end;
  end;
  if Sender = NumberEditVoucher then
  begin
    if RemoteDB.CustomersCustomers_nbr.AsInteger > 99999 then
    begin
      a := (MinValue([tot, (strtofloat(RemoteDB.CustomersCustomers_credit.Text) * 1), (tot - visa - bank - bct)]));
      b := NumberEditVoucher.Value;
      if b > a then
      begin
        NumberEditVoucher.Value := MinValue([tot, strtofloat(RemoteDB.CustomersCustomers_credit.Text) * 1, (tot - visa - bank - bct)]);
        messagedlg('Impossible de payer plus que le montant', mtwarning, [mbok], 0);
      end;
    end else begin
      NumberEditVoucher.Value := 0;
      messagedlg('Bon non valable sur client comptoir', mtwarning, [mbok], 0);
    end;
  end;

  UpdateLabels;

end;

procedure TFormProcessSale.SpeedButtonSaldoClick(Sender: TObject);
begin
  if strtofloat(Labelsolde.Caption) > 0 then
  begin
    if Sender = SpeedButtonCash then
    begin
      NumberEditCash.SetFocus;
      NumberEditCash.Value := (strtofloat(Labelsolde.Caption) + NumberEditCash.Value);
    end;
    if Sender = SpeedButtonBCT then
    begin
      NumberEditBCT.SetFocus;
      NumberEditBCT.Value := (strtofloat(Labelsolde.Caption) + NumberEditBCT.Value);
    end;
    if Sender = SpeedButtonBank then
    begin
      NumberEditBank.SetFocus;
      NumberEditBank.Value := (strtofloat(Labelsolde.Caption) + NumberEditBank.Value);
    end;
    if Sender = SpeedButtonVisa then
    begin
      NumberEditVisa.SetFocus;
      NumberEditVisa.Value := (strtofloat(Labelsolde.Caption) + NumberEditVisa.Value);
    end;
    if Sender = SpeedButtonVoucher then
    begin
      NumberEditVoucher.SetFocus;
      if strtofloat(RemoteDB.CustomersCustomers_credit.Text) - NumberEditVoucher.Value >= strtofloat(Labelsolde.Caption) then
        NumberEditVoucher.Value := (strtofloat(Labelsolde.Caption) + NumberEditVoucher.Value)
      else
        NumberEditVoucher.Value := (strtofloat(RemoteDB.CustomersCustomers_credit.Text) * 1);
    end;
  end;
end;

procedure TFormProcessSale.SpeedButtonClearClick(Sender: TObject);
begin
  if Sender = SpeedButtonCashClear then
    NumberEditCash.Value := 0;
  if Sender = SpeedButtonBCTClear then
    NumberEditBCT.Value := 0;
  if Sender = SpeedButtonProtonClear then
    NumberEditBank.Value := 0;
  if Sender = SpeedButtonVisaClear then
    NumberEditVisa.Value := 0;
  if Sender = SpeedButtonVoucherClear then
    NumberEditVoucher.Value := 0;
end;



procedure TFormProcessSale.Button_process_sale_no_ticketClick(Sender: TObject);
begin
  PaymentModeEditChange(self);
  if CheckSaldo then
    if HasESD then
    begin
      ShowMessage('Produits ESD dans le panier, le ticket est obligatoire');
    end else begin
      SalesProcess(False);
    end;
end;

procedure TFormProcessSale.BitBtnSalesProcessTicketClick(Sender: TObject);
begin
  PaymentModeEditChange(self);
  if CheckSaldo then
  begin
    if CanPrint then
      SalesProcess(True)
    else
    begin
      if HasESD then
      begin
        ShowMessage('Produits bloqués en street date et produits ESD sur le même ticket veuillez faire des ventes distinctes');
      end else begin
        ShowMessage('Produits bloqués en street date impression ticket impossible');
        SalesProcess(False);
      end;
    end;
  end;

end;


function TFormProcessSale.BookESD(GridIndex:integer): Boolean;
var
  ESDGate: EsdSoap;
  EsdAuth: ESD.ESDAuth2;
  nowrow : Integer;
   model  : string;
begin
    try
      Result := true;
      ESDGate     := GetEsdSoap();
      if ESDGate.Identify(GlobalsUnit.CLDLogin, GlobalsUnit.CLDPass) then
      begin
        with TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[GridIndex]) do
          for nowrow := 1 to Rowcount - 2 do
          begin
            model := (TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[Gridindex]).Cells[0, nowrow]);
            if RemoteDB.Products.Locate('products_model', model, [locaseinsensitive]) then
            if RemoteDB.Products.FieldByName('products_esd').AsInteger = 1 then
            if ( (Cells[9, nowrow]).Length < 32) and (Cells[2, nowrow] = '1') then begin

            EsdAuth := ESDGate.Booktoken(Cells[0, nowrow],RemoteDB.netshop_sales.FieldByName('sales_location').AsString + '-' +
                              RemoteDB.netshop_sales.FieldByName('sales_id').AsString,RemoteDB.netshop_sales.FieldByName('sales_id').AsString, False);
            if EsdAuth.status <> 1 then
            begin
              if EsdAuth.status = -1 then
              begin
                ShowMessage('Plus de codes '+Cells[1, nowrow]+' en stock. La valeur du caddy va être adaptée ');
                Cells[2, nowrow] := '0';
              end else begin
                ShowMessage(EsdAuth.comment);
                Result := False;
              end;
            end else begin
              Cells[9, nowrow] := EsdAuth.UniqueId;
            end
            end;
          end;
      end else begin
        ShowMessage('Login ESD impossible les produits esd sont retirés du panier');
        with TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[GridIndex]) do
          for nowrow := 1 to Rowcount - 2 do
          begin
            model := (TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[Gridindex]).Cells[0, nowrow]);
            if RemoteDB.Products.Locate('products_model', model, [locaseinsensitive]) then
            if RemoteDB.Products.FieldByName('products_esd').AsInteger = 1 then
            if ( (Cells[9, nowrow]).Length < 32) and (Cells[2, nowrow] = '1') then begin
              Cells[2, nowrow] := '0';
            end;
          end;
        Result := False;
      end;

    except
      ShowMessage('Erreur de connection au serveur ESD, les produits esd sont retirés du panier');
      with TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[GridIndex]) do
          for nowrow := 1 to Rowcount - 2 do
          begin
            model := (TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[Gridindex]).Cells[0, nowrow]);
            if RemoteDB.Products.Locate('products_model', model, [locaseinsensitive]) then
            if RemoteDB.Products.FieldByName('products_esd').AsInteger = 1 then
            if ( (Cells[9, nowrow]).Length < 32) and (Cells[2, nowrow] = '1') then begin
              Cells[2, nowrow] := '0';
            end;
          end;
      Result := False;
    end;
end;

procedure TFormProcessSale.SalesProcess(Ticket: Boolean);

var
  nowrow, Width, AvailableWidth, AvailableHeight, xpos, ypos, Left, Middle: integer;
  i, Num, GridIndex, SalesSavepoint, ItemsSavePoint, CustomersSavePoint, StockSavePoint, Check: integer;
  aRect: Trect;
  Data, UniqueId : WideString;
  TempStr, EsdCode, Hello: string;
  SqlVelocity: TExecSql;
  StockLocated, cancontinue, allcheck: Boolean;
  TicketToPrint: TTicketJob;
  KeyArray: array of variant;
  ANotifyServer: TNotifyServer;
  ESDGate: EsdSoap;
  EsdAuth: ESD.ESDAuth;
  EsdToken:ESD.ESDToken;

begin

  self.SpeedButtonCash.Enabled    := False;
  self.SpeedButtonBCT.Enabled     := False;
  self.SpeedButtonBank.Enabled    := False;
  self.SpeedButtonVoucher.Enabled := False;
  self.SpeedButtonVisa.Enabled    := False;

  self.SpeedButtonCashClear.Enabled    := False;
  self.SpeedButtonBCTClear.Enabled     := False;
  self.SpeedButtonProtonClear.Enabled  := False;
  self.SpeedButtonVisaClear.Enabled    := False;
  self.SpeedButtonVoucherClear.Enabled := False;

  self.Button_process_sale_no_ticket.Enabled := False;
  self.BitBtnSalesProcessTicket.Enabled      := False;

  dxStatusBar1.Panels[1].Text := 'Récupération du caddy';
  for i                       := 0 to TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).ControlCount - 1 do
  begin
    if TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[i].ClassType = TAdvStringGrid then
    begin
      GridIndex := i;
    end;
  end;

  // check ESD login and availability
  cancontinue := True;
  if HasESD then
  begin
     if not bookesd(GridIndex) then  begin
      exit;
     end;
     try
      ESDGate     := GetEsdSoap();
      if ESDGate.Identify(GlobalsUnit.CLDLogin, GlobalsUnit.CLDPass) then
      begin

      end else begin
        ShowMessage('Login ESD impossible');
      end;

    except
      ShowMessage('Erreur de connection au serveur ESD');
    end;
  end;

  // check vente banque sur compte client magasin
  if DBEditCustomerNbr.Text=IntToStr(ConnectedShop) then begin
    if Self.NumberEditBank.Value>0 then  begin
      ShowMessage('Impossible de payer par banque sur le client comptoir');
      cancontinue:=False;
    end;
  end;

    // check vente banque sur compte client magasin
  if NumberEditCash.Value>3000 then begin
      ShowMessage('Interdit de payer plus de 3000 euros en Cash');
      cancontinue:=False;
  end;

  // Checksales
  RemoteDB.netshop_sales.Last;
  if (RemoteDB.netshop_sales.FieldByName('sales_date_time').AsFloat > Now)
      or (RemoteDB.netshop_sales.FieldByName('sales_date_time').AsFloat < Now-2)
   then begin
      if messagedlg('Dernière vente le '+ DateToStr(RemoteDB.netshop_sales.FieldByName('sales_date_time').Value)
      + '. Etes vous sur de vouloir enregister une vente au ' + DateToStr(Now), mtwarning, [mbyes, mbno], 0) = mryes then begin

      end else begin
         cancontinue:=False;
      end;
   end;


   // vérification à jour des annulations
   begin
              with TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[GridIndex]) do
                for nowrow := 1 to Rowcount - 2 do
                begin
                  if Trim(Cells[10, nowrow]) <> '' then
                  begin
                    if not RemoteDB.SetItemSoldAsRefunded(Trim(Cells[10, nowrow]), -StrToInt(Cells[2 , Nowrow]), false) then begin
                       ShowMessage('Impossible d''annuler ' + Cells[1, nowrow] +' operation intérompue.');
                        cancontinue:=False;
                    end;
                    end;
                  end;
            end;



  if cancontinue = False then
  begin
    ShowMessage('Erreur impossbile de valider le cady');
    Self.Close();
  end else begin

    if RemoteDB.IsConnected then
      SqlVelocity := TExecSql.Create;

    dxStatusBar1.Panels[1].Text := 'Libérer DB';
    RemoteDB.netshop_items_sold.DisableControls;
    RemoteDB.netshop_stock.DisableControls;
    RemoteDB.netshop_stock.IndexName := 'StockIXModelOwnerSupplier';

    try
      begin
        dxStatusBar1.Panels[1].Text := 'Création point de sauvetage';
        SalesSavepoint              := RemoteDB.netshop_sales.SavePoint;
        ItemsSavePoint              := RemoteDB.netshop_items_sold.SavePoint;
        CustomersSavePoint          := RemoteDB.Customers.SavePoint;
        StockSavePoint              := RemoteDB.netshop_stock.SavePoint;

        try
          begin
            { création de la vente dans la table sales }
            dxStatusBar1.Panels[1].Text := 'Ajout ligne table vente';
            RemoteDB.netshop_sales.Append;
            RemoteDB.netshop_sales.FieldByName('sales_paid_cash').AsFloat := NumberEditCash.Value + strtofloat(Labelsolde.Caption);
            RemoteDB.netshop_sales.FieldByName('sales_paid_bct').AsFloat := NumberEditBCT.Value;
            RemoteDB.netshop_sales.FieldByName('sales_paid_proton').AsFloat := NumberEditBank.Value;
            RemoteDB.netshop_sales.FieldByName('sales_paid_visa').AsFloat := NumberEditVisa.Value;
            RemoteDB.netshop_sales.FieldByName('sales_paid_voucher').AsFloat := NumberEditVoucher.Value;
            RemoteDB.netshop_sales.FieldByName('sales_customer_id').AsInteger := RemoteDB.Customers.FieldByName('customers_nbr').AsInteger;
            RemoteDB.netshop_sales.Post;

            { création des enregistrements correspondants dans la table items_sold }
            dxStatusBar1.Panels[1].Text := 'Ajout lignes produits vendus';
            with TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[GridIndex]) do
              for nowrow := 1 to Rowcount - 2 do
              begin

                RemoteDB.netshop_items_sold.Append;
                RemoteDB.netshop_items_sold.FieldByName('items_sold_model').Text := Cells[0, nowrow];
                RemoteDB.netshop_items_sold.FieldByName('items_sold_name').Text := Cells[1, nowrow];
                RemoteDB.netshop_items_sold.FieldByName('items_sold_quantity').Text := Cells[2, nowrow];
                RemoteDB.netshop_items_sold.FieldByName('items_sold_price_catalog').Text := Cells[3, nowrow];
                RemoteDB.netshop_items_sold.FieldByName('items_sold_price_Stock').Text := Cells[4, nowrow];
                RemoteDB.netshop_items_sold.FieldByName('items_sold_price_gross').Text := Cells[5, nowrow];
                RemoteDB.netshop_items_sold.FieldByName('items_sold_owner_id').Text := Cells[7, nowrow];
                RemoteDB.netshop_items_sold.FieldByName('items_sold_supplier_id').Text := Cells[8, nowrow];
                RemoteDB.netshop_items_sold.FieldByName('items_sold_date_in').Text := Cells[6, nowrow];
                RemoteDB.netshop_items_sold.FieldByName('items_sold_price_ht').AsFloat := RemoteDB.GetPriceHT(Cells[0, nowrow], RemoteDB.netshop_items_sold.FieldByName('items_sold_price_stock').AsFloat);
                RemoteDB.Products.Locate('products_model', Cells[0, nowrow], []);

                if (strtofloat(Cells[7, nowrow]) < 99999) and (strtofloat(Cells[8, nowrow]) < 99999) then
                    begin // Si produit neuf et que le prix n'est pas changé
                    if RemoteDB.Products.Locate('products_model', Cells[0, nowrow], [locaseinsensitive]) then
                      if (strtofloat(Cells[4, nowrow]))>=((Round(RemoteDB.GetPriceTTC(RemoteDB.Productsproducts_model.Text, RemoteDB.Productsproducts_price.AsFloat ) * 99) / 100)) then
                        RemoteDB.netshop_items_sold.FieldByName('items_sold_loyalty').AsInteger := RemoteDB.Products.FieldByName('products_points').AsInteger;
                end else begin // Si porduit occasion
                      RemoteDB.netshop_items_sold.FieldByName('items_sold_loyalty').AsInteger := 0;
                end;

                if HasESD then
                begin
                  try
                    if RemoteDB.Products.Locate('products_model', Cells[0, nowrow], [locaseinsensitive]) then
                    begin
                      if RemoteDB.Products.FieldByName('products_esd').AsInteger = 1 then
                      begin
                        RemoteDB.netshop_items_sold.FieldByName('items_sold_esd_guid').AsString := Cells[9, nowrow];
                        if RemoteDB.netshop_items_sold.FieldByName('items_sold_quantity').AsInteger > 0 then
                        begin
                          UniqueId := Cells[9, nowrow];
                          EsdToken:=ESDGate.Requesttoken(UniqueId);
                            RemoteDB.netshop_items_sold.FieldByName('items_sold_esd').AsString:=EsdToken.token;
                          if (ESDToken.status=1) then begin
                          end else begin
                             ShowMessage(EsdToken.comment);
                          end;
                        end else begin
                          if RemoteDB.netshop_items_sold.FieldByName('items_sold_quantity').AsInteger < 0 then
                          ShowMessage
                            ('Annulation code ESD impossible : le remoursement sera fait au client mais le code reste actif et sera facturé au magasin');
                        end;
                      end;
                    end;
                  except
                    on E: Exception do
                    begin
                      ShowMessage(E.ClassName + 'Erreur de connection au serveur ESD : ' + E.Message);
                      raise;
                    end;
                  end;
                end;
                RemoteDB.netshop_items_sold.Post;
              end;

            { maj des products velocity }
            if RemoteDB.IsConnected then
            begin
              dxStatusBar1.Panels[1].Text := 'Reporting produits';
              with TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[GridIndex]) do
                for nowrow := 1 to Rowcount - 2 do
                begin
                  SqlVelocity.AddSql('UPDATE products SET products_sold_quantity = products_sold_quantity+' + Cells[2, nowrow] + ' WHERE products_model=' +
                    QuotedStr(Cells[0, nowrow]) + ';');
                  SqlVelocity.AddSql('UPDATE products SET products_sold_velocity = products_sold_velocity+' +
                    IntToStr(Round(now - OscToVCLDate(Cells[6, nowrow]))) + ' WHERE products_model=' + QuotedStr(Cells[0, nowrow]) + ';');
                end;
            end;
            { mise à jour des credits clients et cartes de fidèlité }
            { 1 point par tranche d'achat de 20 € quand plus de 10 points 10 € de reduc }
            dxStatusBar1.Panels[1].Text := 'Calcul fidélité';
            with TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[GridIndex]) do
            begin
              // Old system
              for nowrow := 1 to Rowcount - 2 do
              begin
                if (NumberEditVisa.Value = 0) { and (NumberEditVoucher.Value=0) }
                then
                begin
                  if (strtofloat(Cells[7, nowrow]) < 99999) and (strtofloat(Cells[8, nowrow]) < 99999) then
                  begin // Si produit neuf
                    RemoteDB.Products.Locate('products_model', Cells[0, nowrow], []);
                    if RemoteDB.ProductsProducts_Promo.Text = 'False' then
                    begin
                      RemoteDB.Customers.Edit;
                      RemoteDB.CustomersCustomers_points.AsInteger := RemoteDB.CustomersCustomers_points.AsInteger +
                        Trunc(strtofloat(Cells[4, nowrow]) * strtofloat(Cells[2, nowrow]) / 20);
                      RemoteDB.Customers.Post;
                    end;
                  end;
                end;
              end;
              // New System
              // New System
              for nowrow := 1 to Rowcount - 2 do begin
                  if Cells[0, nowrow]='LOYALTY500' then begin
                      RemoteDB.Customers.Edit;
                      RemoteDB.Customers.FieldByName('customers_loyalty').AsFloat := RemoteDB.Customers.FieldByName('customers_loyalty').AsFloat + (LoyaltyThreshold*StrToInt(Cells[2, Nowrow]));
                      RemoteDB.Customers.Post;
                  end;
              end;
            end;


            RemoteDB.SetItemstoSales;
            RemoteDB.netshop_sales.Last;

            RemoteDB.Customers.Edit;
            RemoteDB.CustomersCustomers_credit.AsFloat := RemoteDB.CustomersCustomers_credit.AsFloat - (NumberEditVoucher.Value * 1);
            RemoteDB.netshop_items_sold.First;
            while not RemoteDB.netshop_items_sold.eof  do begin
              RemoteDB.Customers.FieldByName('customers_loyalty').AsInteger := RemoteDB.Customers.FieldByName('customers_loyalty').AsInteger +
                        ( RemoteDB.netshop_items_sold.FieldByName('items_sold_loyalty').AsInteger * RemoteDB.netshop_items_sold.FieldByName('items_sold_quantity').AsInteger );
              RemoteDB.netshop_items_sold.Next;
            end;
            RemoteDB.Customers.Post;

            // Notification clients dépôt
            dxStatusBar1.Panels[1].Text := 'Envoi des mails produits en dépôt';
            if UserType = 1 then
            begin
              with TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[GridIndex]) do
                for nowrow := 1 to Rowcount - 2 do
                begin
                  if Strtoint(Cells[7, nowrow]) > 99999 then
                  begin
                    if RemoteDB.Customers.FindKey([Cells[7, nowrow]]) then
                    begin
                      if Length(RemoteDB.Customerscustomers_email_address.AsString) > 6 then
                      begin
                        if UserType = 1 then
                        begin
                          ANotifyServer := TNotifyServer.Create('deposit_sold', RemoteDB.Customerscustomers_email_address.AsString, '', NOTIFYURL);
                        end;
                      end;
                    end;
                  end;
                end;
            end;

            // Mise à jour des annulations
            dxStatusBar1.Panels[1].Text := 'Mise à jour des annulations';
            begin
              with TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[GridIndex]) do
                for nowrow := 1 to Rowcount - 2 do
                begin
                  if Trim(Cells[10, nowrow]) <> '' then
                  begin
                    if not RemoteDB.SetItemSoldAsRefunded(Trim(Cells[10, nowrow]), -StrToInt(Cells[2 , Nowrow]), true) then
                       ShowMessage('Erreur durant l''annulation de ' + Cells[1, nowrow]);
                    end;
                  end;
            end;


            { mise à jour du stock -- Ne pas déplacer le code plus haut }
            dxStatusBar1.Panels[1].Text := 'Mise à jour du stock';
            with TAdvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[GridIndex]) do
              for nowrow := 1 to Rowcount - 2 do
              begin
                if Strtoint(Cells[2, nowrow]) > 0 then
                begin
                  RemoteDB.DeleteFromStock(Cells[0, nowrow], Strtoint(Cells[7, nowrow]), Strtoint(Cells[8, nowrow]), Strtoint(Cells[2, nowrow]));
                end else begin
                  RemoteDB.netshop_stock.Append;
                  RemoteDB.netshop_stock.FieldByName('product_model').Text := Cells[0, nowrow];
                  RemoteDB.netshop_stock.FieldByName('product_name').Text := Cells[1, nowrow];
                  RemoteDB.netshop_stock.FieldByName('product_owner_id').Text := Cells[7, nowrow];
                  RemoteDB.netshop_stock.FieldByName('product_location').AsInteger := ConnectedShop;
                  RemoteDB.netshop_stock.FieldByName('product_quantity').AsInteger := -Strtoint(Cells[2, nowrow]);
                  RemoteDB.netshop_stock.FieldByName('product_supplier_id').Text := Cells[8, nowrow];
                  RemoteDB.netshop_stock.FieldByName('product_date_in').Text := Formatdatetime('yyyymmdd', now);
                  RemoteDB.netshop_stock.FieldByName('product_price_gross').Text := Cells[5, nowrow];
                  RemoteDB.netshop_stock.FieldByName('product_price_stock').Text := Cells[4, nowrow];
                  RemoteDB.netshop_stock.Post;
                end;
              end;

            { Query products velocity }
            if RemoteDB.IsConnected then
            begin
              dxStatusBar1.Panels[1].Text := 'Reporting SQL';
              SqlVelocity.Resume;
            end;

            modalresult := mrok;
            // renvoi vers la mainform pour confirmer la vente
          end;
        except
          on E: Exception do
          begin
            ShowMessage(E.ClassName + ' error raised, with message : ' + E.Message);
            RemoteDB.netshop_stock.SavePoint      := StockSavePoint;
            RemoteDB.Customers.SavePoint          := CustomersSavePoint;
            RemoteDB.netshop_items_sold.SavePoint := ItemsSavePoint;
            RemoteDB.netshop_sales.SavePoint      := SalesSavepoint;
          end;
        end;
      end;
    finally
      { Impression Ticket }
      RemoteDB.Customers.FindKey([RemoteDB.netshop_sales.FieldByName('sales_customer_id').AsInteger]);
      dxStatusBar1.Panels[1].Text := 'Impression ticket';
      if ((MainForm.Parameter['PrintersTicketEnabled'] = 'TRUE') and (Ticket)) then
      begin
        MainForm.BitBtnCustomerBuyTicketClick(self);
      end;
      dxStatusBar1.Panels[1].Text := 'Finalisation';
      NumberEditCash.Value        := 0;
      NumberEditBCT.Value         := 0;
      NumberEditBank.Value        := 0;
      NumberEditVisa.Value        := 0;
      NumberEditVoucher.Value     := 0;
      LabelTotal.Caption          := FloatToStrf(0, fffixed, 7, 2);
      Labelsolde.Caption          := FloatToStrf(0, fffixed, 7, 2);
      Labelpaid.Caption           := FloatToStrf(0, fffixed, 7, 2);
      RemoteDB.netshop_stock.EnableControls;
      RemoteDB.netshop_items_sold.EnableControls;

      self.SpeedButtonCash.Enabled    := True;
      self.SpeedButtonBCT.Enabled     := True;
      self.SpeedButtonBank.Enabled    := True;
      self.SpeedButtonVoucher.Enabled := True;
      self.SpeedButtonVisa.Enabled    := True;

      self.SpeedButtonCashClear.Enabled    := True;
      self.SpeedButtonBCTClear.Enabled     := True;
      self.SpeedButtonProtonClear.Enabled  := True;
      self.SpeedButtonVisaClear.Enabled    := True;
      self.SpeedButtonVoucherClear.Enabled := True;

      self.Button_process_sale_no_ticket.Enabled := True;
      self.BitBtnSalesProcessTicket.Enabled      := True;

    end;
  end;
end;

function TFormProcessSale.CheckSaldo;
var
  Value: double;
begin
  if (Labelsolde.Caption) <> '0.00' then
  begin
    Value := ((Round(NumberEditCash.Value * 100)) / 100);
    if strtofloat(Labelsolde.Caption) <= Value then
      Result := True
    else
    begin
      messagedlg('Remboursement impossible ' + (Labelsolde.Caption) + ' < ' + FloatToStr(Value) + ' - ' + FloatToStr(NumberEditCash.Value), mtwarning,
        [mbok], 0);
      Result := False;
    end;
  end;
end;

procedure TFormProcessSale.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_F1 then
    SpeedButtonCash.Click;
  if Key = vk_F2 then
    SpeedButtonBCT.Click;
  if Key = vk_F3 then
    SpeedButtonBank.Click;
  if Key = vk_F4 then
    SpeedButtonVisa.Click;
  if Key = vk_F5 then
    SpeedButtonVoucher.Click;

end;

procedure TFormProcessSale.NumberEditBankClick(Sender: TObject);
begin
  NumberEditBank.SelectAll;
end;

procedure TFormProcessSale.NumberEditBankEnter(Sender: TObject);
begin
  NumberEditBank.SelectAll;
end;

procedure TFormProcessSale.NumberEditBCTClick(Sender: TObject);
begin
  NumberEditBCT.SelectAll;
end;

procedure TFormProcessSale.NumberEditBCTEnter(Sender: TObject);
begin
  NumberEditBCT.SelectAll;
end;

procedure TFormProcessSale.NumberEditCashClick(Sender: TObject);
begin
  NumberEditCash.SelectAll;
end;

procedure TFormProcessSale.NumberEditCashEnter(Sender: TObject);
begin
  NumberEditCash.SelectAll;
end;

procedure TFormProcessSale.NumberEditVisaClick(Sender: TObject);
begin
  NumberEditVisa.SelectAll;
end;

procedure TFormProcessSale.NumberEditVisaEnter(Sender: TObject);
begin
  NumberEditVisa.SelectAll;
end;

procedure TFormProcessSale.NumberEditVoucherClick(Sender: TObject);
begin
  NumberEditVoucher.SelectAll;
end;

procedure TFormProcessSale.NumberEditVoucherEnter(Sender: TObject);
begin
  NumberEditVoucher.SelectAll;
end;

end.
