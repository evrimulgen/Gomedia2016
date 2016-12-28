unit CashRegistryFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, dxBar,
  DB,
  cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, XPMan,

  dxPSCore, dxPSDBBasedXplorer, dxPgsDlg,
  dxPScxCommon, dxPrnDlg, cxGridExportLink,




  DBClient, dxPScxGridLnk, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, dxPrnDev, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwRibbon, dxPSPrVwAdv,
  dxPScxPageControlProducer, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers;

type
  TFormCashRegister = class(TForm)
    dxBarManager: TdxBarManager;
    dxBarGroup1: TdxBarGroup;
    dxBarButtonPrint: TdxBarButton;
    dxBarButtonSave: TdxBarButton;
    Grid: TcxGrid;
    GridLevel1: TcxGridLevel;
    Gridview: TcxGridDBTableView;
    Source: TDataSource;
    GridviewDate: TcxGridDBColumn;
    GridviewNouveau: TcxGridDBColumn;
    GridviewOccasion: TcxGridDBColumn;
    GridviewServices: TcxGridDBColumn;
    GridviewRetours: TcxGridDBColumn;
    GridviewTotal: TcxGridDBColumn;
    GridviewCash: TcxGridDBColumn;
    GridviewBCT: TcxGridDBColumn;
    GridviewVisa: TcxGridDBColumn;
    GridviewBanque: TcxGridDBColumn;
    GridviewBon: TcxGridDBColumn;
    GridviewRembours: TcxGridDBColumn;
    GridviewCaisse: TcxGridDBColumn;
    {
      TableData: TdxMemData;
      TableDataDate: TDateField;
      TableDataNew: TCurrencyField;
      TableDataSH: TCurrencyField;
      TableDataServ: TCurrencyField;
      TableDataReturns: TCurrencyField;
      TableDataTotal: TCurrencyField;
      TableDataCash: TCurrencyField;
      TableDataBCT: TCurrencyField;
      TableDataVisa: TCurrencyField;
      TableDataProton: TCurrencyField;
      TableDataVoucher: TCurrencyField;
      TableDataRefunds: TCurrencyField;
      TableDataTotalPay: TCurrencyField;
      TableDataExpenses: TCurrencyField;
      TableDataExpensesDesc: TStringField;
      TableDataCaisseTot: TCurrencyField;
      TableDataNbr: TIntegerField;
      TableDataTVA6: TCurrencyField;
      TableDataTVA21: TCurrencyField;
      TableDataDepot: TCurrencyField;
      TableDataRachat: TCurrencyField;
      TableDataReturnTVA6: TCurrencyField;
      TableDataReturnTVA21: TCurrencyField;
      TableDataInvoice21: TCurrencyField;
      TableDataInvoice6: TCurrencyField;
    }
    GridviewExpenses: TcxGridDBColumn;
    GridviewExpensesDesc: TcxGridDBColumn;
    GridviewCaisseTot: TcxGridDBColumn;
    GridviewNumber: TcxGridDBColumn;
    SaveDialog: TSaveDialog;
    GridviewNew21: TcxGridDBColumn;
    GridviewNew6: TcxGridDBColumn;
    GridviewDepot: TcxGridDBColumn;
    GridviewRachat: TcxGridDBColumn;

    dxPrintDialog: TdxPrintDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxPrintStyleManager: TdxPrintStyleManager;
    dxPageSetupDialog: TdxPageSetupDialog;
    dxPSDBBasedExplorer1: TdxPSDBBasedExplorer;
    dxComponentPrinterLink1: TdxGridReportLink;
    CashData: TClientDataSet;
    GridviewNew0: TcxGridDBColumn;
    GridviewINV0: TcxGridDBColumn;
    GridviewINV6: TcxGridDBColumn;
    GridviewINV21: TcxGridDBColumn;
    GridviewCostOfBought: TcxGridDBColumn;
    GridviewPurchases: TcxGridDBColumn;

    procedure dxBarButtonPrintClick(Sender: TObject);
    procedure dxBarButtonSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    VATRates: array of Double;
    procedure Clear;
    procedure SaveGrid(FileName: string);

  end;

var
  FormCashRegister: TFormCashRegister;

implementation

{$R *.dfm}

procedure TFormCashRegister.Clear;
begin
  while not(self.CashData.Eof and self.CashData.Bof) do
  begin
    self.CashData.Delete;
  end;
end;

procedure TFormCashRegister.dxBarButtonPrintClick(Sender: TObject);
begin
  dxComponentPrinter.Print(true, nil);
end;

procedure TFormCashRegister.dxBarButtonSaveClick(Sender: TObject);
var
  FileName: string;
begin
  CashData.First;
  FileName := FormatDateTime('DD-MM-YY', CashData.FieldByName('Date').Value) + '-';
  CashData.Last;
  FileName            := FileName + FormatDateTime('DD-MM-YY', CashData.FieldByName('Date').Value) + '.xls';
  SaveDialog.FileName := FileName;
  if SaveDialog.Execute then
  begin
    ExportGridToExcel(SaveDialog.FileName, Grid, true, true, true);
  end;
end;

procedure TFormCashRegister.FormCreate(Sender: TObject);
var
  i: integer;
begin

  with CashData.FieldDefs do
  begin
    Clear;
    Add('Nbr', ftInteger, 0);
    Add('Date', ftDate);

    Add('NEW-0', ftCurrency);
    Add('NEW-6', ftCurrency);
    Add('NEW-21', ftCurrency);

    Add('New', ftCurrency);

    Add('Depot', ftCurrency);
    Add('Rachat', ftCurrency);
    Add('CostOfBought', ftCurrency);
    Add('SH', ftCurrency);

    Add('Serv', ftCurrency);
    Add('Returns', ftCurrency);

    Add('Total', ftCurrency);
    Add('Cash', ftCurrency);
    Add('BCT', ftCurrency);
    Add('Visa', ftCurrency);
    Add('Proton', ftCurrency);
    Add('Voucher', ftCurrency);
    Add('Refunds', ftCurrency);
    Add('Purchased', ftCurrency);

    Add('Expenses', ftCurrency);

    Add('TotalPay', ftCurrency);

    Add('CaisseTot', ftCurrency);

    Add('INV-0', ftCurrency);
    Add('INV-6', ftCurrency);
    Add('INV-21', ftCurrency);

    Add('ExpensesDesc', ftString, 64);

  end;
  CashData.CreateDataSet;

end;

procedure TFormCashRegister.SaveGrid(FileName: string);
begin
  CashData.First;
  FileName := FileName + '-' + FormatDateTime('DD-MM-YY', CashData.FieldByName('Date').Value) + '-';
  CashData.Last;
  FileName := FileName + FormatDateTime('DD-MM-YY', CashData.FieldByName('Date').Value) + '.xls';
  ExportGridToExcel(FileName, Grid, true, true, true);
end;

end.
