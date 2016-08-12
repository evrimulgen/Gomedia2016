unit ReportSQLForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  DB, dxPSEngn,
  dxPSCore,
  dxPSDBBasedXplorer, dxPgsDlg, dxPScxCommon, dxPrnDlg, dxBar,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, ClientDMUnit, FMTBcd,
  Provider, DBClient, SqlExpr, cxGridExportLink, dxBarExtItems, ComCtrls,



  Menus,
  dxBarExtDBItems, Grids, DBGrids, dxPScxGridLnk, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, dxPrnDev, dxPSGlbl, dxPSUtl,
  dxPrnPg, dxBkgnd, dxWrap, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwRibbon, dxPSPrVwAdv, dxPScxPageControlProducer,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers;

type
  TReportSQL = class(TForm)
    dxBarManager: TdxBarManager;
    dxBarButtonPrint: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarGroup1: TdxBarGroup;
    dxPrintDialog: TdxPrintDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    dxPrintStyleManager: TdxPrintStyleManager;
    dxPageSetupDialog: TdxPageSetupDialog;
    dxPSDBBasedExplorer1: TdxPSDBBasedExplorer;
    dxPSEngineController: TdxPSEngineController;
    SaveDialog: TSaveDialog;
    DPReport: TDataSetProvider;
    CDSReport: TClientDataSet;
    DSReport: TDataSource;
    dxBarButtonCompute: TdxBarButton;
    PopupMenu: TPopupMenu;
    CopyModel: TMenuItem;
    dxBarColorCombo1: TdxBarColorCombo;
    dxBarLookupCombo1: TdxBarLookupCombo;
    PageControl: TPageControl;
    cxGridReportDBTableViewReport: TcxGridDBTableView;
    cxGridReportLevel1: TcxGridLevel;
    cxGridReport: TcxGrid;
    procedure StockSummedCalcFields(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CopyModelClick(Sender: TObject);
    procedure dxBarButtonPrintClick(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);

  private
    { Private declarations }
  public
    Direction: string;
    Empty: Boolean;
    TargetShop: Integer;
    { Public declarations }
  end;

var
  ReportSQL: TReportSQL;

implementation

uses ShellApi, Clipbrd;

{$R *.dfm}

procedure TReportSQL.CopyModelClick(Sender: TObject);
begin
  ClipBoard.AsText := CDSReport.FieldByName('product_model').AsString;
end;

procedure TReportSQL.dxBarButton2Click(Sender: TObject);
var
  Filename: string;
begin
  Filename                 := 'Report' + '.xls';
  Self.SaveDialog.Filename := Filename;
  if Self.SaveDialog.Execute then
  begin
    ExportGridToExcel(Self.SaveDialog.Filename, cxGridReport, True, True, True);
  end;
end;

procedure TReportSQL.dxBarButtonPrintClick(Sender: TObject);
begin
  dxComponentPrinterLink1.Component := cxGridReport;
  dxComponentPrinter.Print(True, nil);
end;

procedure TReportSQL.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  // Action:=TBasicAction(caFree);
end;

procedure TReportSQL.StockSummedCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('product_quantity_total').Value := DataSet.FieldByName('product_quantity_new').Value + DataSet.FieldByName('product_quantity_used').Value;
end;

end.
