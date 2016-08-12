unit ADO_QExportDialog;

interface

uses
  Forms, StdCtrls, ExtCtrls, ComCtrls, Controls, Classes, Db, QExport,
  Dialogs, Buttons, {$IFDEF VCL4}ImgList,{$ENDIF} Grids, Windows, Graphics,
  QExportRTF, QExportHTML, ExtDlgs, QExportXLS, QExportXML, QExportASCII,
  QExportClipboard, QExportSQL, QExportLaTeX, QExportDBF, DbGrids,
  QExportCommon, QExportDialogProgress, ToolWin, ADO_QExportDatabase,
  ADO_QExportAccess, QExportPDF, Menus, QExportOptions, ImgList;

type
  TAllowedExport = (aeXLS, aeAccess, aeWord, aeRTF, aeHTML, aeXML, aeDBF, aePDF,
    aeTXT, aeCSV, aeDIFF, aeSylk, aeLaTeX, aeSQL, aeClipboard);
  TAllowedExports = set of TAllowedExport;

  TCommonOption = (coFields, coFormats, coColons, coCaptions, coOptions);
  TCommonOptions = set of TCommonOption;

  TADO_QExportDialog = class;

  TADO_QExportDialogF = class(TForm)
    paFileName: TPanel;
    laFileName: TLabel;
    edFileName: TEdit;
    bBrowse: TButton;
    chShowFile: TCheckBox;
    paButtons: TPanel;
    bStart: TButton;
    bCancel: TButton;
    Pages: TPageControl;
    tshExportType: TTabSheet;
    tshFields: TTabSheet;
    sdExportFile: TSaveDialog;
    laAvailableFields: TLabel;
    laExportedFields: TLabel;
    lstAvailableFields: TListView;
    lstExportedFields: TListView;
    bAddOneExportedField: TSpeedButton;
    bAddAllExportedField: TSpeedButton;
    bDelOneExportedField: TSpeedButton;
    bDelAllExportedField: TSpeedButton;
    imgFields: TImageList;
    tshFormats: TTabSheet;
    gbStandardFormats: TGroupBox;
    laIntegerFormat: TLabel;
    laDateFormat: TLabel;
    laDateTimeFormat: TLabel;
    laFloatFormat: TLabel;
    laTimeFormat: TLabel;
    laCurrencyFormat: TLabel;
    edIntegerFormat: TEdit;
    edDateFormat: TEdit;
    edDateTimeFormat: TEdit;
    edFloatFormat: TEdit;
    edTimeFormat: TEdit;
    edCurrencyFormat: TEdit;
    gbUserFormat: TGroupBox;
    cbxFormatFields: TComboBox;
    cbxUserFormats: TComboBox;
    laEqual_01: TLabel;
    lstUserFormats: TListView;
    bAddUserFormat: TSpeedButton;
    bEditUserFormat: TSpeedButton;
    bDeleteUserFormat: TSpeedButton;
    bClearUserFormats: TSpeedButton;
    tshHeaderFooter: TTabSheet;
    laHeader: TLabel;
    laFooter: TLabel;
    memHeader: TMemo;
    memFooter: TMemo;
    tshCaptions: TTabSheet;
    sgrCaptions: TStringGrid;
    tshRTF: TTabSheet;
    laRTFDefaultFont: TLabel;
    laRTFHeaderFont: TLabel;
    pbRTFDefaultFont: TPaintBox;
    pbRTFHeaderFont: TPaintBox;
    bRTFDefaultFont: TSpeedButton;
    bRTFHeaderFont: TSpeedButton;
    FontDialog: TFontDialog;
    RTFExp: TQExportRTF;
    tshXML: TTabSheet;
    chXMLStandalone: TCheckBox;
    laXMLEncoding: TLabel;
    edXMLEncoding: TEdit;
    tshSQL: TTabSheet;
    gbSQLCommit: TGroupBox;
    edSQLCommitRecCount: TEdit;
    laSQLUseCommit_02: TLabel;
    chSQLCommitAfterScript: TCheckBox;
    laSQLCommitStatement: TLabel;
    edSQLCommitStatement: TEdit;
    gbSQLMisc: TGroupBox;
    laSQLNullString: TLabel;
    edSQLNullString: TEdit;
    laSQLStatementTerm: TLabel;
    edSQLStatementTerm: TEdit;
    tshHTML: TTabSheet;
    pcHTML: TPageControl;
    tshHTMLPreview: TTabSheet;
    tshHTMLBasic: TTabSheet;
    tshHTMLAdvanced: TTabSheet;
    paHTMLPreview: TPanel;
    paHTMLBackground: TPanel;
    laHTMLFont: TLabel;
    paHTMLColumnHead_1: TPanel;
    paHTMLColumnHead_2: TPanel;
    paHTMLColumnHead_3: TPanel;
    paHTMLOddRowCol_1: TPanel;
    paHTMLOddRowCol_2: TPanel;
    paHTMLOddRowCol_3: TPanel;
    paHTMLEvenRowCol_1: TPanel;
    paHTMLEvenRowCol_2: TPanel;
    paHTMLEvenRowCol_3: TPanel;
    paHTMLOddRowCol_4: TPanel;
    paHTMLOddRowCol_5: TPanel;
    paHTMLOddRowCol_6: TPanel;
    paHTMLEvenRowCol_4: TPanel;
    paHTMLEvenRowCol_5: TPanel;
    paHTMLEvenRowCol_6: TPanel;
    ColorDialog: TColorDialog;
    HTMLExp: TQExportHTML;
    laHTMLHead_1: TLabel;
    laHTMLHead_2: TLabel;
    laHTMLHead_3: TLabel;
    laHTMLData_1: TLabel;
    laHTMLData_2: TLabel;
    laHTMLData_3: TLabel;
    laHTMLData_4: TLabel;
    laHTMLData_5: TLabel;
    laHTMLData_6: TLabel;
    laHTMLData_7: TLabel;
    laHTMLData_8: TLabel;
    laHTMLData_9: TLabel;
    laHTMLData_10: TLabel;
    laHTMLData_11: TLabel;
    laHTMLData_12: TLabel;
    laHTMLLink: TLabel;
    laHTMLVLink: TLabel;
    laHTMLALink: TLabel;
    laHTMLTemplate: TLabel;
    cbxHTMLTemplate: TComboBox;
    bHTMLSaveTemplate: TSpeedButton;
    bHTMLLoadTemplate: TSpeedButton;
    sdHTMLTemplate: TSaveDialog;
    odHTMLTemplate: TOpenDialog;
    odHTMLCSS: TOpenDialog;
    gbHTMLBodyOptions: TGroupBox;
    laHTMLBodyFontName: TLabel;
    laHTMLBackground: TLabel;
    laHTMLBodyAdvanced: TLabel;
    cbxHTMLFontName: TComboBox;
    edHTMLBackground: TEdit;
    btnHTMLBackground: TSpeedButton;
    edHTMLBodyAdvanced: TEdit;
    Bevel2: TBevel;
    opdHTMLBackground: TOpenPictureDialog;
    tshXLS: TTabSheet;
    XLSExp: TQExportXLS;
    sdOptions: TSaveDialog;
    odOptions: TOpenDialog;
    XMLExp: TQExportXML;
    DBFExp: TQExportDBF;
    LaTeXExp: TQExportLaTeX;
    SQLExp: TQExportSQL;
    ClipExp: TQExportClipboard;
    chPrintFile: TCheckBox;
    pcXLS: TPageControl;
    tshXLSAdvanced: TTabSheet;
    tshXLSDataFormat: TTabSheet;
    btnXLSResetItem: TSpeedButton;
    btnXLSResetAll: TSpeedButton;
    laXLSPageHeader: TLabel;
    edXLSPageHeader: TEdit;
    laXLSPageFooter: TLabel;
    edXLSPageFooter: TEdit;
    pcXLSDataFormat: TPageControl;
    tshXLSFont: TTabSheet;
    tshXLSBorders: TTabSheet;
    laXLSFont: TLabel;
    cbxXLSFont: TComboBox;
    laXLSFontSize: TLabel;
    cbxXLSFontSize: TComboBox;
    Bevel4: TBevel;
    btnFontColor: TSpeedButton;
    Bevel5: TBevel;
    btnFontBold: TSpeedButton;
    btnFontItalic: TSpeedButton;
    btnFontStrikeOut: TSpeedButton;
    Bevel6: TBevel;
    btnUnderlineSingle: TSpeedButton;
    btnUnderlineSingleAccounting: TSpeedButton;
    btnUnderlineDouble: TSpeedButton;
    btnUnderlineDoubleAccounting: TSpeedButton;
    Bevel3: TBevel;
    btnHorizontalLeft: TSpeedButton;
    btnHorizontalCenter: TSpeedButton;
    btnHorizontalRight: TSpeedButton;
    btnHorizontalFill: TSpeedButton;
    Bevel8: TBevel;
    btnVerticalTop: TSpeedButton;
    btnVerticalCenter: TSpeedButton;
    btnVerticalBottom: TSpeedButton;
    pbFontColor: TPaintBox;
    Bevel11: TBevel;
    Bevel9: TBevel;
    btnBorderTop: TSpeedButton;
    btnBorderBottom: TSpeedButton;
    btnBorderLeft: TSpeedButton;
    btnBorderRight: TSpeedButton;
    btnBorderTopColor: TSpeedButton;
    Bevel10: TBevel;
    pbBorderTop: TPaintBox;
    btnBorderBottomColor: TSpeedButton;
    pbBorderBottom: TPaintBox;
    btnBorderLeftColor: TSpeedButton;
    pbBorderLeft: TPaintBox;
    btnBorderRightColor: TSpeedButton;
    pbBorderRight: TPaintBox;
    cmbBorderTop: TComboBox;
    cmbBorderBottom: TComboBox;
    cmbBorderLeft: TComboBox;
    cmbBorderRight: TComboBox;
    Bevel7: TBevel;
    tshXLSFill: TTabSheet;
    tshXLSAggregate: TTabSheet;
    pbXLSCell: TPaintBox;
    Bevel13: TBevel;
    laXLSSampleCell: TLabel;
    laSQLUseCommit_01: TLabel;
    gbSQLTableOptions: TGroupBox;
    chSQLCreateTable: TCheckBox;
    laSQLTableName: TLabel;
    edSQLTableName: TEdit;
    laBooleanTrue: TLabel;
    laBooleanFalse: TLabel;
    edBooleanTrue: TEdit;
    edBooleanFalse: TEdit;
    chAllowCaptions: TCheckBox;
    cbxColumnAlign: TComboBox;
    edColumnWidth: TEdit;
    udColumnWidth: TUpDown;
    laXLSSheetTitle: TLabel;
    edXLSSheetTitle: TEdit;
    laNullString: TLabel;
    edNullString: TEdit;
    pcExportType: TPageControl;
    tshExportFormats: TTabSheet;
    tshExportOptions: TTabSheet;
    rgExportType: TRadioGroup;
    gbExportConstraints: TGroupBox;
    laSkipRecCount_01: TLabel;
    laSkipRecCount_02: TLabel;
    edSkipRecCount: TEdit;
    chGoToFirstRecord: TCheckBox;
    rbExportAllRecords: TRadioButton;
    rbExportOnly: TRadioButton;
    edExportRecCount: TEdit;
    laExportRecCount_02: TLabel;
    Bevel12: TBevel;
    tshASCII: TTabSheet;
    gbTXTOptions: TGroupBox;
    chTXTAutoCalcColWidth: TCheckBox;
    edTXTSpacing: TEdit;
    laTXTSpacing: TLabel;
    gbCSVOptions: TGroupBox;
    chCSVQuoteStrings: TCheckBox;
    laCSVComma: TLabel;
    edCSVComma: TEdit;
    rgRTFPageOrientation: TRadioGroup;
    pcXLSFormats: TPageControl;
    tshXLSFields: TTabSheet;
    tshXLSOptions: TTabSheet;
    lstXLSFields: TListView;
    lstXLSOptions: TListView;
    tshXLSStyles: TTabSheet;
    lstXLSStyles: TListView;
    rgXLSStripType: TRadioGroup;
    tbrXLSStyles: TToolBar;
    tbtAddXLSStyle: TToolButton;
    tbtDelXLSStyle: TToolButton;
    tbtUpXLSStyle: TToolButton;
    tbtDownXLSStyle: TToolButton;
    ilXLSStyles: TImageList;
    ToolButton1: TToolButton;
    tbtLoadXLSStyle: TToolButton;
    tbtSaveXLSStyle: TToolButton;
    odXLSStyle: TOpenDialog;
    sdXLSStyle: TSaveDialog;
    chCurrentRecordOnly: TCheckBox;
    ASCIIExp: TQExportASCII;
    Bevel1: TBevel;
    btnFillBackground: TSpeedButton;
    pbFillBackground: TPaintBox;
    cmbPattern: TComboBox;
    btnFillForeground: TSpeedButton;
    pbFillForeground: TPaintBox;
    Bevel14: TBevel;
    rgXLSFunction: TRadioGroup;
    edCSVQuote: TEdit;
    laCSVQuote: TLabel;
    chExportEmpty: TCheckBox;
    tshAccess: TTabSheet;
    gbAccessTableOptions: TGroupBox;
    laAccessTableName: TLabel;
    edAccessTableName: TEdit;
    chAccessCreateTable: TCheckBox;
    laCaptionRow: TLabel;
    edCaptionRow: TEdit;
    tshHTMLMultifile: TTabSheet;
    laHTMLTitle: TLabel;
    edHTMLTitle: TEdit;
    gbHTMLUsingCSS: TGroupBox;
    laHTMLCSSFileName: TLabel;
    bvHTMLCSSFileName: TBevel;
    btnHTMLCSSFileName: TSpeedButton;
    rbInternal: TRadioButton;
    rbExternal: TRadioButton;
    edHTMLCSSFileName: TEdit;
    gbHTMLMultifileOptions: TGroupBox;
    laHTMLFileRecCount_01: TLabel;
    laHTMLFileRecCount_02: TLabel;
    laHTMLIndexLinkTemplate: TLabel;
    edHTMLFileRecCount: TEdit;
    chHTMLGenerateIndex: TCheckBox;
    chHTMLUseMultiFileExport: TCheckBox;
    gbHTMLNavigation: TGroupBox;
    laHTMLIndexLinkTitle: TLabel;
    laHTMLFirstLinkTitle: TLabel;
    laHTMLPriorLinkTitle: TLabel;
    laHTMLNextLinkTitle: TLabel;
    laHTMLLastLinkTitle: TLabel;
    chHTMLNavigationOnTop: TCheckBox;
    chHTMLNavigationOnBottom: TCheckBox;
    edHTMLIndexLinkTitle: TEdit;
    edHTMLFirstLinkTitle: TEdit;
    edHTMLPriorLinkTitle: TEdit;
    edHTMLNextLinkTitle: TEdit;
    edHTMLLastLinkTitle: TEdit;
    edHTMLIndexLinkTemplate: TEdit;
    gbHTMLTableOptions: TGroupBox;
    Bevel15: TBevel;
    laHTMLCellPadding: TLabel;
    laHTMLCellSpacing: TLabel;
    laHTMLBorderWidth: TLabel;
    laHTMLTableAdvanced: TLabel;
    laHTMLTableBackground: TLabel;
    btnHTMLTableBackground: TSpeedButton;
    edHTMLCellPadding: TEdit;
    edHTMLCellSpacing: TEdit;
    edHTMLBorderWidth: TEdit;
    edHTMLTableAdvanced: TEdit;
    edHTMLTableBackground: TEdit;
    PDFExp: TQExportPDF;
    tshPDF: TTabSheet;
    lvPDFFonts: TListView;
    Bevel16: TBevel;
    paPDFSample: TPanel;
    sbPDFFontColor: TSpeedButton;
    edPDFFontSize: TEdit;
    laPDFFontSize: TLabel;
    laPDFFontEncoding: TLabel;
    cbPDFFontEncoding: TComboBox;
    laPDFFontName: TLabel;
    cbPDFFontName: TComboBox;
    pmTools: TPopupMenu;
    miLoadOptions: TMenuItem;
    miSaveOptions: TMenuItem;
    bTools: TButton;
    chXLSAutoCalcColWidth: TCheckBox;
    chHTMLOverwriteCSSFile: TCheckBox;
    pcPDFOptions: TPageControl;
    tshPDFGridOptions: TTabSheet;
    bvPDFGridOptions: TBevel;
    laPDFColSpacing: TLabel;
    laPDFRowSpacing: TLabel;
    laPDFGridLineWidth: TLabel;
    edPDFColSpacing: TEdit;
    edPDFRowSpacing: TEdit;
    edPDFGridLineWidth: TEdit;
    tshPDFPageOptions: TTabSheet;
    bvPDFPageOptions: TBevel;
    laPDFPageFormat: TLabel;
    laPDFPageWidth: TLabel;
    laPDFPageHeight: TLabel;
    laPDFPageUnits: TLabel;
    laPDFPageOrientation: TLabel;
    cbPDFPageFormat: TComboBox;
    edPDFPageWidth: TEdit;
    edPDFPageHeight: TEdit;
    cbPDFPageUnits: TComboBox;
    cbPDFPageOrientation: TComboBox;
    gbPDFMargins: TGroupBox;
    laPDFPageMarginLeft: TLabel;
    laPDFPageMarginRight: TLabel;
    laPDFPageMarginTop: TLabel;
    laPDFPageMarginBottom: TLabel;
    edPDFPageMarginLeft: TEdit;
    edPDFPageMarginRight: TEdit;
    edPDFPageMarginTop: TEdit;
    edPDFPageMarginBottom: TEdit;
    procedure edFileNameChange(Sender: TObject);
    procedure bBrowseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rgExportTypeClick(Sender: TObject);
    procedure chShowFileClick(Sender: TObject);
    procedure bAddOneExportedFieldClick(Sender: TObject);
    procedure bAddAllExportedFieldClick(Sender: TObject);
    procedure bDelOneExportedFieldClick(Sender: TObject);
    procedure bDelAllExportedFieldClick(Sender: TObject);
    procedure cbxFormatFieldsChange(Sender: TObject);
    procedure bAddUserFormatClick(Sender: TObject);
    procedure PagesChange(Sender: TObject);
    procedure bEditUserFormatClick(Sender: TObject);
    procedure bDeleteUserFormatClick(Sender: TObject);
    procedure bClearUserFormatsClick(Sender: TObject);
    procedure sgrCaptionsDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure pbRTFDefaultFontPaint(Sender: TObject);
    procedure bRTFDefaultFontClick(Sender: TObject);
    procedure pbRTFHeaderFontPaint(Sender: TObject);
    procedure bRTFHeaderFontClick(Sender: TObject);
    procedure paHTMLColumnHead_1Click(Sender: TObject);
    procedure paHTMLOddRowCol_1Click(Sender: TObject);
    procedure paHTMLEvenRowCol_1Click(Sender: TObject);
    procedure laHTMLData_1Click(Sender: TObject);
    procedure bHTMLSaveTemplateClick(Sender: TObject);
    procedure bHTMLLoadTemplateClick(Sender: TObject);
    procedure cbxHTMLTemplateChange(Sender: TObject);
    procedure paHTMLBackgroundClick(Sender: TObject);
    procedure cbxXLSFontChange(Sender: TObject);
    procedure cbxXLSFontSizeChange(Sender: TObject);
    procedure pbFontColorPaint(Sender: TObject);
    procedure pbBorderTopPaint(Sender: TObject);
    procedure pbBorderBottomPaint(Sender: TObject);
    procedure pbBorderLeftPaint(Sender: TObject);
    procedure pbBorderRightPaint(Sender: TObject);
    procedure pbFillBackgroundPaint(Sender: TObject);
    procedure pbFillForegroundPaint(Sender: TObject);
    procedure btnFontColorClick(Sender: TObject);
    procedure btnBorderTopColorClick(Sender: TObject);
    procedure btnBorderBottomColorClick(Sender: TObject);
    procedure btnBorderLeftColorClick(Sender: TObject);
    procedure btnBorderRightColorClick(Sender: TObject);
    procedure btnFillBackgroundClick(Sender: TObject);
    procedure btnFillForegroundClick(Sender: TObject);
    procedure btnFontBoldClick(Sender: TObject);
    procedure btnFontItalicClick(Sender: TObject);
    procedure btnFontStrikeOutClick(Sender: TObject);
    procedure btnUnderlineSingleClick(Sender: TObject);
    procedure btnUnderlineSingleAccountingClick(Sender: TObject);
    procedure btnUnderlineDoubleClick(Sender: TObject);
    procedure btnUnderlineDoubleAccountingClick(Sender: TObject);
    procedure btnHorizontalLeftClick(Sender: TObject);
    procedure btnHorizontalCenterClick(Sender: TObject);
    procedure btnHorizontalRightClick(Sender: TObject);
    procedure btnHorizontalFillClick(Sender: TObject);
    procedure btnVerticalTopClick(Sender: TObject);
    procedure btnVerticalCenterClick(Sender: TObject);
    procedure btnVerticalBottomClick(Sender: TObject);
    procedure btnBorderTopClick(Sender: TObject);
    procedure btnBorderBottomClick(Sender: TObject);
    procedure btnBorderLeftClick(Sender: TObject);
    procedure btnBorderRightClick(Sender: TObject);
    procedure cmbBorderTopChange(Sender: TObject);
    procedure cmbBorderBottomChange(Sender: TObject);
    procedure cmbBorderLeftChange(Sender: TObject);
    procedure cmbBorderRightChange(Sender: TObject);
    procedure cmbBorderTopDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure cmbBorderBottomDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure cmbBorderLeftDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure cmbBorderRightDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure cmbPatternDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure cmbPatternChange(Sender: TObject);
    procedure bStartClick(Sender: TObject);
    procedure OnBeginExport(Sender: TObject);
    procedure OnEndExport(Sender: TObject);
    procedure OnBeforeExportRow(Sender: TObject; Row: TQExportRow;
      var Accept: Boolean);
    procedure OnExportedRecord(Sender: TObject; RecNo: Integer);
    procedure chPrintFileClick(Sender: TObject);
    procedure FieldsListDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure rgXLSFunctionClick(Sender: TObject);
    procedure btnXLSResetItemClick(Sender: TObject);
    procedure btnXLSResetAllClick(Sender: TObject);
    procedure btnFontColorMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnFontColorMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnBorderTopColorMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnBorderTopColorMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnBorderBottomColorMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnBorderBottomColorMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnBorderLeftColorMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnBorderLeftColorMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnBorderRightColorMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnBorderRightColorMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnFillBackgroundMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnFillBackgroundMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnFillForegroundMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnFillForegroundMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure pbXLSCellPaint(Sender: TObject);
    procedure lstAvailableFieldsDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure lstExportedFieldsDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure laHTMLHead_1Click(Sender: TObject);
    procedure edIntegerFormatChange(Sender: TObject);
    procedure edFloatFormatChange(Sender: TObject);
    procedure edDateFormatChange(Sender: TObject);
    procedure edTimeFormatChange(Sender: TObject);
    procedure edDateTimeFormatChange(Sender: TObject);
    procedure edCurrencyFormatChange(Sender: TObject);
    procedure edXLSPageHeaderChange(Sender: TObject);
    procedure edXLSPageFooterChange(Sender: TObject);
    procedure chXLSAutoCalcColWidthClick(Sender: TObject);
    procedure edHTMLTitleChange(Sender: TObject);
    procedure edHTMLCSSFileNameChange(Sender: TObject);
    procedure btnHTMLCSSFileNameClick(Sender: TObject);
    procedure chHTMLOverwriteCSSFileClick(Sender: TObject);
    procedure edHTMLFileRecCountChange(Sender: TObject);
    procedure chHTMLGenerateIndexClick(Sender: TObject);
    procedure cbxHTMLFontNameChange(Sender: TObject);
    procedure edHTMLBackgroundChange(Sender: TObject);
    procedure btnHTMLBackgroundClick(Sender: TObject);
    procedure edHTMLBodyAdvancedChange(Sender: TObject);
    procedure edHTMLCellPaddingChange(Sender: TObject);
    procedure edHTMLCellSpacingChange(Sender: TObject);
    procedure edHTMLBorderWidthChange(Sender: TObject);
    procedure edHTMLTableBackgroundChange(Sender: TObject);
    procedure btnHTMLTableBackgroundClick(Sender: TObject);
    procedure edHTMLTableAdvancedChange(Sender: TObject);
    procedure laHTMLFontClick(Sender: TObject);
    procedure laHTMLLinkClick(Sender: TObject);
    procedure laHTMLVLinkClick(Sender: TObject);
    procedure laHTMLALinkClick(Sender: TObject);
    procedure chXMLStandaloneClick(Sender: TObject);
    procedure edXMLEncodingChange(Sender: TObject);
    procedure edSQLTableNameChange(Sender: TObject);
    procedure chSQLCreateTableClick(Sender: TObject);
    procedure edSQLCommitRecCountChange(Sender: TObject);
    procedure chSQLCommitAfterScriptClick(Sender: TObject);
    procedure edSQLCommitStatementChange(Sender: TObject);
    procedure edSQLNullStringChange(Sender: TObject);
    procedure edSQLStatementTermChange(Sender: TObject);
    procedure edBooleanTrueChange(Sender: TObject);
    procedure edBooleanFalseChange(Sender: TObject);
    procedure OnStopExport(Sender: TObject; var CanContinue: Boolean);
    procedure OnFetchedRecord(Sender: TObject; RecNo: Integer);
    procedure chGoToFirstRecordClick(Sender: TObject);
    procedure edExportRecCountChange(Sender: TObject);
    procedure edSkipRecCountChange(Sender: TObject);
    procedure chAllowCaptionsClick(Sender: TObject);
    procedure OnSkippedRecord(Sender: TObject; RecNo: Integer);
    procedure OnGetExportText(Sender: TObject; ColNo: Integer;
      var Text: String);
    procedure sgrCaptionsGetEditText(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    procedure cbxColumnAlignExit(Sender: TObject);
    procedure edColumnWidthExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edXLSSheetTitleChange(Sender: TObject);
    procedure edNullStringChange(Sender: TObject);
    procedure rbInternalClick(Sender: TObject);
    procedure rbExternalClick(Sender: TObject);
    procedure rbExportOnlyClick(Sender: TObject);
    procedure rbExportAllRecordsClick(Sender: TObject);
    procedure chTXTAutoCalcColWidthClick(Sender: TObject);
    procedure edTXTSpacingChange(Sender: TObject);
    procedure NumberKeyPress(Sender: TObject; var Key: Char);
    procedure chCSVQuoteStringsClick(Sender: TObject);
    procedure edCSVCommaExit(Sender: TObject);
    procedure rgRTFPageOrientationClick(Sender: TObject);
    procedure lstXLSFieldsDeletion(Sender: TObject; Item: TListItem);
    procedure lstXLSFieldsChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure pcXLSFormatsChange(Sender: TObject);
    procedure tbtAddXLSStyleClick(Sender: TObject);
    procedure tbtDelXLSStyleClick(Sender: TObject);
    procedure tbtUpXLSStyleClick(Sender: TObject);
    procedure tbtDownXLSStyleClick(Sender: TObject);
    procedure rgXLSStripTypeClick(Sender: TObject);
    procedure tbtSaveXLSStyleClick(Sender: TObject);
    procedure tbtLoadXLSStyleClick(Sender: TObject);
    procedure chCurrentRecordOnlyClick(Sender: TObject);
    procedure XLSExpBeforeExportRow(Sender: TObject; Sheet: Integer;
      Row: TQExportRow; var Accept: Boolean);
    procedure XLSExpExportedRecord(Sender: TObject; Sheet, RecNo: Integer);
    procedure XLSExpAdvancedGetExportText(Sender: TObject; Sheet,
      ColNo: Integer; var Text: String);
    procedure edCSVQuoteExit(Sender: TObject);
    procedure chExportEmptyClick(Sender: TObject);
    procedure edAccessTableNameChange(Sender: TObject);
    procedure chAccessCreateTableClick(Sender: TObject);
    procedure edCaptionRowExit(Sender: TObject);
    procedure edCaptionRowKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edHTMLIndexLinkTemplateChange(Sender: TObject);
    procedure chHTMLNavigationOnTopClick(Sender: TObject);
    procedure chHTMLNavigationOnBottomClick(Sender: TObject);
    procedure edHTMLIndexLinkTitleChange(Sender: TObject);
    procedure edHTMLFirstLinkTitleChange(Sender: TObject);
    procedure edHTMLPriorLinkTitleChange(Sender: TObject);
    procedure edHTMLNextLinkTitleChange(Sender: TObject);
    procedure edHTMLLastLinkTitleChange(Sender: TObject);
    procedure chHTMLUseMultiFileExportClick(Sender: TObject);
    procedure edPDFColSpacingChange(Sender: TObject);
    procedure edPDFRowSpacingChange(Sender: TObject);
    procedure edPDFGridLineWidthChange(Sender: TObject);
    procedure lvPDFFontsChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure cbPDFFontNameChange(Sender: TObject);
    procedure cbPDFFontEncodingChange(Sender: TObject);
    procedure edPDFFontSizeChange(Sender: TObject);
    procedure sbPDFFontColorClick(Sender: TObject);
    procedure bToolsClick(Sender: TObject);
    procedure miSaveOptionsClick(Sender: TObject);
    procedure miLoadOptionsClick(Sender: TObject);
    procedure cbPDFPageFormatChange(Sender: TObject);
    procedure edPDFPageWidthExit(Sender: TObject);
    procedure edPDFPageHeightExit(Sender: TObject);
    procedure cbPDFPageUnitsChange(Sender: TObject);
    procedure cbPDFPageOrientationChange(Sender: TObject);
    procedure edPDFPageMarginLeftExit(Sender: TObject);
    procedure edPDFPageMarginRightExit(Sender: TObject);
    procedure edPDFPageMarginTopExit(Sender: TObject);
    procedure edPDFPageMarginBottomExit(Sender: TObject);
  private
    FQuickExport: TQExport;
    FProgress: TQExportDialogProgressF;

    FFileName: string;
    FShowFile: boolean;
    FPrintFile: boolean;
    FOptionsFileName: string;
    FGoToFirstRecord: boolean;
    FCurrentRecordOnly: boolean;
    FExportEmpty: boolean;
    FExportRecCount: integer;
    FSkipRecCount: integer;

    FAllowCaptions: boolean;
    FCaptionRow: integer;

    FIntegerFmt: string;
    FFloatFmt: string;
    FDateFmt: string;
    FTimeFmt: string;
    FDateTimeFmt: string;
    FCurrencyFmt: string;
    FBooleanTrue: string;
    FBooleanFalse: string;
    FNullString: string;

    FRTFPageOrientation: TQExportPageOrientation;

    FXLSPageHeader: string;
    FXLSPageFooter: string;
    FXLSSheetTitle: string;
    FXLSStripType: TxlsStripType;
    FXLSAutoCalcColWidth: boolean;

    FHTMLTitle: string;
    FHTMLUsingCSS: TUsingCSS;
    FHTMLCSSFileName: string;
    FHTMLOverwriteCSSFile: boolean;

    FHTMLUseMultiFileExport: boolean;
    FHTMLFileRecCount: integer;
    FHTMLGenerateIndex: boolean;

    FHTMLIndexLinkTemplate: string;
    FHTMLNavigationOnTop: boolean;
    FHTMLNavigationOnBottom: boolean;
    FHTMLIndexLinkTitle: string;
    FHTMLFirstLinkTitle: string;
    FHTMLPriorLinkTitle: string;
    FHTMLNextLinkTitle: string;
    FHTMLLastLinkTitle: string;

    FHTMLFontName: string;
    FHTMLBackground: string;
    FHTMLBodyAdvanced: string;
    FHTMLCellPadding: integer;
    FHTMLCellSpacing: integer;
    FHTMLBorderWidth: integer;
    FHTMLTableBackground: string;
    FHTMLTableAdvanced: string;
    FHTMLBackgroundColor: TColor;
    FHTMLFontColor: TColor;
    FHTMLHeadBackgroundColor: TColor;
    FHTMLHeadFontColor: TColor;
    FHTMLOddRowBackgroundColor: TColor;
    FHTMLEvenRowBackgroundColor: TColor;
    FHTMLDataFontColor: TColor;
    FHTMLLinkColor: TColor;
    FHTMLVLinkColor: TColor;
    FHTMLALinkColor: TColor;

    FXMLStandalone: boolean;
    FXMLEncoding: string;

    FSQLTableName: string;
    FSQLCreateTable: boolean;
    FSQLCommitRecCount: integer;
    FSQLCommitAfterScript: boolean;
    FSQLCommitStatement: string;
    FSQLStatementTerm: string;

    FTXTAutoCalcColWidth: boolean;
    FTXTSpacing: integer;
    FCSVQuoteStrings: boolean;
    FCSVComma: char;
    FCSVQuote: char;

    FAccessTableName: string;
    FAccessCreateTable: boolean;

    FPDFColSpacing: double;
    FPDFRowSpacing: double;
    FPDFGridLineWidth: integer;

    FPDFPageFormat: TQExportPageFormat;
    FPDFPageWidth: integer;
    FPDFPageHeight: integer;
    FPDFPageUnits: TQExportUnits;
    FPDFPageOrientation: TQExportPageOrientation;
    FPDFPageMarginLeft: integer;
    FPDFPageMarginRight: integer;
    FPDFPageMarginTop: integer;
    FPDFPageMarginBottom: integer;

    FXLSListItem: TListItem;
    FPDFFontItem: TListItem;

    function GetDialog: TADO_QExportDialog;

    function GetDataSet: TDataSet;
    function GetListView: TListView;
    function GetDBGrid: TDBGrid;
    function GetStringGrid: TStringGrid;

    function GetAutoChangeFileExt: boolean;
    function GetSaveLoadButtons: boolean;
    function GetCommonOptions: TCommonOptions;
    function GetConfirmAbort: boolean;
    function GetAutoSaveOptions: boolean;
    function GetAutoLoadOptions: boolean;
    function GetExportSource: TQExportSource;

    procedure SetFileName(const Value: string);
    procedure SetShowFile(const Value: boolean);
    procedure SetPrintFile(const Value: boolean);
    function GetExportType: TAllowedExport;
    procedure SetExportType(const Value: TAllowedExport);
    procedure SetOptionsFileName(const Value: string);
    procedure SetGoToFirstRecord(const Value: boolean);
    procedure SetCurrentRecordOnly(const Value: boolean);
    procedure SetExportEmpty(const Value: boolean);
    procedure SetExportRecCount(const Value: integer);
    procedure SetSkipRecCount(const Value: integer);

    procedure SetAllowCaptions(const Value: boolean);
    procedure SetCaptionRow(const Value: integer);

    procedure SetIntegerFmt(const Value: string);
    procedure SetFloatFmt(const Value: string);
    procedure SetDateFmt(const Value: string);
    procedure SetTimeFmt(const Value: string);
    procedure SetDateTimeFmt(const Value: string);
    procedure SetCurrencyFmt(const Value: string);
    procedure SetBooleanTrue(const Value: string);
    procedure SetBooleanFalse(const Value: string);
    procedure SetNullString(const Value: string);

    procedure SetRTFPageOrientation(const Value: TQExportPageOrientation);

    procedure SetXLSPageHeader(const Value: string);
    procedure SetXLSPageFooter(const Value: string);
    procedure SetXLSSheetTitle(const Value: string);
    procedure SetXLSStripType(const Value: TxlsStripType);
    procedure SetXLSAutoCalcColWidth(const Value: boolean);

    procedure SetHTMLTitle(const Value: string);
    procedure SetHTMLUsingCSS(const Value: TUsingCSS);
    procedure SetHTMLCSSFileName(const Value: string);
    procedure SetHTMLOverwriteCSSFile(const Value: boolean);

    procedure SetHTMLUseMultiFileExport(const Value: boolean);
    procedure SetHTMLFileRecCount(const Value: integer);
    procedure SetHTMLGenerateIndex(const Value: boolean);

    procedure SetHTMLIndexLinkTemplate(const Value: string);
    procedure SetHTMLNavigationOnTop(const Value: boolean);
    procedure SetHTMLNavigationOnBottom(const Value: boolean);
    procedure SetHTMLIndexLinkTitle(const Value: string);
    procedure SetHTMLFirstLinkTitle(const Value: string);
    procedure SetHTMLPriorLinkTitle(const Value: string);
    procedure SetHTMLNextLinkTitle(const Value: string);
    procedure SetHTMLLastLinkTitle(const Value: string);

    procedure SetHTMLFontName(const Value: string);
    procedure SetHTMLBackground(const Value: string);
    procedure SetHTMLBodyAdvanced(const Value: string);
    procedure SetHTMLCellPadding(const Value: integer);
    procedure SetHTMLCellSpacing(const Value: integer);
    procedure SetHTMLBorderWidth(const Value: integer);
    procedure SetHTMLTableBackground(const Value: string);
    procedure SetHTMLTableAdvanced(const Value: string);
    procedure SetHTMLBackgroundColor(const Value: TColor);
    procedure SetHTMLFontColor(const Value: TColor);
    procedure SetHTMLHeadBackgroundColor(const Value: TColor);
    procedure SetHTMLHeadFontColor(const Value: TColor);
    procedure SetHTMLOddRowBackgroundColor(const Value: TColor);
    procedure SetHTMLEvenRowBackgroundColor(const Value: TColor);
    procedure SetHTMLDataFontColor(const Value: TColor);
    procedure SetHTMLLinkColor(const Value: TColor);
    procedure SetHTMLVLinkColor(const Value: TColor);
    procedure SetHTMLALinkColor(const Value: TColor);

    procedure SetXMLEncoding(const Value: string);
    procedure SetXMLStandalone(const Value: boolean);

    procedure SetSQLTableName(const Value: string);
    procedure SetSQLCreateTable(const Value: boolean);
    procedure SetSQLCommitRecCount(const Value: integer);
    procedure SetSQLCommitAfterScript(const Value: boolean);
    procedure SetSQLCommitStatement(const Value: string);
    procedure SetSQLStatementTerm(const Value: string);

    procedure SetTXTAutoCalcColWidth(const Value: boolean);
    procedure SetTXTSpacing(const Value: integer);
    procedure SetCSVQuoteStrings(const Value: boolean);
    procedure SetCSVComma(const Value: char);
    procedure SetCSVQuote(const Value: char);

    procedure SetAccessTableName(const Value: string);
    procedure SetAccessCreateTable(const Value: boolean);

    procedure SetPDFColSpacing(const Value: double);
    procedure SetPDFRowSpacing(const Value: double);
    procedure SetPDFGridLineWidth(const Value: integer);

    function GetPDFPageSizeFormat: string;
    procedure SetPDFPageFormat(const Value: TQExportPageFormat);
    function GetPDFPageWidth: double;
    procedure SetPDFPageWidth(const Value: double);
    function GetPDFPageHeight: double;
    procedure SetPDFPageHeight(const Value: double);
    procedure SetPDFPageUnits(const Value: TQExportUnits);
    procedure SetPDFPageOrientation(const Value: TQExportPageOrientation);
    function GetPDFPageMarginLeft: double;
    procedure SetPDFPageMarginLeft(const Value: double);
    function GetPDFPageMarginRight: double;
    procedure SetPDFPageMarginRight(const Value: double);
    function GetPDFPageMarginTop: double;
    procedure SetPDFPageMarginTop(const Value: double);
    function GetPDFPageMarginBottom: double;
    procedure SetPDFPageMarginBottom(const Value: double);

    procedure InitializeDialog;
    procedure ShowTitle;
    procedure SaveExportOptions(const FileName: string);
    procedure LoadExportOptions(const FileName: string);

    procedure ChangeFileExtension;
    procedure FillAllowedExports;
    procedure ResetStandardFormats;
    procedure FillFields;
    procedure ShowButtons;
    procedure MakeStringGrid;
    function IsCompatiblePage: boolean;

    procedure LoadStringGridCaption;

    procedure HTMLFillColors;
    procedure HTMLUpdateMultifileControls;

    procedure ShowFormatButtons;

    function GetIndexOfNewAvailableFields(Item: TListItem): integer;

    procedure SetCustomTemplate;
    procedure SetCaptions;

    function CurrXLSListView: TListView;
    procedure CorrectXLSFieldsList;

    procedure ShowXLSListItem(Item: TListItem);
    procedure ShowXLSListItemM;

    procedure XLSUpdateItemFont(Item: TListItem);
    procedure XLSUpdateItemFontSize(Item: TListItem);
    procedure XLSUpdateItemFontColor(Item: TListItem);
    procedure XLSUpdateItemFontBold(Item: TListItem);
    procedure XLSUpdateItemFontItalic(Item: TListItem);
    procedure XLSUpdateItemFontStrikeOut(Item: TListItem);
    procedure XLSUpdateItemFontUnderline(Item: TListItem);
    procedure XLSUpdateItemHorAlignment(Item: TListItem);
    procedure XLSUpdateItemVertAlignment(Item: TListItem);
    procedure XLSUpdateItemBorderTop(Item: TListItem);
    procedure XLSUpdateItemBorderTopColor(Item: TListItem);
    procedure XLSUpdateItemBorderBottom(Item: TListItem);
    procedure XLSUpdateItemBorderBottomColor(Item: TListItem);
    procedure XLSUpdateItemBorderLeft(Item: TListItem);
    procedure XLSUpdateItemBorderLeftColor(Item: TListItem);
    procedure XLSUpdateItemBorderRight(Item: TListItem);
    procedure XLSUpdateItemBorderRightColor(Item: TListItem);
    procedure XLSUpdateItemFillPattern(Item: TListItem);
    procedure XLSUpdateItemFillBackground(Item: TListItem);
    procedure XLSUpdateItemFillForeground(Item: TListItem);
    procedure XLSUpdateItemAggregate(Item: TListItem);
    procedure XLSUpdateItemSetDefault(Item: TListItem);
    procedure XLSResetAllItems;
    procedure XLSResetAllItems_A;
    procedure XLSShowStyleButtons;
    procedure XLSRenumStyles;
    procedure XLSSaveStyle(const FileName: string);
    procedure XLSLoadStyle(const FileName: string);

    procedure PDFFillFontList;
    procedure PDFShowFontInfo;
    procedure PDFShowExample;
  public
    property Dialog: TADO_QExportDialog read GetDialog;

    property DataSet: TDataSet read GetDataSet;
    property ListView: TListView read GetListView;
    property DBGrid: TDBGrid read GetDBGrid;
    property StringGrid: TStringGrid read GetStringGrid;

    property AutoChangeFileExt: boolean read GetAutoChangeFileExt;
    property SaveLoadButtons: boolean read GetSaveLoadButtons;
    property CommonOptions: TCommonOptions read GetCommonOptions;
    property ConfirmAbort: boolean read GetConfirmAbort;
    property AutoSaveOptions: boolean read GetAutoSaveOptions;
    property AutoLoadOptions: boolean read GetAutoLoadOptions;
    property ExportSource: TQExportSource read GetExportSource;

    property QuickExport: TQExport read FQuickExport write FQuickExport;

    property FileName: string read FFileName write SetFileName;
    property ShowFile: boolean read FShowFile write SetShowFile;
    property PrintFile: boolean read FPrintFile write SetPrintFile;
    property ExportType: TAllowedExport read GetExportType write SetExportType;
    property OptionsFileName: string read FOptionsFileName
      write SetOptionsFileName;
    property GoToFirstRecord: boolean read FGoToFirstRecord
      write SetGoToFirstRecord;
    property CurrentRecordOnly: boolean read FCurrentRecordOnly
      write SetCurrentRecordOnly;
    property ExportEmpty: boolean read FExportEmpty write SetExportEmpty;
    property ExportRecCount: integer read FExportRecCount
      write SetExportRecCount;
    property SkipRecCount: integer read FSkipRecCount
      write SetSkipRecCount;

    property AllowCaptions: boolean read FAllowCaptions write SetAllowCaptions;
    property CaptionRow: integer read FCaptionRow write SetCaptionRow;

    property IntegerFmt: string read FIntegerFmt write SetIntegerFmt;
    property FloatFmt: string read FFloatFmt write SetFloatFmt;
    property DateFmt: string read FDateFmt write SetDateFmt;
    property TimeFmt: string read FTimeFmt write SetTimeFmt;
    property DateTimeFmt: string read FDateTimeFmt write SetDateTimeFmt;
    property CurrencyFmt: string read FCurrencyFmt write SetCurrencyFmt;
    property BooleanTrue: string read FBooleanTrue write SetBooleanTrue;
    property BooleanFalse: string read FBooleanFalse write SetBooleanFalse;
    property NullString: string read FNullString write SetNullString;

    property RTFPageOrientation: TQExportPageOrientation read FRTFPageOrientation
      write SetRTFPageOrientation;

    property XLSPageHeader: string read FXLSPageHeader write SetXLSPageHeader;
    property XLSPageFooter: string read FXLSPageFooter write SetXLSPageFooter;
    property XLSSheetTitle: string read FXLSSheetTitle write SetXLSSheetTitle;
    property XLSStripType: TxlsStripType read FXLSStripType
      write SetXLSStripType;
    property XLSAutoCalcColWidth: boolean read FXLSAutoCalcColWidth
      write SetXLSAutoCalcColWidth;

    property HTMLTitle: string read FHTMLTitle write SetHTMLTitle;
    property HTMLUsingCSS: TUsingCSS read FHTMLUsingCSS write SetHTMLUsingCSS;
    property HTMLCSSFileName: string read FHTMLCSSFileName
      write SetHTMLCSSFileName;
    property HTMLOverwriteCSSFile: boolean read FHTMLOverwriteCSSFile
      write SetHTMLOverwriteCSSFile;

    property HTMLUseMultiFileExport: boolean read FHTMLUseMultiFileExport
      write SetHTMLUseMultiFileExport;
    property HTMLFileRecCount: integer read FHTMLFileRecCount
      write SetHTMLFileRecCount;
    property HTMLGenerateIndex: boolean read FHTMLGenerateIndex
      write SetHTMLGenerateIndex;

    property HTMLIndexLinkTemplate: string read FHTMLIndexLinkTemplate
      write SetHTMLIndexLinkTemplate;
    property HTMLNavigationOnTop: boolean read FHTMLNavigationOnTop
      write SetHTMLNavigationOnTop;
    property HTMLNavigationOnBottom: boolean read FHTMLNavigationOnBottom
      write SetHTMLNavigationOnBottom;
    property HTMLIndexLinkTitle: string read FHTMLIndexLinkTitle
      write SetHTMLIndexLinkTitle;
    property HTMLFirstLinkTitle: string read FHTMLFirstLinkTitle
      write SetHTMLFirstLinkTitle;
    property HTMLPriorLinkTitle: string read FHTMLPriorLinkTitle
      write SetHTMLPriorLinkTitle;
    property HTMLNextLinkTitle: string read FHTMLNextLinkTitle
      write SetHTMLNextLinkTitle;
    property HTMLLastLinkTitle: string read FHTMLLastLinkTitle
      write SetHTMLLastLinkTitle;

    property HTMLFontName: string read FHTMLFontName write SetHTMLFontName;
    property HTMLBackground: string read FHTMLBackground
      write SetHTMLBackground;
    property HTMLBodyAdvanced: string read FHTMLBodyAdvanced
      write SetHTMLBodyAdvanced;
    property HTMLCellPadding: integer read FHTMLCellPadding
      write SetHTMLCellPadding;
    property HTMLCellSpacing: integer read FHTMLCellSpacing
      write SetHTMLCellSpacing;
    property HTMLBorderWidth: integer read FHTMLBorderWidth
      write SetHTMLBorderWidth;
    property HTMLTableBackground: string read FHTMLTableBackground
      write SetHTMLTableBackground;
    property HTMLTableAdvanced: string read FHTMLTableAdvanced
      write SetHTMLTableAdvanced;

    property HTMLBackgroundColor: TColor read FHTMLBackgroundColor
      write SetHTMLBackgroundColor;
    property HTMLFontColor: TColor read FHTMLFontColor write SetHTMLFontColor;
    property HTMLHeadBackgroundColor: TColor read FHTMLHeadBackgroundColor
      write SetHTMLHeadBackgroundColor;
    property HTMLHeadFontColor: TColor read FHTMLHeadFontColor
      write SetHTMLHeadFontColor;
    property HTMLOddRowBackgroundColor: TColor read FHTMLOddRowBackgroundColor
      write SetHTMLOddRowBackgroundColor;
    property HTMLEvenRowBackgroundColor: TColor read FHTMLEvenRowBackgroundColor
      write SetHTMLEvenRowBackgroundColor;
    property HTMLDataFontColor: TColor read FHTMLDataFontColor
      write SetHTMLDataFontColor;
    property HTMLLinkColor: TColor read FHTMLLinkColor write SetHTMLLinkColor;
    property HTMLVLinkColor: TColor read FHTMLVLinkColor
      write SetHTMLVLinkColor;
    property HTMLALinkColor: TColor read FHTMLALinkColor
      write SetHTMLALinkColor;

    property XMLStandalone: boolean read FXMLStandalone write SetXMLStandalone;
    property XMLEncoding: string read FXMLEncoding write SetXMLEncoding;

    property SQLTableName: string read FSQLTableName write SetSQLTableName;
    property SQLCreateTable: boolean read FSQLCreateTable
      write SetSQLCreateTable;
    property SQLCommitRecCount: integer read FSQLCommitRecCount
      write SetSQLCommitRecCount;
    property SQLCommitAfterScript: boolean read FSQLCommitAfterScript
      write SetSQLCommitAfterScript;
    property SQLCommitStatement: string read FSQLCommitStatement
      write SetSQLCommitStatement;
    property SQLStatementTerm: string read FSQLStatementTerm
      write SetSQLStatementTerm;

    property TXTAutoCalcColWidth: boolean read FTXTAutoCalcColWidth
      write SetTXTAutoCalcColWidth;
    property TXTSpacing: integer read FTXTSpacing write SetTXTSpacing;
    property CSVQuoteStrings: boolean read FCSVQuoteStrings
      write SetCSVQuoteStrings;
    property CSVComma: char read FCSVComma write SetCSVComma;
    property CSVQuote: char read FCSVQuote write SetCSVQuote;

    property AccessTableName: string read FAccessTableName
      write SetAccessTableName;
    property AccessCreateTable: boolean read FAccessCreateTable
      write SetAccessCreateTable;

    property PDFColSpacing: double read FPDFColSpacing write SetPDFColSpacing;
    property PDFRowSpacing: double read FPDFRowSpacing write SetPDFRowSpacing;
    property PDFGridLineWidth: integer read FPDFGridLineWidth
      write SetPDFGridLineWidth;
    property PDFPageFormat: TQExportPageFormat read FPDFPageFormat
      write SetPDFPageFormat;
    property PDFPageWidth: double read GetPDFPageWidth
      write SetPDFPageWidth;
    property PDFPageHeight: double read GetPDFPageHeight
      write SetPDFPageHeight;
    property PDFPageUnits: TQExportUnits read FPDFPageUnits
      write SetPDFPageUnits;
    property PDFPageOrientation: TQExportPageOrientation
      read FPDFPageOrientation write SetPDFPageOrientation;
    property PDFPageMarginLeft: double read GetPDFPageMarginLeft
      write SetPDFPageMarginLeft;
    property PDFPageMarginRight: double read GetPDFPageMarginRight
      write SetPDFPageMarginRight;
    property PDFPageMarginTop: double read GetPDFPageMarginTop
      write SetPDFPageMarginTop;
    property PDFPageMarginBottom: double read GetPDFPageMarginBottom
      write SetPDFPageMarginBottom;
  end;

  TQExportEvent = procedure(Sender: TQExport) of object;
  TQExportGetColonEvent = procedure(Sender: TObject; Colon: TStrings) of object;
  TQRecordExportedEvent = procedure(Sender: TQExport; RecNo: integer) of object;
  TQRecordExportedXLSEvent = procedure(Sender: TQExportXLS; Sheet, RecNo: integer) of object;
  TQGetExportTextEvent = procedure(Sender: TQExport; ColNo: integer;
    var Text: string) of object;
  TQGetExportXLSTextEvent = procedure(Sender: TQExportXLS; Sheet, ColNo: Integer;
    var Text: String) of object;
  TQBeforeExportRowEvent = procedure(Sender: TQExport; Row: TQExportRow;
    var Accept: boolean) of object;
  TQBeforeExportXLSRowEvent = procedure(Sender: TQExportXLS; Sheet: integer;
    Row: TQExportRow; var Accept: boolean) of object;

  TADO_QExportDialog = class(TComponent)
  private
    FColumns: TQExportColumns;

    FExportSource: TQExportSource;
    FDataSet: TDataSet;
    FDBGrid: TDBGrid;
    FListView: TListView;
    FStringGrid: TStringGrid;

    FAllowedExports: TAllowedExports;
    FCommonOptions: TCommonOptions;
    FAutoChangeFileExt: boolean;
    FConfirmAbort: boolean;
    FOnlyVisibleFields: boolean;
    FAutoCalcStrType: boolean;

    FOptionsFileName: string;
    FAutoSaveOptions: boolean;
    FAutoLoadOptions: boolean;
    FSaveLoadButtons: boolean;

    FAbout: string;
    F_Version: string;

    FFileName: string;
    FShowFile: boolean;
    FPrintFile: boolean;

    FExportedFields: TStrings;

    FHeader: TStrings;
    FAllowCaptions: boolean;
    FCaptionRow: integer;
    FCaptions: TStrings;
    FFooter: TStrings;
    FFormats: TQExportFormats;
    FUserFormats: TStrings;
    FColumnsWidth: TStrings;
    FColumnsAlign: TStrings;

    FCurrentRecordOnly: boolean;
    FExportEmpty: boolean;
    FGoToFirstRecord: boolean;
    FExportRecCount: integer;
    FSkipRecCount: integer;

    FRTFOptions: TQExportRTFOptions;
    FXMLOptions: TQExportXMLOptions;
    FSQLOptions: TQExportSQLOptions;
    FHTMLPageOptions: TQExportHTMLPageOptions;
    FHTMLTableOptions: TQExportHTMLTableOptions;
    FHTMLMultiFileOptions: TQExportHTMLMultiFileOptions;
    FTXTOptions: TQExportTXTOptions;
    FCSVOptions: TQExportCSVOptions;
    FPDFOptions: TQExportPDFOptions;
    FAccessOptions: TQExportAccessOptions;
    FXLSOptions: TQExportXLSOptions;

    FOnGetHeader: TQExportGetColonEvent;
    FOnGetFooter: TQExportGetColonEvent;

    FOnBeginExport: TQExportEvent;
    FOnEndExport: TQExportEvent;

    FOnFetchedRecord: TQRecordExportedEvent;
    FOnSkippedRecord: TQRecordExportedEvent;
    FOnBeforeExportRow: TQBeforeExportRowEvent;
    FOnBeforeExportXLSRow: TQBeforeExportXLSRowEvent;
    FOnExportedRecord: TQRecordExportedEvent;
    FOnExportedRecordXLS: TQRecordExportedXLSEvent;

    FOnStopExport: TQExportStopEvent;
    FOnGetExportText: TQGetExportTextEvent;
    FOnGetExportXLSText: TQGetExportXLSTextEvent;

    procedure SetExportedFields(const Value: TStrings);

    procedure SetHeader(const Value: TStrings);
    procedure SetCaptions(const Value: TStrings);
    procedure SetFooter(const Value: TStrings);
    procedure SetFormats(const Value: TQExportFormats);
    procedure SetUserFormats(const Value: TStrings);
    procedure SetColumnsWidth(const Value: TStrings);
    procedure SetColumnsAlign(const Value: TStrings);

    procedure SetRTFOptions(const Value: TQExportRTFOptions);
    procedure SetXMLOptions(const Value: TQExportXMLOptions);
    procedure SetSQLOptions(const Value: TQExportSQLOptions);
    procedure SetHTMLPageOptions(const Value: TQExportHTMLPageOptions);
    procedure SetHTMLTableOptions(const Value: TQExportHTMLTableOptions);
    procedure SetHTMLMultiFileOptions(const Value: TQExportHTMLMultiFileOptions);
    procedure SetTXTOptions(const Value: TQExportTXTOptions);
    procedure SetCSVOptions(const Value: TQExportCSVOptions);
    procedure SetPDFOptions(const Value: TQExportPDFOptions);
    procedure SetAccessOptions(const Value: TQExportAccessOptions);
    procedure SetXLSOptions(const Value: TQExportXLSOptions);
  protected
    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;
    property Columns: TQExportColumns read FColumns;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Execute;
  published
    property ExportSource: TQExportSource read FExportSource
      write FExportSource default esDataSet;
    property DataSet: TDataSet read FDataSet write FDataSet;
    property ListView: TListView read FListView write FListView;
    property DBGrid: TDBGrid read FDBGrid write FDBGrid;
    property StringGrid: TStringGrid read FStringGrid write FStringGrid;

    property AllowedExports: TAllowedExports read FAllowedExports
      write FAllowedExports default [Low(TAllowedExport)..High(TAllowedExport)];
    property CommonOptions: TCommonOptions read FCommonOptions
      write FCommonOptions default [Low(TCommonOption)..High(TCommonOption)];
    property AutoChangeFileExt: boolean read FAutoChangeFileExt
      write FAutoChangeFileExt default true;
    property ConfirmAbort: boolean read FConfirmAbort
      write FConfirmAbort default true;
    property OnlyVisibleFields: boolean read FOnlyVisibleFields
      write FOnlyVisibleFields default false;
    property AutoCalcStrType: boolean read FAutoCalcStrType
      write FAutoCalcStrType default false;

    property OptionsFileName: string read FOptionsFileName
      write FOptionsFileName;
    property AutoSaveOptions: boolean read FAutoSaveOptions
      write FAutoSaveOptions default false;
    property AutoLoadOptions: boolean read FAutoLoadOptions
      write FAutoLoadOptions default false;
    property SaveLoadButtons: boolean read FSaveLoadButtons
      write FsaveLoadButtons default false;

    property About: string read FAbout write FAbout;
    property _Version: string read F_Version write F_Version;

    property FileName: string read FFileName write FFileName;
    property ShowFile: boolean read FShowFile write FShowFile default true;
    property PrintFile: boolean read FPrintFile write FPrintFile default false;

    property ExportedFields: TStrings read FExportedFields
      write SetExportedFields;

    property Header: TStrings read FHeader write SetHeader;
    property AllowCaptions: boolean read FAllowCaptions
      write FAllowCaptions default true;
    property CaptionRow: integer read FCaptionRow write FCaptionRow default -1;
    property Captions: TStrings read FCaptions write SetCaptions;
    property Footer: TStrings read FFooter write SetFooter;
    property Formats: TQExportFormats read FFormats write SetFormats;
    property UserFormats: TStrings read FUserFormats write SetUserFormats;
    property ColumnsWidth: TStrings read FColumnsWidth write SetColumnsWidth;
    property ColumnsAlign: TStrings read FColumnsAlign write SetColumnsAlign;

    property CurrentRecordOnly: boolean read FCurrentRecordOnly
      write FCurrentRecordOnly default false;
    property ExportEmpty: boolean read FExportEmpty
      write FExportEmpty default true;
    property GoToFirstRecord: boolean read FGoToFirstRecord
      write FGoToFirstRecord default true;
    property ExportRecCount: integer read FExportRecCount
      write FExportRecCount default 0;
    property SkipRecCount: integer read FSkipRecCount
      write FSkipRecCount default 0;

    property RTFOptions: TQExportRTFOptions read FRTFOptions
      write SetRTFOptions;
    property XMLOptions: TQExportXMLOptions read FXMLOptions
      write SetXMLOptions;
    property SQLOptions: TQExportSQLOptions read FSQLOptions
      write SetSQLOptions;
    property HTMLPageOptions: TQExportHTMLPageOptions read FHTMLPageOptions
      write SetHTMLPageOptions;
    property HTMLTableOptions: TQExportHTMLTableOptions read FHTMLTableOptions
      write SetHTMLTableOptions;
    property HTMLMultiFileOptions: TQExportHTMLMultiFileOptions
      read FHTMLMultiFileOptions write SetHTMLMultiFileOptions;
    property TXTOptions: TQExportTXTOptions read FTXTOptions
      write SetTXTOptions;
    property CSVOptions: TQExportCSVOptions read FCSVOptions
      write SetCSVOptions;
    property PDFOptions: TQExportPDFOptions read FPDFOptions
      write SetPDFOptions;
    property AccessOptions: TQExportAccessOptions read FAccessOptions
      write SetAccessOptions;
    property XLSOptions: TQExportXLSOptions read FXLSOptions
      write SetXLSOptions;

    property OnGetHeader: TQExportGetColonEvent read FOnGetHeader
      write FOnGetHeader;
    property OnGetFooter: TQExportGetColonEvent read FOnGetFooter
      write FOnGetFooter;

    property OnBeginExport: TQExportEvent read FOnBeginExport
      write FOnBeginExport;
    property OnEndExport: TQExportEvent read FOnEndExport write FOnEndExport;
    property OnFetchedRecord: TQRecordExportedEvent read FOnFetchedRecord
      write FOnFetchedRecord;
    property OnSkippedRecord: TQRecordExportedEvent read FOnSkippedRecord
      write FOnSkippedRecord;
    property OnBeforeExportRow: TQBeforeExportRowEvent read FOnBeforeExportRow
      write FOnBeforeExportRow;
    property OnBeforeExportXLSRow: TQBeforeExportXLSRowEvent
      read FOnBeforeExportXLSRow write FOnBeforeExportXLSRow;
    property OnExportedRecord: TQRecordExportedEvent read FOnExportedRecord
      write FOnExportedRecord;
    property OnExportedRecordXLS: TQRecordExportedXLSEvent
      read FOnExportedRecordXLS write FOnExportedRecordXLS;
    property OnStopExport: TQExportStopEvent read FOnStopExport
      write FOnStopExport;
    property OnGetExportText: TQGetExportTextEvent read FOnGetExportText
      write FOnGetExportText;
    property OnGetExportXLSText: TQGetExportXLSTextEvent
      read FOnGetExportXLSText write FOnGetExportXLSText;
  end;

implementation

uses QExportConsts, SysUtils, QExportBIFF, QExportXLSColorEditor,
  IniFiles;

const
  ExportTypeString: array[0..14] of string =
    (QED_ExportType_XLS, QED_ExportType_Access, QED_ExportType_DOC,
     QED_ExportType_RTF, QED_ExportType_HTML, QED_ExportType_XML,
     QED_ExportType_DBF, QED_ExportType_PDF, QED_ExportType_TXT,
     QED_ExportType_CSV, QED_ExportType_DIFF, QED_ExportType_SYLK,
     QED_ExportType_LaTeX, QED_ExportType_SQL, QED_ExportType_Clipboard);
  ExportTypeExtension: array[0..14] of string =
    ('xls', 'mdb', 'doc', 'rtf', 'html', 'xml', 'dbf', 'pdf', 'txt', 'csv',
     'dif', 'slk', 'tex', 'sql', '');
  ExportTypeFilter: array[0..14] of string =
    (SMSExcelFilter, SMSAccessFilter, SMSWordFilter, SRTFFilter, SHTMLFilter,
     SXMLFilter, SDBFFilter, SPDFFilter, STextFilter, SCSVFilter, SDIFFFilter,
     SSYLKFilter, SLaTeXFilter, SSQLFilter, '');

{$R *.DFM}

{ TADO_QExportDialog }

constructor TADO_QExportDialog.Create(AOwner: TComponent);
begin
  inherited;
  FColumns := TQExportColumns.Create(Self, nil);

  FExportSource := esDataSet;

  FAllowedExports := [Low(TAllowedExport)..High(TAllowedExport)];
  FCommonOptions := [Low(TCommonOption)..High(TCommonOption)];
  FAutoChangeFileExt := true;
  FConfirmAbort := true;
  FOnlyVisibleFields := false;
  FAutoCalcStrType := false;

  FAutoSaveOptions := false;
  FAutoLoadOptions := false;
  FSaveLoadButtons := false;

  FShowFile := true;
  FPrintFile := false;

  FExportedFields := TStringList.Create;

  FHeader := TStringList.Create;
  FAllowCaptions := true;
  FCaptionRow := -1;
  FCaptions := TStringList.Create;
  FFooter := TStringList.Create;
  FFormats := TQExportFormats.Create;
  FUserFormats := TStringList.Create;
  FColumnsWidth := TStringList.Create;
  FColumnsAlign := TStringList.Create;

  FCurrentRecordOnly := false;
  FExportEmpty := true;
  FGoToFirstRecord := true;
  FExportRecCount := 0;
  FSkipRecCount := 0;

  FRTFOptions := TQExportRTFOptions.Create(Self);
  FXMLOptions := TQExportXMLOptions.Create(Self);
  FSQLOptions := TQExportSQLOptions.Create(Self);
  FHTMLPageOptions := TQExportHTMLPageOptions.Create(Self);
  FHTMLTableOptions := TQExportHTMLTableOptions.Create(Self);
  FHTMLMultiFileOptions := TQExportHTMLMultiFileOptions.Create(Self);
  FTXTOptions := TQExportTXTOptions.Create(Self);
  FCSVOptions := TQExportCSVOptions.Create(Self);
  FPDFOptions := TQExportPDFOptions.Create(Self);
  FAccessOptions := TQExportAccessOptions.Create(Self);
  FXLSOptions := TQExportXLSOptions.Create(Self);
end;

destructor TADO_QExportDialog.Destroy;
begin
  FRTFOptions.Free;
  FXMLOptions.Free;
  FSQLOptions.Free;
  FHTMLPageOptions.Free;
  FHTMLTableOptions.Free;
  FHTMLMultiFileOptions.Free;
  FTXTOptions.Free;
  FCSVOptions.Free;
  FPDFOptions.Free;
  FAccessOptions.Free;
  FXLSOptions.Free;

  FColumns.Free;
  FExportedFields.Free;
  FHeader.Free;
  FCaptions.Free;
  FFooter.Free;
  FFormats.Free;
  FUserFormats.Free;
  FColumnsWidth.Free;
  FColumnsAlign.Free;
  inherited;
end;

procedure TADO_QExportDialog.Execute;
var
  F: TADO_QExportDialogF;
begin
  if ((ExportSource = esDataSet) and not Assigned(DataSet)) or
     ((ExportSource = esDBGrid) and not Assigned(DBGrid)) or
     ((ExportSource = esListView) and not Assigned(ListView)) or
     ((ExportSource = esStringGrid) and not Assigned(StringGrid))
    then raise Exception.CreateFmt(QEM_ExportSourceNotAssigned,
      [QExportSourceAsString(ExportSource)]);
  if AllowedExports = [] then
    raise Exception.Create(QEM_AllowedExportsEmpty);

  FColumns.Clear;
  FColumns.Fill(true);

  F := TADO_QExportDialogF.Create(Self);
  try
    F.ShowModal;
  finally
    F.Free;
  end;
end;

procedure TADO_QExportDialog.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited;
  if (Operation = opRemove) then begin
    if AComponent = FDataSet then FDataSet := nil;
    if AComponent = FListView then FListView := nil;
    if AComponent = FDBGrid then FDBGrid := nil;
    if AComponent = FStringGrid then FStringGrid := nil;
  end;
end;

procedure TADO_QExportDialog.SetExportedFields(const Value: TStrings);
begin
  FExportedFields.Assign(Value);
end;

procedure TADO_QExportDialog.SetHeader(const Value: TStrings);
begin
  FHeader.Assign(Value);
end;

procedure TADO_QExportDialog.SetCaptions(const Value: TStrings);
begin
  FCaptions.Assign(Value);
end;

procedure TADO_QExportDialog.SetFooter(const Value: TStrings);
begin
  FFooter.Assign(Value);
end;

procedure TADO_QExportDialog.SetFormats(const Value: TQExportFormats);
begin
  FFormats.Assign(Value);
end;

procedure TADO_QExportDialog.SetUserFormats(const Value: TStrings);
begin
  FUserFormats.Assign(Value);
end;

procedure TADO_QExportDialog.SetColumnsWidth(const Value: TStrings);
begin
  FColumnsWidth.Assign(Value);
end;

procedure TADO_QExportDialog.SetColumnsAlign(const Value: TStrings);
begin
  FColumnsAlign.Assign(Value);
end;

procedure TADO_QExportDialog.SetRTFOptions(const Value: TQExportRTFOptions);
begin
  FRTFOptions.Assign(Value);
end;

procedure TADO_QExportDialog.SetXMLOptions(const Value: TQExportXMLOptions);
begin
  FXMLOptions.Assign(Value);
end;

procedure TADO_QExportDialog.SetSQLOptions(const Value: TQExportSQLOptions);
begin
  FSQLOptions.Assign(Value);
end;

procedure TADO_QExportDialog.SetHTMLPageOptions(
  const Value: TQExportHTMLPageOptions);
begin
  FHTMLPageOptions.Assign(Value);
end;

procedure TADO_QExportDialog.SetHTMLTableOptions(
  const Value: TQExportHTMLTableOptions);
begin
  FHTMLTableOptions.Assign(Value);
end;

procedure TADO_QExportDialog.SetHTMLMultiFileOptions(
  const Value: TQExportHTMLMultiFileOptions);
begin
  FHTMLMultiFileOptions.Assign(Value);
end;

procedure TADO_QExportDialog.SetTXTOptions(const Value: TQExportTXTOptions);
begin
  FTXTOptions.Assign(Value);
end;

procedure TADO_QExportDialog.SetCSVOptions(const Value: TQExportCSVOptions);
begin
  FCSVOptions.Assign(Value);
end;

procedure TADO_QExportDialog.SetPDFOptions(const Value: TQExportPDFOptions);
begin
  FPDFOptions.Assign(Value);
end;

procedure TADO_QExportDialog.SetAccessOptions(const Value: TQExportAccessOptions);
begin
  FAccessOptions.Assign(Value);
end;

procedure TADO_QExportDialog.SetXLSOptions(const Value: TQExportXLSOptions);
begin
  FXLSOptions.Assign(Value);
end;

{ TQExportDialogF }

function TADO_QExportDialogF.GetDialog: TADO_QExportDialog;
begin
  Result := Owner as TADO_QExportDialog;
end;

function TADO_QExportDialogF.GetDataSet: TDataSet;
begin
  Result := Dialog.DataSet;
end;

function TADO_QExportDialogF.GetListView: TListView;
begin
  Result := Dialog.ListView;
end;

function TADO_QExportDialogF.GetDBGrid: TDBGrid;
begin
  Result := Dialog.DBGrid;
end;

function TADO_QExportDialogF.GetStringGrid: TStringGrid;
begin
  Result := Dialog.StringGrid;
end;

function TADO_QExportDialogF.GetAutoChangeFileExt: boolean;
begin
  Result := Dialog.AutoChangeFileExt;
end;

function TADO_QExportDialogF.GetSaveLoadButtons: boolean;
begin
  Result := Dialog.SaveLoadButtons;
end;

function TADO_QExportDialogF.GetCommonOptions: TCommonOptions;
begin
  Result := Dialog.CommonOptions;
end;

function TADO_QExportDialogF.GetConfirmAbort: boolean;
begin
  Result := Dialog.ConfirmAbort;
end;

function TADO_QExportDialogF.GetAutoSaveOptions: boolean;
begin
  Result := Dialog.AutoSaveOptions;
end;

function TADO_QExportDialogF.GetAutoLoadOptions: boolean;
begin
  Result := Dialog.AutoLoadOptions;
end;

function TADO_QExportDialogF.GetExportSource: TQExportSource;
begin
  Result := Dialog.ExportSource;
end;

procedure TADO_QExportDialogF.SetFileName(const Value: string);
begin
  if FFileName <> Value then begin
    FFileName := Value;
    edFileName.Text := FFileName;
    ShowTitle;
  end;
end;

procedure TADO_QExportDialogF.SetShowFile(const Value: boolean);
begin
  if FShowFile <> Value then begin
    FShowFile := Value;
    chShowFile.Checked := FShowFile;
  end;
end;

procedure TADO_QExportDialogF.SetPrintFile(const Value: boolean);
begin
  if FPrintFile <> Value then begin
    FPrintFile := Value;
    chPrintFile.Checked := FPrintFile;
  end;
end;

function TADO_QExportDialogF.GetExportType: TAllowedExport;
begin
  Result :=
    TAllowedExport(Integer(rgExportType.Items.Objects[rgExportType.ItemIndex]));
end;


procedure TADO_QExportDialogF.SetExportType(const Value: TAllowedExport);
var
  i: integer;
begin
  for i := 0 to rgExportType.Items.Count - 1 do
    if Integer(rgExportType.Items.Objects[i]) = Integer(Value) then begin
      rgExportType.ItemIndex := i;
      Break;
    end;
end;

procedure TADO_QExportDialogF.SetOptionsFileName(const Value: string);
begin
  if AnsiCompareText(FOptionsFileName, Value) <> 0 then begin
    FOptionsFileName := Value;
    odOptions.FileName := FOptionsFileName;
    sdOptions.FileName := FOptionsFileName;
  end;
end;

procedure TADO_QExportDialogF.SetGoToFirstRecord(const Value: boolean);
begin
  if FGoToFirstRecord <> Value then begin
    FGoToFirstRecord := Value;
    chGoToFirstRecord.Checked := FGoToFirstRecord;
  end;
end;

procedure TADO_QExportDialogF.SetCurrentRecordOnly(const Value: boolean);
begin
  if FCurrentRecordOnly <> Value then begin
    FCurrentRecordOnly := Value;
    chCurrentRecordOnly.Checked := FCurrentRecordOnly;
  end;
end;

procedure TADO_QExportDialogF.SetExportEmpty(const Value: boolean);
begin
  if FExportEmpty <> Value then begin
    FExportEmpty := Value;
    chExportEmpty.Checked := FExportEmpty;
  end;
end;

procedure TADO_QExportDialogF.SetExportRecCount(const Value: integer);
begin
  if FExportRecCount <> Value then begin
    FExportRecCount := Value;
    edExportRecCount.Text := IntToStr(FExportRecCount);
    if FExportRecCount > 0 then rbExportOnly.Checked := true;
  end;
end;

procedure TADO_QExportDialogF.SetSkipRecCount(const Value: integer);
begin
  if FSkipRecCount <> Value then begin
    FSkipRecCount := Value;
    edSkipRecCount.Text := IntToStr(FSkipRecCount);
  end;
end;

procedure TADO_QExportDialogF.SetAllowCaptions(const Value: boolean);
begin
  if FAllowCaptions <> Value then begin
    FAllowCaptions := Value;
    chAllowCaptions.Checked := FAllowCaptions;
  end;
end;

procedure TADO_QExportDialogF.SetCaptionRow(const Value: integer);
begin
  if FCaptionRow <> Value then begin
    FCaptionRow := Value;
    edCaptionRow.Text := IntToStr(FCaptionRow);
  end;
end;

procedure TADO_QExportDialogF.SetIntegerFmt(const Value: string);
begin
  if FIntegerFmt <> Value then begin
    FIntegerFmt := Value;
    edIntegerFormat.Text := FIntegerFmt;
  end;
end;

procedure TADO_QExportDialogF.SetFloatFmt(const Value: string);
begin
  if FFloatFmt <> Value then begin
    FFloatFmt := Value;
    edFloatFormat.Text := FFloatFmt;
  end;
end;

procedure TADO_QExportDialogF.SetDateFmt(const Value: string);
begin
  if FDateFmt <> Value then begin
    FDateFmt := Value;
    edDateFormat.Text := FDateFmt;
  end;
end;

procedure TADO_QExportDialogF.SetTimeFmt(const Value: string);
begin
  if FTimeFmt <> Value then begin
    FTimeFmt := Value;
    edTimeFormat.Text := FTimeFmt;
  end;
end;

procedure TADO_QExportDialogF.SetDateTimeFmt(const Value: string);
begin
  if FDateTimeFmt <> Value then begin
    FDateTimeFmt := Value;
    edDateTimeFormat.Text := FDateTimeFmt;
  end;
end;

procedure TADO_QExportDialogF.SetCurrencyFmt(const Value: string);
begin
  if FCurrencyFmt <> Value then begin
    FCurrencyFmt := Value;
    edCurrencyFormat.Text := FCurrencyFmt;
  end;
end;

procedure TADO_QExportDialogF.SetBooleanTrue(const Value: string);
begin
  if FBooleanTrue <> Value then begin
    FBooleanTrue := Value;
    edBooleanTrue.Text := FBooleanTrue;
  end;
end;

procedure TADO_QExportDialogF.SetBooleanFalse(const Value: string);
begin
  if FBooleanFalse <> Value then begin
    FBooleanFalse := Value;
    edBooleanFalse.Text := FBooleanFalse;
  end;
end;

procedure TADO_QExportDialogF.SetNullString(const Value: string);
begin
  if FNullString <> Value then begin
    FNullString := Value;
    edNullString.Text := FNullString;
    edSQLNullString.Text := FNullString;
  end;
end;

procedure TADO_QExportDialogF.SetRTFPageOrientation(
  const Value: TQExportPageOrientation);
begin
  if FRTFPageOrientation <> Value then begin
    FRTFPageOrientation := Value;
    rgRTFPageOrientation.ItemIndex := Integer(FRTFPageOrientation);
  end;
end;

procedure TADO_QExportDialogF.SetXLSPageHeader(const Value: string);
begin
  if FXLSPageHeader <> Value then begin
    FXLSPageHeader := Value;
    edXLSPageHeader.Text := FXLSPageHeader;
  end;
end;

procedure TADO_QExportDialogF.SetXLSPageFooter(const Value: string);
begin
  if FXLSPageFooter <> Value then begin
    FXLSPageFooter := Value;
    edXLSPageFooter.Text := FXLSPageFooter;
  end;
end;

procedure TADO_QExportDialogF.SetXLSSheetTitle(const Value: string);
begin
  if FXLSSheetTitle <> Value then begin
    FXLSSheetTitle := Value;
    edXLSSheetTitle.Text := FXLSSheetTitle;
  end;
end;

procedure TADO_QExportDialogF.SetXLSStripType(const Value: TxlsStripType);
begin
  if FXLSStripType <> Value then begin
    FXLSStripType := Value;
    rgXLSStripType.ItemIndex := Integer(FXLSStripType);
  end;
end;

procedure TADO_QExportDialogF.SetXLSAutoCalcColWidth(const Value: boolean);
begin
  if FXLSAutoCalcColWidth <> Value then begin
    FXLSAutoCalcColWidth := Value;
    chXLSAutoCalcColWidth.Checked := FXLSAutoCalcColWidth;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLTitle(const Value: string);
begin
  if FHTMLTitle <> Value then begin
    FHTMLTitle := Value;
    edHTMLTitle.Text := FHTMLTitle;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLUsingCSS(const Value: TUsingCSS);
begin
  if FHTMLUsingCSS <> Value then begin
    FHTMLUsingCSS := Value;
    case FHTMLUsingCSS of
      usInternal: rbInternal.Checked := true;
      usExternal: rbExternal.Checked := true;
    end;
    edHTMLCSSFileName.Enabled := FHTMLUsingCSS = usExternal;
    laHTMLCSSFileName.Enabled := FHTMLUsingCSS = usExternal;
    btnHTMLCSSFileName.Enabled := FHTMLUsingCSS = usExternal;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLCSSFileName(const Value: string);
begin
  if FHTMLCSSFileName <> Value then begin
    FHTMLCSSFileName := Value;
    edHTMLCSSFileName.Text := FHTMLCSSFileName;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLOverwriteCSSFile(const Value: boolean);
begin
  if FHTMLOverwriteCSSFile <> Value then begin
    FHTMLOverwriteCSSFile := Value;
    chHTMLOverwriteCSSFile.Checked := FHTMLOverwriteCSSFile;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLUseMultiFileExport(const Value: boolean);
begin
  if FHTMLUseMultiFileExport <> Value then begin
    FHTMLUseMultiFileExport := Value;
    chHTMLUseMultiFileExport.Checked := FHTMLUseMultiFileExport;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLFileRecCount(const Value: integer);
begin
  if FHTMLFileRecCount <> Value then begin
    FHTMLFileRecCount := Value;
    edHTMLFileRecCount.Text := IntToStr(FHTMLFileRecCount);
  end;
end;

procedure TADO_QExportDialogF.SetHTMLGenerateIndex(const Value: boolean);
begin
  if FHTMLGenerateIndex <> Value then begin
    FHTMLGenerateIndex := Value;
    chHTMLGenerateIndex.Checked := FHTMLGenerateIndex;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLIndexLinkTemplate(const Value: string);
begin
  if FHTMLIndexLinkTemplate <> Value then begin
    FHTMLIndexLinkTemplate := Value;
    edHTMLIndexLinkTemplate.Text := Value;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLNavigationOnTop(const Value: boolean);
begin
  if FHTMLNavigationOnTop <> Value then begin
    FHTMLNavigationOnTop := Value;
    chHTMLNavigationOnTop.Checked := Value;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLNavigationOnBottom(const Value: boolean);
begin
  if FHTMLNavigationOnBottom <> Value then begin
    FHTMLNavigationOnBottom := Value;
    chHTMLNavigationOnBottom.Checked := Value;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLIndexLinkTitle(const Value: string);
begin
  if FHTMLIndexLinkTitle <> Value then begin
    FHTMLIndexLinkTitle := Value;
    edHTMLIndexLinkTitle.Text := FHTMLIndexLinkTitle;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLFirstLinkTitle(const Value: string);
begin
  if FHTMLFirstLinkTitle <> Value then begin
    FHTMLFirstLinkTitle := Value;
    edHTMLFirstLinkTitle.Text := FHTMLFirstLinkTitle;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLPriorLinkTitle(const Value: string);
begin
  if FHTMLPriorLinkTitle <> Value then begin
    FHTMLPriorLinkTitle := Value;
    edHTMLPriorLinkTitle.Text := FHTMLPriorLinkTitle;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLNextLinkTitle(const Value: string);
begin
  if FHTMLNextLinkTitle <> Value then begin
    FHTMLNextLinkTitle := Value;
    edHTMLNextLinkTitle.Text := FHTMLNextLinkTitle;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLLastLinkTitle(const Value: string);
begin
  if FHTMLLastLinkTitle <> Value then begin
    FHTMLLastLinkTitle := Value;
    edHTMLLastLinkTitle.Text := FHTMLLastLinkTitle;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLFontName(const Value: string);
begin
  if FHTMLFontName <> Value then begin
    FHTMLFontName := Value;
    cbxHTMLFontName.Text := FHTMLFontName;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLBackground(const Value: string);
begin
  if FHTMLBackground <> Value then begin
    FHTMLBackground := Value;
    edHTMLBackground.Text := FHTMLBackground;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLBodyAdvanced(const Value: string);
begin
  if FHTMLBodyAdvanced <> Value then begin
    FHTMLBodyAdvanced := Value;
    edHTMLBodyAdvanced.Text := FHTMLBodyAdvanced;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLCellPadding(const Value: integer);
begin
  if FHTMLCellPadding <> Value then begin
    FHTMLCellPadding := Value;
    edHTMLCellPadding.Text := IntToStr(FHTMLCellPadding);
  end;
end;

procedure TADO_QExportDialogF.SetHTMLCellSpacing(const Value: integer);
begin
  if FHTMLCellSpacing <> Value then begin
    FHTMLCellSpacing := Value;
    edHTMLCellSpacing.Text := IntToStr(FHTMLCellSpacing);
  end;
end;

procedure TADO_QExportDialogF.SetHTMLBorderWidth(const Value: integer);
begin
  if FHTMLBorderWidth <> Value then begin
    FHTMLBorderWidth := Value;
    edHTMLBorderWidth.Text := IntToStr(FHTMLBorderWidth);
  end;
end;

procedure TADO_QExportDialogF.SetHTMLTableBackground(const Value: string);
begin
  if FHTMLTableBackground <> Value then begin
    FHTMLTableBackground := Value;
    edHTMLTableBackground.Text := FHTMLTableBackground;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLTableAdvanced(const Value: string);
begin
  if FHTMLTableAdvanced <> Value then begin
    FHTMLTableAdvanced := Value;
    edHTMLTableAdvanced.Text := FHTMLTableAdvanced;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLBackgroundColor(const Value: TColor);
begin
  if FHTMLBackgroundColor <> Value then begin
    FHTMLBackgroundColor := Value;
    paHTMLBackground.Color := FHTMLBackgroundColor;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLFontColor(const Value: TColor);
begin
  if FHTMLFontColor <> Value then begin
    FHTMLFontColor := Value;
    laHTMLFont.Font.Color := FHTMLFontColor;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLHeadBackgroundColor(const Value: TColor);
var
  i: integer;
begin
  if FHTMLHeadBackgroundColor <> Value then begin
    FHTMLHeadBackgroundColor := Value;
    for i := 1 to 3 do
      (FindComponent('paHTMLColumnHead_' + IntToStr(i)) as TPanel).Color :=
        FHTMLHeadBackgroundColor;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLHeadFontColor(const Value: TColor);
var
  i: integer;
begin
  if FHTMLHeadFontColor <> Value then begin
    FHTMLHeadFontColor := Value;
    for i := 1 to 3 do
      (FindComponent('laHTMLHead_' + IntToStr(i)) as TLabel).Font.Color :=
        FHTMLHeadFontColor;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLOddRowBackgroundColor(
  const Value: TColor);
var
  i: integer;
begin
  if FHTMLOddRowBackgroundColor <> Value then begin
    FHTMLOddRowBackgroundColor := Value;
    for i := 1 to 6 do
      (FindComponent('paHTMLOddRowCol_' + IntToStr(i)) as TPanel).Color :=
        FHTMLOddRowBackgroundColor;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLEvenRowBackgroundColor(
  const Value: TColor);
var
  i: integer;
begin
  if FHTMLEvenRowBackgroundColor <> Value then begin
    FHTMLEvenRowBackgroundColor := Value;
    for i := 1 to 6 do
      (FindComponent('paHTMLEvenRowCol_' + IntToStr(i)) as TPanel).Color :=
        FHTMLEvenRowBackgroundColor;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLDataFontColor(const Value: TColor);
var
  i: integer;
begin
  if FHTMLDataFontColor <> Value then begin
    FHTMLDataFontColor := Value;
    for i := 1 to 12 do
      (FindComponent(Format('laHTMLData_%d',[i])) as TLabel).Font.Color :=
        FHTMLDataFontColor;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLLinkColor(const Value: TColor);
begin
  if FHTMLLinkColor <> Value then begin
    FHTMLLinkColor := Value;
    laHTMLLink.Font.Color := FHTMLLinkColor;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLVLinkColor(const Value: TColor);
begin
  if FHTMLVLinkColor <> Value then begin
    FHTMLVLinkColor := Value;
    laHTMLVLink.Font.Color := FHTMLVLinkColor;
  end;
end;

procedure TADO_QExportDialogF.SetHTMLALinkColor(const Value: TColor);
begin
  if FHTMLALinkColor <> Value then begin
    FHTMLALinkColor := Value;
    laHTMLALink.Font.Color := FHTMLALinkColor;
  end;
end;

procedure TADO_QExportDialogF.SetXMLStandalone(const Value: boolean);
begin
  if FXMLStandalone <> Value then begin
    FXMLStandalone := Value;
    chXMLStandalone.Checked := FXMLStandalone;
  end;
end;

procedure TADO_QExportDialogF.SetXMLEncoding(const Value: string);
begin
  if AnsiCompareText(FXMLEncoding, Value) <> 0 then begin
    FXMLEncoding := Value;
    edXMLEncoding.Text := FXMLEncoding;
  end;
end;

procedure TADO_QExportDialogF.SetSQLTableName(const Value: string);
begin
  if FSQLTableName <> Value then begin
    FSQLTableName := Value;
    edSQLTableName.Text := FSQLTableName;
  end;
end;

procedure TADO_QExportDialogF.SetSQLCreateTable(const Value: boolean);
begin
  if FSQLCreateTable <> Value then begin
    FSQLCreateTable := Value;
    chSQLCreateTable.Checked := FSQLCreateTable;
  end;
end;

procedure TADO_QExportDialogF.SetSQLCommitRecCount(const Value: integer);
begin
  if FSQLCommitRecCount <> Value then begin
    FSQLCommitRecCount := Value;
    edSQLCommitRecCount.Text := IntToStr(FSQLCommitRecCount);
  end;
end;

procedure TADO_QExportDialogF.SetSQLCommitAfterScript(const Value: boolean);
begin
  if FSQLCommitAfterScript <> Value then begin
    FSQLCommitAfterScript := Value;
    chSQLCommitAfterScript.Checked := FSQLCommitAfterScript;
  end;
end;

procedure TADO_QExportDialogF.SetSQLCommitStatement(const Value: string);
begin
  if AnsiCompareStr(FSQLCommitStatement, Value) <> 0 then begin
    FSQLCommitStatement := Value;
    edSQLCommitStatement.Text := FSQLCommitStatement;
  end;
end;

procedure TADO_QExportDialogF.SetSQLStatementTerm(const Value: string);
begin
  if AnsiCompareStr(FSQLStatementTerm, Value) <> 0 then begin
    FSQLStatementTerm := Value;
    edSQLStatementTerm.Text := FSQLStatementTerm;
  end;
end;

procedure TADO_QExportDialogF.SetTXTAutoCalcColWidth(const Value: boolean);
begin
  if FTXTAutoCalcColWidth <> Value then begin
    FTXTAutoCalcColWidth := Value;
    chTXTAutoCalcColWidth.Checked := FTXTAutoCalcColWidth;
  end;
end;

procedure TADO_QExportDialogF.SetTXTSpacing(const Value: integer);
begin
  if FTXTSpacing <> Value then begin
    FTXTSpacing := Value;
    edTXTSpacing.Text := IntToStr(FTXTSpacing);
  end;
end;

procedure TADO_QExportDialogF.SetCSVQuoteStrings(const Value: boolean);
begin
  if FCSVQuoteStrings <> Value then begin
    FCSVQuoteStrings := Value;
    chCSVQuoteStrings.Checked := FCSVQuoteStrings;
  end;
end;

procedure TADO_QExportDialogF.SetCSVComma(const Value: char);
begin
  if FCSVComma <> Value then begin
    FCSVComma := Value;
    edCSVComma.Text := Char2Str(FCSVComma);
  end;
end;

procedure TADO_QExportDialogF.SetCSVQuote(const Value: char);
begin
  if FCSVQuote <> Value then begin
    FCSVQuote := Value;
    edCSVQuote.Text := Char2Str(FCSVQuote);
  end;
end;

procedure TADO_QExportDialogF.SetAccessTableName(const Value: string);
begin
  if FAccessTableName <> Value then begin
    FAccessTableName := Value;
    edAccessTableName.Text := FAccessTableName;
  end;
end;

procedure TADO_QExportDialogF.SetAccessCreateTable(const Value: boolean);
begin
  if FAccessCreateTable <> Value then begin
    FAccessCreateTable := Value;
    chAccessCreateTable.Checked := FAccessCreateTable;
  end;
end;

procedure TADO_QExportDialogF.InitializeDialog;
begin
  Pages.ActivePage := tshExportType;
  pcExportType.ActivePage := tshExportFormats;

  ActiveControl := edFileName;

  tshExportOptions.TabVisible := coOptions in CommonOptions;
  FillFields;
  ResetStandardFormats;

  memHeader.Lines.Assign(Dialog.Header);
  if Assigned(Dialog.OnGetHeader) then Dialog.OnGetHeader(Self, memHeader.Lines);
  memFooter.Lines.Assign(Dialog.Footer);
  if Assigned(Dialog.OnGetFooter) then Dialog.OnGetFooter(Self, memFooter.Lines);

  SetCaptions;

  FileName := Dialog.FileName;
  ShowFile := Dialog.ShowFile;
  PrintFile := Dialog.PrintFile;
  OptionsFileName := Dialog.OptionsFileName;
  GoToFirstRecord := Dialog.GoToFirstRecord;
  CurrentRecordOnly := Dialog.CurrentRecordOnly;
  ExportEmpty := Dialog.ExportEmpty;
  ExportRecCount := Dialog.ExportRecCount;
  SkipRecCount := Dialog.SkipRecCount;
  FillAllowedExports;

  rgExportType.OnClick(nil);

  rbExportOnly.Checked := Dialog.ExportRecCount > 0;

  miSaveOptions.Enabled := SaveLoadButtons;
  miSaveOptions.Visible := SaveLoadButtons;
  miLoadOptions.Enabled := SaveLoadButtons;
  miLoadOptions.Visible := SaveLoadButtons;
  bTools.Enabled := (miSaveOptions.Enabled or miLoadOptions.Enabled);
  bTools.Visible := (miSaveOptions.Visible or miLoadOptions.Visible);

  cbxFormatFields.OnChange(nil);

  // Captions
  AllowCaptions := Dialog.AllowCaptions;
  FCaptionRow := -1;
  CaptionRow := Dialog.CaptionRow;
  laCaptionRow.Visible := Assigned(Dialog.StringGrid) and
    (Dialog.ExportSource = esStringGrid);
  edCaptionRow.Visible := laCaptionRow.Visible;
  if laCaptionRow.Visible and (CaptionRow > -1) then LoadStringGridCaption;

  // RTF
  RTFPageOrientation := Dialog.RTFOptions.PageOrientation; //RTFExp.Options.PageOrientation;
  RTFExp.Options.DefaultFont.Assign(Dialog.RTFOptions.DefaultFont);
  RTFExp.Options.HeaderFont.Assign(Dialog.RTFOptions.HeaderFont);
  rgRTFPageOrientation.ItemIndex := Integer(RTFPageOrientation);

  // XLS
  pcXLS.ActivePage := tshXLSDataFormat;
  pcXLSDataFormat.ActivePage := tshXLSFont;
  cbxXLSFont.Items.Assign(Screen.Fonts);
  XLSPageHeader := Dialog.XLSOptions.PageHeader; //XLSExp.Options.PageHeader;
  XLSPageFooter := Dialog.XLSOptions.PageFooter; //XLSExp.Options.PageFooter;
  XLSSheetTitle := Dialog.XLSOptions.SheetTitle; //XLSExp.Options.SheetTitle;
  XLSStripType := Dialog.XLSOptions.StripType; //XLSExp.StripType;
  XLSAutoCalcColWidth := Dialog.XLSOptions.AutoCalcColWidth; //XLSExp.AutoCalcColWidth;
  pcXLSFormats.ActivePage := tshXLSFields;
  XLSShowStyleButtons;

  // HTML
  pcHTML.ActivePage := tshHTMLPreview;
  cbxHTMLFontName.Items.Assign(Screen.Fonts);

  HTMLTitle := Dialog.HTMLPageOptions.Title; //HTMLExp.Title;
  HTMLBackgroundColor := Dialog.HTMLPageOptions.BackgroundColor;
  HTMLFontName := Dialog.HTMLPageOptions.TextFont.Name; //HTMLExp.HTMLOptions.TextFont.Name;
  HTMLLinkColor := Dialog.HTMLPageOptions.LinkColor;
  HTMLVLinkColor := Dialog.HTMLPageOptions.VLinkColor;
  HTMLALinkColor := Dialog.HTMLPageOptions.ALinkColor;
  HTMLBackground := Dialog.HTMLPageOptions.BackgroundFileName; //HTMLExp.HTMLOptions.BackgroundFileName;
  HTMLBodyAdvanced := Dialog.HTMLPageOptions.AdvancedAttributes.Text; //HTMLExp.HTMLOptions.AdvancedAttributes.Text;
  HTMLUsingCSS := Dialog.HTMLPageOptions.UsingCSS; //HTMLExp.UsingCSS;
  HTMLCSSFileName := Dialog.HTMLPageOptions.CSSFileName; //HTMLExp.CSSFileName;
  HTMLOverwriteCSSFile := Dialog.HTMLPageOptions.OverwriteCSSFile;

  HTMLUseMultiFileExport := Dialog.HTMLMultiFileOptions.FileRecCount > 0; //HTMLExp.MaxRecords > 0;
  HTMLFileRecCount := Dialog.HTMLMultiFileOptions.FileRecCount; //HTMLExp.MaxRecords;
  HTMLGenerateIndex := Dialog.HTMLMultiFileOptions.GenerateIndex; //HTMLExp.GenerateIndex;

  HTMLIndexLinkTemplate := Dialog.HTMLMultiFileOptions.IndexLinkTemplate; //HTMLExp.Navigation.IndexLinkTemplate;
  HTMLNavigationOnTop := Dialog.HTMLMultiFileOptions.NavigationOnTop; //HTMLExp.Navigation.OnTop;
  HTMLNavigationOnBottom := Dialog.HTMLMultiFileOptions.NavigationOnBottom; //HTMLExp.Navigation.OnBottom;
  HTMLIndexLinkTitle := Dialog.HTMLMultiFileOptions.IndexLinkTitle; //HTMLExp.Navigation.IndexLinkTitle;
  HTMLFirstLinkTitle := Dialog.HTMLMultiFileOptions.FirstLinkTitle; //HTMLExp.Navigation.FirstLinkTitle;
  HTMLPriorLinkTitle := Dialog.HTMLMultiFileOptions.PriorLinkTitle; //HTMLExp.Navigation.PriorLinkTitle;
  HTMLNextLinkTitle := Dialog.HTMLMultiFileOptions.NextLinkTitle; //HTMLExp.Navigation.NextLinkTitle;
  HTMLLastLinkTitle := Dialog.HTMLMultiFileOptions.LastLinkTitle; //HTMLExp.Navigation.LastLinkTitle;
  HTMLUpdateMultifileControls;

  HTMLBorderWidth := Dialog.HTMLTableOptions.BorderWidth; //HTMLExp.TableOptions.Border;
  HTMLCellPadding := Dialog.HTMLTableOptions.CellPadding; //HTMLExp.TableOptions.CellPadding;
  HTMLCellSpacing := Dialog.HTMLTableOptions.CellSpacing; //HTMLExp.TableOptions.CellSpacing;
  HTMLTableAdvanced := Dialog.HTMLTableOptions.AdvancedAttributes.Text; //HTMLExp.TableOptions.AdvancedAttributes.Text;
  HTMLHeadBackgroundColor := Dialog.HTMLTableOptions.HeadersRowBgColor;
  HTMLHeadFontColor := Dialog.HTMLTableOptions.HeadersRowFontColor;
  HTMLEvenRowBackgroundColor := Dialog.HTMLTableOptions.TableBgColor;
  HTMLDataFontColor := Dialog.HTMLTableOptions.TableFontColor;
  HTMLOddRowBackgroundColor := Dialog.HTMLTableOptions.OddRowBgColor;
  HTMLTableBackground := Dialog.HTMLTableOptions.BackgroundFileName;

  HTMLFillColors;

  cbxHTMLTemplate.ItemIndex := Integer(HTMLExp.HTMLTemplate);
  cbxHTMLTemplate.OnChange(nil);

  // XML
  XMLStandAlone := Dialog.XMLOptions.Standalone; //XMLExp.Options.StandAlone;
  XMLEncoding := Dialog.XMLOptions.Encoding; //XMLExp.Options.Encoding;

  // SQL
  SQLTableName := Dialog.SQLOptions.TableName; //SQLExp.TableName;
  SQLCreateTable := Dialog.SQLOptions.CreateTable; //SQLExp.CreateTable;
  SQLCommitRecCount := Dialog.SQLOptions.CommitRecCount; //SQLExp.CommitRecCount;
  SQLCommitAfterScript := Dialog.SQLOptions.CommitAfterScript; //SQLExp.CommitAfterScript;
  SQLCommitStatement := Dialog.SQLOptions.CommitStatement; //SQLExp.CommitStatement;
  SQLStatementTerm := Dialog.SQLOptions.StatementTerm; //SQLExp.StatementTerm;

  // ASCII
  TXTAutoCalcColWidth := Dialog.TXTOptions.AutoCalcColWidth; //ASCIIExp.AutoCalcColWidth;
  TXTSpacing := Dialog.TXTOptions.ColSpacing; //ASCIIExp.TXTSpacing;
  CSVQuoteStrings := Dialog.CSVOptions.QuoteStrings; //ASCIIExp.CSVQuoteStrings;
  CSVComma := Dialog.CSVOptions.Comma; //ASCIIExp.CSVComma;
  CSVQuote := Dialog.CSVOptions.Quote; //ASCIIExp.CSVQuote;

  // Access
  AccessTableName := Dialog.AccessOptions.TableName; //AccessExp.TableName;
  AccessCreateTable := Dialog.AccessOptions.CreateTable; //AccessExp.AutoCreateTable;

  // PDF
  PDFColSpacing := Dialog.PDFOptions.ColSpacing;
  PDFRowSpacing := Dialog.PDFOptions.RowSpacing;
  PDFGridLineWidth := Dialog.PDFOptions.GridLineWidth;

  PDFPageFormat := Dialog.PDFOptions.PageOptions.Format;
  PDFPageUnits := Dialog.PDFOptions.PageOptions.Units;
  PDFPageOrientation := Dialog.PDFOptions.PageOptions.Orientation;
  if PDFPageFormat = pfUser then begin
    FPDFPageWidth := Units2Dot(Dialog.PDFOptions.PageOptions.Units,
                               Dialog.PDFOptions.PageOptions.Width);
    FPDFPageHeight := Units2Dot(Dialog.PDFOptions.PageOptions.Units,
                                Dialog.PDFOptions.PageOptions.Height);
  end;
  FPDFPageMarginLeft := Units2Dot(Dialog.PDFOptions.PageOptions.Units,
                                  Dialog.PDFOptions.PageOptions.MarginLeft);
  FPDFPageMarginRight := Units2Dot(Dialog.PDFOptions.PageOptions.Units,
                                  Dialog.PDFOptions.PageOptions.MarginRight);
  FPDFPageMarginTop := Units2Dot(Dialog.PDFOptions.PageOptions.Units,
                                  Dialog.PDFOptions.PageOptions.MarginTop);
  FPDFPageMarginBottom := Units2Dot(Dialog.PDFOptions.PageOptions.Units,
                                  Dialog.PDFOptions.PageOptions.MarginBottom);

  edPDFPageWidth.Text := FormatFloat(GetPDFPageSizeFormat, PDFPageWidth);
  edPDFPageHeight.Text := FormatFloat(GetPDFPageSizeFormat, PDFPageHeight);
  edPDFPageMarginLeft.Text := FormatFloat(GetPDFPageSizeFormat, PDFPageMarginLeft);
  edPDFPageMarginRight.Text := FormatFloat(GetPDFPageSizeFormat, PDFPageMarginRight);
  edPDFPageMarginTop.Text := FormatFloat(GetPDFPageSizeFormat, PDFPageMarginTop);
  edPDFPageMarginBottom.Text := FormatFloat(GetPDFPageSizeFormat, PDFPageMarginBottom);

  FPDFFontItem := nil;
  PDFExp.Options.HeaderFont.Assign(Dialog.PDFOptions.HeaderFont);
  PDFExp.Options.CaptionFont.Assign(Dialog.PDFOptions.CaptionFont);
  PDFExp.Options.DataFont.Assign(Dialog.PDFOptions.DataFont);
  PDFExp.Options.FooterFont.Assign(Dialog.PDFOptions.FooterFont);
  PDFFillFontList;

  if AutoLoadOptions and (OptionsFileName <> EmptyStr)
    then LoadExportOptions(OptionsFileName);
end;

procedure TADO_QExportDialogF.ShowTitle;
begin
  Caption :=  QED_Title;
  if FileName <> EmptyStr
    then Caption := Format(QED_AdvancedTitle, [ExtractFileName(FileName)]);
end;

procedure TADO_QExportDialogF.ChangeFileExtension;
begin
  if not AutoChangeFileExt then Exit;
  if ExportType = aeClipboard then Exit;
  if FileName <> EmptyStr then
    FileName := ChangeFileExt(FileName, '.' +
      ExportTypeExtension[Integer(ExportType)]);
end;

procedure TADO_QExportDialogF.FillAllowedExports;
var
  i: integer;
begin
  rgExportType.Items.BeginUpdate;
  try
    rgExportType.Items.Clear;
    for i := Integer(Low(TAllowedExport)) to Integer(High(TAllowedExport)) do
      if TAllowedExport(i) in Dialog.AllowedExports then
        rgExportType.Items.AddObject(ExportTypeString[i], TObject(i));
    rgExportType.ItemIndex := 0;
  finally
    rgExportType.Items.EndUpdate;
  end;
end;

procedure TADO_QExportDialogF.ResetStandardFormats;
begin
  IntegerFmt := Dialog.Formats.IntegerFormat;
  FloatFmt := Dialog.Formats.FloatFormat;
  DateFmt := Dialog.Formats.DateFormat;
  TimeFmt := Dialog.Formats.TimeFormat;
  DateTimeFmt := Dialog.Formats.DateTimeFormat;
  CurrencyFmt := Dialog.Formats.CurrencyFormat;
  BooleanTrue := Dialog.Formats.BooleanTrue;
  BooleanFalse := Dialog.Formats.BooleanFalse;
  NullString := Dialog.Formats.NullString;
end;

procedure TADO_QExportDialogF.FillFields;
var
  i, j: Integer;
begin
  lstAvailableFields.Items.BeginUpdate;
  lstXLSFields.Items.BeginUpdate;
  lstXLSOptions.Items.BeginUpdate;
  try
    lstAvailableFields.Items.Clear;
    lstXLSFields.Items.Clear;
    for i := 0 to 3 do
      with lstXLSOptions.Items.Add do begin
        Data := TxlsFieldFormat.Create(nil);
        case i of
          0: begin
            Caption := QED_XLS_HEADER;
            TxlsFormat(Data).Assign(Dialog.XLSOptions.HeaderFormat);
          end;
          1: begin
            Caption := QED_XLS_CAPTION;
            TxlsFormat(Data).Assign(Dialog.XLSOptions.CaptionFormat);
          end;
          2: begin
            Caption := QED_XLS_AGGREGATE;
            TxlsFormat(Data).Assign(Dialog.XLSOptions.AggregateFormat);
          end;
          3: begin
            Caption := QED_XLS_FOOTER;
            TxlsFormat(Data).Assign(Dialog.XLSOptions.FooterFormat);
          end;
        end;
        ImageIndex := 3;
      end;

    for i := 0 to Dialog.Columns.Count - 1 do begin
      with lstAvailableFields.Items.Add do begin
        Caption := Dialog.Columns[i].Name;
        Data := Pointer(i);
        ImageIndex := 0;
      end;
      with lstXLSFields.Items.Add do begin
        Caption := Dialog.Columns[i].Name;
        Data := TxlsFieldFormat.Create(nil);
        TxlsFieldFormat(Data).FieldName := Dialog.Columns[i].Name;
        j := Dialog.XLSOptions.FieldFormats.IndexByName(Dialog.Columns[i].Name);
        if j > -1
          then TxlsFieldFormat(Data).Assign(Dialog.XLSOptions.FieldFormats[j])
          else TxlsFieldFormat(Data).Assign(Dialog.XLSOptions.DataFormat);

        //!!!
        if not Dialog.Columns[i].IsBlob
          then ImageIndex := 1
          else ImageIndex := 0;
      end;

      if Dialog.Columns[i].ColType in [ectInteger, ectBigint, ectFloat, ectCurrency,
           ectDate, ectTime, ectDateTime]
        then cbxFormatFields.Items.AddObject(Dialog.Columns[i].Name,
          Pointer(Integer(Dialog.Columns[i].ColType)));

      if Dialog.Columns[i].AllowFormat and
         not Dialog.Columns[i].IsDefaultFormat then
        with lstUserFormats.Items.Add do begin
          Caption := Dialog.Columns[i].Name;
          SubItems.Add('=');
          SubItems.Add(Dialog.Columns[i].Format);
          ImageIndex := 2;
        end;

      sgrCaptions.Cells[0, i + 1] := Dialog.Columns[i].Name;
      sgrCaptions.Cells[1, i + 1] := Dialog.Columns[i].Caption;
      sgrCaptions.RowCount := sgrCaptions.RowCount + 1;
    end;

    for i := 0 to Dialog.XLSOptions.StripStyles.Count - 1 do
      with lstXLSStyles.Items.Add do begin
        Caption := QED_XLS_StyleItem + IntToStr(lstXLSStyles.Items.Count);
        Data := TxlsFormat.Create(nil);
        TxlsFormat(Data).Assign(Dialog.XLSOptions.StripStyles[i]);
        ImageIndex := 2;
      end;

    if sgrCaptions.RowCount > 1 then
      sgrCaptions.RowCount := sgrCaptions.RowCount - 1;


    if lstAvailableFields.Items.Count > 0 then
      lstAvailableFields.Items[0].Selected := true;
    if lstXLSFields.Items.Count > 0 then begin
      lstXLSFields.Items[0].Focused := true;
      lstXLSFields.Items[0].Selected := true;
    end;
    if lstXLSOptions.Items.Count > 0 then begin
      lstXLSOptions.Items[0].Focused := true;
      lstXLSOptions.Items[0].Selected := true;
    end;
  finally
    lstXLSOptions.Items.EndUpdate;
    lstXLSFields.Items.EndUpdate;
    lstAvailableFields.Items.EndUpdate;
  end;
end;

procedure TADO_QExportDialogF.edFileNameChange(Sender: TObject);
begin
  FileName := edFileName.Text;
  ShowButtons;
end;

procedure TADO_QExportDialogF.bBrowseClick(Sender: TObject);
begin
  sdExportFile.FileName := FileName;
  if sdExportFile.Execute then FileName := sdExportFile.FileName;
end;

procedure TADO_QExportDialogF.FormCreate(Sender: TObject);
begin
  InitializeDialog;
end;

procedure TADO_QExportDialogF.FormShow(Sender: TObject);
begin
  ShowTitle;
end;

procedure TADO_QExportDialogF.rgExportTypeClick(Sender: TObject);
begin
  if ExportType <> aeClipboard then begin
    sdExportFile.Filter := ExportTypeFilter[Integer(ExportType)];
    sdExportFile.DefaultExt := ExportTypeExtension[Integer(ExportType)];
  end;
  ChangeFileExtension;

  if not IsCompatiblePage then Pages.ActivePage := tshExportType;

  bBrowse.Enabled := ExportType <> aeClipboard;
  laFileName.Enabled := ExportType <> aeClipboard;
  edFileName.Enabled := ExportType <> aeClipboard;
  chShowFile.Enabled := ExportType <> aeClipboard;

  tshHTML.TabVisible := ExportType = aeHTML;
  tshXLS.TabVisible := ExportType = aeXLS;
  tshSQL.TabVisible := ExportType = aeSQL;
  tshRTF.TabVisible := ExportType in [aeWord, aeRTF];
  tshXML.TabVisible := ExportType = aeXML;
  tshASCII.TabVisible := ExportType in [aeTXT, aeCSV];
  tshAccess.TabVisible := ExportType = aeAccess;
  tshPDF.TabVisible := ExportType = aePDF;

  tshFormats.TabVisible := (not (ExportType in [aeDBF, aeSQL, aeAccess])) and
    (coFormats in CommonOptions);
  tshFields.TabVisible := (coFields in CommonOptions);
  tshCaptions.TabVisible := (not (ExportType in [aeXML, aeDBF, aeSQL])) and
    (coCaptions in CommonOptions);
  tshHeaderFooter.TabVisible := (not (ExportType in [aeXML, aeDBF, aeAccess])) and
    (coColons in CommonOptions);
  ShowButtons;
  MakeStringGrid;
end;

procedure TADO_QExportDialogF.chShowFileClick(Sender: TObject);
begin
  ShowFile := chShowFile.Checked;
end;

procedure TADO_QExportDialogF.chPrintFileClick(Sender: TObject);
begin
  PrintFile := chPrintFile.Checked;
end;

procedure TADO_QExportDialogF.chGoToFirstRecordClick(Sender: TObject);
begin
  GoToFirstRecord := chGoToFirstRecord.Checked;
end;

procedure TADO_QExportDialogF.chCurrentRecordOnlyClick(Sender: TObject);
begin
  CurrentRecordOnly := chCurrentRecordOnly.Checked;
end;

procedure TADO_QExportDialogF.chExportEmptyClick(Sender: TObject);
begin
  ExportEmpty := chExportEmpty.Checked;
end;

procedure TADO_QExportDialogF.edExportRecCountChange(Sender: TObject);
begin
  try ExportRecCount := StrToInt(edExportRecCount.Text) except end;
end;

procedure TADO_QExportDialogF.edSkipRecCountChange(Sender: TObject);
begin
  try SkipRecCount := StrToInt(edSkipRecCount.Text) except end;
end;

procedure TADO_QExportDialogF.ShowButtons;
begin
  bStart.Enabled := (FileName <> EmptyStr) or (ExportType = aeClipboard);
end;

procedure TADO_QExportDialogF.MakeStringGrid;
var
  i, j: integer;
begin
  case ExportType of
    aeTXT, aeRTF, aeWord, aePDF: begin
      sgrCaptions.ColCount := 4;
      sgrCaptions.ColWidths[0] := 150;
      sgrCaptions.ColWidths[1] := 150;
      sgrCaptions.ColWidths[2] := 78;
      sgrCaptions.ColWidths[3] := 60;
      tshCaptions.Caption := QED_Captions_Caption + ' && ' + QED_Captions_Width +
        ' && ' + QED_Captions_Align;
    end;
    aeHTML, aeXLS: begin
      sgrCaptions.ColCount := 3;
      sgrCaptions.ColWidths[0] := 181;
      sgrCaptions.ColWidths[1] := 181;
      sgrCaptions.ColWidths[2] := 78;
      if ExportType = aeHTML
        then tshCaptions.Caption := QED_Captions_Caption + ' && ' + QED_Captions_Align
        else tshCaptions.Caption := QED_Captions_Caption + ' && ' + QED_Captions_Width;
    end;
    else begin
      sgrCaptions.ColCount := 2;
      sgrCaptions.ColWidths[0] := 220;
      sgrCaptions.ColWidths[1] := 220;
      tshCaptions.Caption := QED_Captions_Caption;
    end;
  end;

  for i := 0 to Dialog.Columns.Count - 1 do
    for j := 1 to sgrCaptions.RowCount - 1 do
      if AnsiCompareText(Dialog.Columns[i].Name, sgrCaptions.Cells[0, j]) = 0 then begin
        if ExportType in [aeTXT, aeRTF, aeWord, aeHTML, aePDF] then
          case Dialog.Columns[i].ColAlign of
            ecaLeft: sgrCaptions.Cells[2, j] := QED_Align_Left;
            ecaCenter: sgrCaptions.Cells[2, j] := QED_Align_Center;
            ecaRight: sgrCaptions.Cells[2, j] := QED_Align_Right;
          end;
        if ExportType in [aeTXT, aeRTF, aeWord, aeXLS, aePDF] then
          sgrCaptions.Cells[2 + Integer(ExportType <> aeXLS), j] :=
            IntToStr(Dialog.Columns[i].Width);
      end;
end;

procedure TADO_QExportDialogF.LoadStringGridCaption;
var
  i, N: integer;
begin
  if not Assigned(Dialog.StringGrid) then Exit;
  if CaptionRow > Dialog.StringGrid.RowCount then Exit;
  for i := 0 to sgrCaptions.RowCount - 1 do begin
    N := StrToIntDef(sgrCaptions.Cells[0, i], -1);
    if N > -1 then
      sgrCaptions.Cells[1, i] := Dialog.StringGrid.Cells[N, CaptionRow];
  end;
end;

procedure TADO_QExportDialogF.bAddOneExportedFieldClick(Sender: TObject);
begin
  if not Assigned(lstAvailableFields.Selected) then Exit;
  with MoveListItem(lstAvailableFields.Selected, lstExportedFields, true, -1) do
    ImageIndex := 1;
  CorrectXLSFieldsList;
end;

procedure TADO_QExportDialogF.bAddAllExportedFieldClick(Sender: TObject);
var
  i: integer;
begin
  for i := lstAvailableFields.Items.Count - 1 downto 0 do
    with MoveListItem(lstAvailableFields.Items[i], lstExportedFields, true, 0) do
      ImageIndex := 1;
  CorrectXLSFieldsList;
end;

procedure TADO_QExportDialogF.bDelOneExportedFieldClick(Sender: TObject);
begin
  if not Assigned(lstExportedFields.Selected) then Exit;
  with MoveListItem(lstExportedFields.Selected, lstAvailableFields, true,
    GetIndexOfNewAvailableFields(lstExportedFields.Selected)) do
    ImageIndex := 0;
  CorrectXLSFieldsList;
end;

procedure TADO_QExportDialogF.bDelAllExportedFieldClick(Sender: TObject);
var
  i: integer;
begin
  for i := lstExportedFields.Items.Count - 1 downto 0 do
    with MoveListItem(lstExportedFields.Items[i], lstAvailableFields, true,
      GetIndexOfNewAvailableFields(lstExportedFields.Items[i])) do
      ImageIndex := 0;
  CorrectXLSFieldsList;
end;

procedure TADO_QExportDialogF.cbxFormatFieldsChange(Sender: TObject);
var
  str: string;
begin
  cbxUserFormats.Items.BeginUpdate;
  try
    cbxUserFormats.Clear;
    if cbxFormatFields.ItemIndex <> -1 then begin
      case TQExportColType(Integer(cbxFormatFields.Items.Objects[cbxFormatFields.ItemIndex])) of 
        ectDateTime: begin
          cbxUserFormats.Items.Add(ShortDateFormat);
          cbxUserFormats.Items.Add(LongDateFormat);
          cbxUserFormats.Items.Add(ShortDateFormat + ' ' + ShortTimeFormat);
          cbxUserFormats.Items.Add(ShortDateFormat + ' ' + LongTimeFormat);
          cbxUserFormats.Items.Add(LongDateFormat + ' ' + ShortTimeFormat);
          cbxUserFormats.Items.Add(LongDateFormat + ' ' + LongTimeFormat);
          cbxUserFormats.Items.Add(ShortTimeFormat);
          cbxUserFormats.Items.Add(LongTimeFormat);
        end;
        ectDate: begin
          cbxUserFormats.Items.Add(ShortDateFormat);
          cbxUserFormats.Items.Add(LongDateFormat);
        end;
        ectTime: begin
          cbxUserFormats.Items.Add(ShortTimeFormat);
          cbxUserFormats.Items.Add(LongTimeFormat);
        end;
        ectInteger,
        ectBigint: begin
          cbxUserFormats.Items.Add('#,###,##0');
          cbxUserFormats.Items.Add('0');
        end;
        ectFloat: begin
          cbxUserFormats.Items.Add('#,###,##0.00');
          cbxUserFormats.Items.Add('#,###,##0.000');
          cbxUserFormats.Items.Add('#,###,##0.0000');
          cbxUserFormats.Items.Add('0.00');
        end;
        ectCurrency: begin
          str := '00.00';
          case SysUtils.CurrencyFormat of
            0: str :=  SysUtils.CurrencyString + str;
            1: str :=  str + SysUtils.CurrencyString;
            2: str :=  SysUtils.CurrencyString + ' ' + str;
            3: str :=  str + ' ' + SysUtils.CurrencyString;
          end;
          cbxUserFormats.Items.Add(str);
        end;
      end;
    end;
    cbxUserFormats.ItemIndex := 0;
  finally
    cbxUserFormats.Items.EndUpdate();
  end;
end;

procedure TADO_QExportDialogF.bAddUserFormatClick(Sender: TObject);
var
  i: integer;
begin
  if cbxUserFormats.Text = EmptyStr then Exit;
  for i := lstUserFormats.Items.Count - 1 downto 0 do
    if CompareText(cbxFormatFields.Text, lstUserFormats.Items[i].Caption) = 0 then
      lstUserFormats.Items.Delete(i);
  with lstUserFormats.Items.Add do begin
    Caption := cbxFormatFields.Text;
    SubItems.Add('=');
    SubItems.Add(cbxUserFormats.Text);
    Selected := true;
    ImageIndex := 2;
  end;
  ShowFormatButtons;
end;

procedure TADO_QExportDialogF.ShowFormatButtons;
begin
  bEditUserFormat.Enabled := lstUserFormats.Items.Count > 0;
  bDeleteUserFormat.Enabled := lstUserFormats.Items.Count > 0;
  bClearUserFormats.Enabled := lstUserFormats.Items.Count > 0;
end;

procedure TADO_QExportDialogF.PagesChange(Sender: TObject);
var
  LI: TListItem;
begin
  if Pages.ActivePage = tshFormats then ShowFormatButtons;

  if (Pages.ActivePage = tshXLS) and
     (CurrXLSListView.Items.Count > 0) then begin
    if not Assigned(CurrXLSListView.Selected)
      then LI := CurrXLSListView.Items[0]
      else LI := CurrXLSListView.Selected;
    if CurrXLSListView.CanFocus then
      CurrXLSListView.SetFocus;
    LI.Focused := true;
    LI.Selected := true;
    CurrXLSListView.OnChange(CurrXLSListView, LI, ctState);
 end;
end;

procedure TADO_QExportDialogF.bEditUserFormatClick(Sender: TObject);
var
  OldFormat, NewFormat: string;
begin
  if not Assigned(lstUserFormats.Selected) then Exit;
  OldFormat := lstUserFormats.Selected.SubItems[1];
  NewFormat := InputBox(QEM_NewFormatValue, QEM_EnterValue, OldFormat);
  if NewFormat <> OldFormat
    then lstUserFormats.Selected.SubItems[1] := NewFormat;
end;

procedure TADO_QExportDialogF.bDeleteUserFormatClick(Sender: TObject);
begin
  if not Assigned(lstUserFormats.Selected) then Exit;
  lstUserFormats.Selected.Delete;
  if lstUserFormats.Items.Count > 0 then
    lstUserFormats.Items[0].Selected := true;
  ShowFormatButtons;
end;

procedure TADO_QExportDialogF.bClearUserFormatsClick(Sender: TObject);
begin
  while Assigned(lstUserFormats.Selected) do
    bDeleteUserFormat.Click;
  ShowFormatButtons;
end;

procedure TADO_QExportDialogF.HTMLFillColors;
begin
  HTMLBackgroundColor := HTMLExp.HTMLOptions.BackgroundColor;
  HTMLFontColor := HTMLExp.HTMLOptions.TextFont.Color;
  HTMLHeadBackgroundColor := HTMLExp.TableOptions.HeadersRowBgColor;
  HTMLHeadFontColor := HTMLExp.TableOptions.HeadersRowFontColor;
  HTMLOddRowBackgroundColor := HTMLExp.TableOptions.OddRowBgColor;
  HTMLEvenRowBackgroundColor := HTMLExp.TableOptions.TableBgColor;
  HTMLDataFontColor := HTMLExp.TableOptions.TableFontColor;
  HTMLLinkColor := HTMLExp.HTMLOptions.LinkColor;
  HTMLVLinkColor := HTMLExp.HTMLOptions.VLinkColor;
  HTMLALinkColor := HTMLExp.HTMLOptions.ALinkColor;
end;

procedure TADO_QExportDialogF.HTMLUpdateMultifileControls;
begin
  laHTMLFileRecCount_01.Enabled := HTMLUseMultiFileExport;
  edHTMLFileRecCount.Enabled := HTMLUseMultiFileExport;
  laHTMLFileRecCount_02.Enabled := HTMLUseMultiFileExport;
  chHTMLGenerateIndex.Enabled := HTMLUseMultiFileExport;
  laHTMLIndexLinkTemplate.Enabled := HTMLUseMultiFileExport and
    HTMLGenerateIndex;
  edHTMLIndexLinkTemplate.Enabled := HTMLUseMultiFileExport and
    HTMLGenerateIndex;
  chHTMLNavigationOnTop.Enabled := HTMLUseMultiFileExport;
  chHTMLNavigationOnBottom.Enabled := HTMLUseMultiFileExport;

  laHTMLIndexLinkTitle.Enabled := HTMLUseMultiFileExport and
    (HTMLNavigationOnTop or HTMLNavigationOnBottom) and
    HTMLGenerateIndex;
  edHTMLIndexLinkTitle.Enabled := HTMLUseMultiFileExport and
    (HTMLNavigationOnTop or HTMLNavigationOnBottom) and
    HTMLGenerateIndex;
  laHTMLFirstLinkTitle.Enabled := HTMLUseMultiFileExport and
    (HTMLNavigationOnTop or HTMLNavigationOnBottom);
  edHTMLFirstLinkTitle.Enabled := HTMLUseMultiFileExport and
    (HTMLNavigationOnTop or HTMLNavigationOnBottom);
  laHTMLPriorLinkTitle.Enabled := HTMLUseMultiFileExport and
    (HTMLNavigationOnTop or HTMLNavigationOnBottom);
  edHTMLPriorLinkTitle.Enabled := HTMLUseMultiFileExport and
    (HTMLNavigationOnTop or HTMLNavigationOnBottom);
  laHTMLNextLinkTitle.Enabled := HTMLUseMultiFileExport and
    (HTMLNavigationOnTop or HTMLNavigationOnBottom);
  edHTMLNextLinkTitle.Enabled := HTMLUseMultiFileExport and
    (HTMLNavigationOnTop or HTMLNavigationOnBottom);
  laHTMLLastLinkTitle.Enabled := HTMLUseMultiFileExport and
    (HTMLNavigationOnTop or HTMLNavigationOnBottom);
  edHTMLLastLinkTitle.Enabled := HTMLUseMultiFileExport and
    (HTMLNavigationOnTop or HTMLNavigationOnBottom);
end;

procedure TADO_QExportDialogF.chAllowCaptionsClick(Sender: TObject);
begin
  AllowCaptions := chAllowCaptions.Checked;
  sgrCaptions.Enabled := AllowCaptions;
end;

procedure TADO_QExportDialogF.edCaptionRowExit(Sender: TObject);
begin
  CaptionRow := StrToIntDef(edCaptionRow.Text, CaptionRow);
  LoadStringGridCaption;
end;

procedure TADO_QExportDialogF.edCaptionRowKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    CaptionRow := StrToIntDef(edCaptionRow.Text, CaptionRow);
    LoadStringGridCaption;
  end;
end;

procedure TADO_QExportDialogF.sgrCaptionsDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  w, h, x, y: integer;
  s: string;
begin
  if ARow = 0 then
    with sgrCaptions.Canvas do begin
      Font.Style := Font.Style + [fsBold];

      case ACol of
        0: s := QED_Captions_FeldName;
        1: s := QED_Captions_Caption;
        2: if ExportType = aeXLS
             then s := QED_Captions_Width
             else s := QED_Captions_Align;
        3: s := QED_Captions_Width;
      end;

      w := TextWidth(s);
      h := TextHeight(s);
      x := Rect.Left + (Rect.Right  - Rect.Left - w) div 2;
      y := Rect.Top + (Rect.Bottom  - Rect.Top - h) div 2;
      TextOut(x, y, s);
    end;
end;

procedure TADO_QExportDialogF.pbRTFDefaultFontPaint(Sender: TObject);
begin
  PaintSampleFont(RTFExp.Options.DefaultFont, pbRTFDefaultFont, false);
end;

procedure TADO_QExportDialogF.bRTFDefaultFontClick(Sender: TObject);
begin
  SelectFontForPaintBox(FontDialog, RTFExp.Options.DefaultFont,
    pbRTFDefaultFont);
end;

procedure TADO_QExportDialogF.pbRTFHeaderFontPaint(Sender: TObject);
begin
  PaintSampleFont(RTFExp.Options.HeaderFont, pbRTFHeaderFont, false);
end;

procedure TADO_QExportDialogF.bRTFHeaderFontClick(Sender: TObject);
begin
  SelectFontForPaintBox(FontDialog, RTFExp.Options.HeaderFont, pbRTFHeaderFont);
end;

procedure TADO_QExportDialogF.SetCustomTemplate;
begin
  cbxHTMLTemplate.ItemIndex := 0;
end;

procedure TADO_QExportDialogF.bHTMLSaveTemplateClick(Sender: TObject);
begin
  if sdHTMLTemplate.Execute then
    HTMLExp.SaveTemplateToFile(sdHTMLTemplate.FileName);
end;

procedure TADO_QExportDialogF.bHTMLLoadTemplateClick(Sender: TObject);
begin
  if odHTMLTemplate.Execute then begin
    HTMLExp.LoadTemplateFromFile(odHTMLTemplate.FileName);
    HTMLFillColors;
    SetCustomTemplate;
  end;
end;

procedure TADO_QExportDialogF.cbxHTMLTemplateChange(Sender: TObject);
begin
  case cbxHTMLTemplate.ItemIndex of
    0: HTMLExp.HTMLTemplate := htCustom;
    else begin
      HTMLExp.HTMLTemplate := THTMLTemplate(cbxHTMLTemplate.ItemIndex);
      HTMLFillColors;
    end;
  end;
end;

procedure TADO_QExportDialogF.cbxXLSFontChange(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  TxlsFormat(FXLSListItem.Data).Font.Name := cbxXLSFont.Text;
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemFont, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.cbxXLSFontSizeChange(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  TxlsFormat(FXLSListItem.Data).Font.Size := StrToIntDef(cbxXLSFontSize.Text, 10);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemFontSize, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.pbFontColorPaint(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if CurrXLSListView.SelCount = 1
    then PaintXLSColors(pbFontColor, TxlsFormat(CurrXLSListView.Selected.Data).Font.Color)
    else PaintXLSColors(pbFontColor, TxlsFormat(FXLSListItem.Data).Font.Color);
end;

procedure TADO_QExportDialogF.pbBorderTopPaint(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if CurrXLSListView.SelCount = 1
    then PaintXLSColors(pbBorderTop,
      TxlsFormat(CurrXLSListView.Selected.Data).Borders.Top.Color)
    else PaintXLSColors(pbBorderTop,
      TxlsFormat(FXLSListItem.Data).Borders.Top.Color);
end;

procedure TADO_QExportDialogF.pbBorderBottomPaint(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if CurrXLSListView.SelCount = 1
    then PaintXLSColors(pbBorderBottom,
      TxlsFormat(CurrXLSListView.Selected.Data).Borders.Bottom.Color)
    else PaintXLSColors(pbBorderBottom,
      TxlsFormat(FXLSListItem.Data).Borders.Bottom.Color);
end;

procedure TADO_QExportDialogF.pbBorderLeftPaint(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if CurrXLSListView.SelCount = 1
    then PaintXLSColors(pbBorderLeft,
      TxlsFormat(CurrXLSListView.Selected.Data).Borders.Left.Color)
    else PaintXLSColors(pbBorderLeft,
      TxlsFormat(FXLSListItem.Data).Borders.Left.Color);
end;

procedure TADO_QExportDialogF.pbBorderRightPaint(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if CurrXLSListView.SelCount = 1
    then PaintXLSColors(pbBorderRight,
      TxlsFormat(CurrXLSListView.Selected.Data).Borders.Right.Color)
    else PaintXLSColors(pbBorderRight,
      TxlsFormat(FXLSListItem.Data).Borders.Right.Color);
end;

procedure TADO_QExportDialogF.pbFillBackgroundPaint(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if CurrXLSListView.SelCount = 1
    then PaintXLSColors(pbFillBackground,
      TxlsFormat(CurrXLSListView.Selected.Data).Fill.Background)
    else PaintXLSColors(pbFillBackground,
      TxlsFormat(FXLSListItem.Data).Fill.Background);
end;

procedure TADO_QExportDialogF.pbFillForegroundPaint(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if CurrXLSListView.SelCount = 1
    then PaintXLSColors(pbFillForeground,
      TxlsFormat(CurrXLSListView.Selected.Data).Fill.Foreground)
    else PaintXLSColors(pbFillForeground,
      TxlsFormat(FXLSListItem.Data).Fill.Foreground);
end;

procedure TADO_QExportDialogF.btnFontColorClick(Sender: TObject);
var
  OClr, NClr: TxlsColor;
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  OClr := TxlsFormat(FXLSListItem.Data).Font.Color;
  NClr := RunXLSColorEditor(OClr);
  if NClr <> OClr then begin
    TxlsFormat(FXLSListItem.Data).Font.Color := NClr;
    if CurrXLSListView.SelCount > 1 then
      ForAllListViewItems(CurrXLSListView, XLSUpdateItemFontColor, false);
    pbXLSCell.Repaint;
  end;
end;

procedure TADO_QExportDialogF.btnFontBoldClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  XLSItemEditFontStyle(FXLSListItem, xfsBold, btnFontBold.Down);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemFontBold, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.btnFontItalicClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  XLSItemEditFontStyle(FXLSListItem, xfsItalic, btnFontItalic.Down);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemFontItalic, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.btnFontStrikeOutClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  XLSItemEditFontStyle(FXLSListItem, xfsStrikeOut, btnFontStrikeOut.Down);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemFontStrikeOut, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.btnUnderlineSingleClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if btnUnderlineSingle.Down
    then XLSItemSetUnderline(FXLSListItem, fulSingle)
    else XLSItemSetUnderline(FXLSListItem, fulNone);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemFontUnderline, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.btnUnderlineSingleAccountingClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if btnUnderlineSingleAccounting.Down
    then XLSItemSetUnderline(FXLSListItem, fulSingleAccounting)
    else XLSItemSetUnderline(FXLSListItem, fulNone);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemFontUnderline, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.btnUnderlineDoubleClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if btnUnderlineDouble.Down
    then XLSItemSetUnderline(FXLSListItem, fulDouble)
    else XLSItemSetUnderline(FXLSListItem, fulNone);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemFontUnderline, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.btnUnderlineDoubleAccountingClick(
  Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if btnUnderlineDoubleAccounting.Down
    then XLSItemSetUnderline(FXLSListItem, fulDoubleAccounting)
    else XLSItemSetUnderline(FXLSListItem, fulNone);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemFontUnderline, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.btnHorizontalLeftClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if btnHorizontalLeft.Down
    then XLSItemSetHorAlignment(FXLSListItem, halLeft)
    else XLSItemSetHorAlignment(FXLSListItem, halGeneral);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemHorAlignment, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.btnHorizontalCenterClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if btnHorizontalCenter.Down
    then XLSItemSetHorAlignment(FXLSListItem, halCenter)
    else XLSItemSetHorAlignment(FXLSListItem, halGeneral);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemHorAlignment, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.btnHorizontalRightClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if btnHorizontalRight.Down
    then XLSItemSetHorAlignment(FXLSListItem, halRight)
    else XLSItemSetHorAlignment(FXLSListItem, halGeneral);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemHorAlignment, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.btnHorizontalFillClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if btnHorizontalFill.Down
    then XLSItemSetHorAlignment(FXLSListItem, halFill)
    else XLSItemSetHorAlignment(FXLSListItem, halGeneral);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemHorAlignment, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.btnVerticalTopClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if btnVerticalTop.Down then XLSItemSetVertAlignment(FXLSListItem, valTop);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemVertAlignment, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.btnVerticalCenterClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if btnVerticalCenter.Down then XLSItemSetVertAlignment(FXLSListItem, valCenter);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemVertAlignment, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.btnVerticalBottomClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if btnVerticalBottom.Down then XLSItemSetVertAlignment(FXLSListItem, valBottom);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemVertAlignment, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.btnBorderTopColorClick(Sender: TObject);
var
  OClr, NClr: TxlsColor;
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  OClr := TxlsFormat(FXLSListItem.Data).Borders.Top.Color;
  NClr := RunXLSColorEditor(OClr);
  TxlsFormat(FXLSListItem.Data).Borders.Top.Color := NClr;
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemBorderTopColor, false);
  pbXLSCell.Repaint;
  cmbBorderTop.Repaint;
end;

procedure TADO_QExportDialogF.btnBorderBottomColorClick(Sender: TObject);
var
  OClr, NClr: TxlsColor;
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  OClr := TxlsFormat(FXLSListItem.Data).Borders.Bottom.Color;
  NClr := RunXLSColorEditor(OClr);
  TxlsFormat(FXLSListItem.Data).Borders.Bottom.Color := NClr;
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemBorderBottomColor, false);
  pbXLSCell.Repaint;
  cmbBorderBottom.Repaint;
end;

procedure TADO_QExportDialogF.btnBorderLeftColorClick(Sender: TObject);
var
  OClr, NClr: TxlsColor;
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  OClr := TxlsFormat(FXLSListItem.Data).Borders.Left.Color;
  NClr := RunXLSColorEditor(OClr);
  TxlsFormat(FXLSListItem.Data).Borders.Left.Color := NClr;
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemBorderLeftColor, false);
  pbXLSCell.Repaint;
  cmbBorderLeft.Repaint;
end;

procedure TADO_QExportDialogF.btnBorderRightColorClick(Sender: TObject);
var
  OClr, NClr: TxlsColor;
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  OClr := TxlsFormat(FXLSListItem.Data).Borders.Right.Color;
  NClr := RunXLSColorEditor(OClr);
  TxlsFormat(FXLSListItem.Data).Borders.Right.Color := NClr;
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemBorderRightColor, false);
  pbXLSCell.Repaint;
  cmbBorderRight.Repaint;
end;

procedure TADO_QExportDialogF.btnFillBackgroundClick(Sender: TObject);
var
  OClr, NClr: TxlsColor;
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  OClr := TxlsFormat(FXLSListItem.Data).Fill.Background;
  NClr := RunXLSColorEditor(OClr);
  TxlsFormat(FXLSListItem.Data).Fill.Background := NClr;
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemFillBackground, false);
  pbXLSCell.Repaint;
  cmbPattern.Repaint;

  with TxlsFormat(FXLSListItem.Data) do
    if (Fill.Background <> clrWhite) and (Fill.Pattern = ptNone) then begin
       Fill.Pattern := ptSolid;
       if CurrXLSListView.SelCount > 1 then
         ForAllListViewItems(CurrXLSListView, XLSUpdateItemFillPattern, false);
       CurrXLSListView.OnChange(CurrXLSListView, CurrXLSListView.Selected, ctState);
    end
end;

procedure TADO_QExportDialogF.btnFillForegroundClick(Sender: TObject);
var
  OClr, NClr: TxlsColor;
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  OClr := TxlsFormat(FXLSListItem.Data).Fill.Foreground;
  NClr := RunXLSColorEditor(OClr);
  TxlsFormat(FXLSListItem.Data).Fill.Foreground := NClr;
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemFillForeground, false);
  pbXLSCell.Repaint;
  cmbPattern.Repaint;
end;

procedure TADO_QExportDialogF.btnBorderTopClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if btnBorderTop.Down and (cmbBorderTop.ItemIndex = 0)
    then cmbBorderTop.ItemIndex := 1
    else cmbBorderTop.ItemIndex := 0;
  cmbBorderTop.OnChange(nil);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.btnBorderBottomClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if btnBorderBottom.Down and (cmbBorderBottom.ItemIndex = 0)
    then cmbBorderBottom.ItemIndex := 1
    else cmbBorderBottom.ItemIndex := 0;
  cmbBorderBottom.OnChange(nil);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.btnBorderLeftClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if btnBorderLeft.Down and (cmbBorderLeft.ItemIndex = 0)
    then cmbBorderLeft.ItemIndex := 1
    else cmbBorderLeft.ItemIndex := 0;
  cmbBorderLeft.OnChange(nil);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.btnBorderRightClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if btnBorderRight.Down and (cmbBorderRight.ItemIndex = 0)
    then cmbBorderRight.ItemIndex := 1
    else cmbBorderRight.ItemIndex := 0;
  cmbBorderRight.OnChange(nil);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.cmbBorderTopChange(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  btnBorderTop.Down := cmbBorderTop.ItemIndex > 0;
  if cmbBorderTop.ItemIndex >= 0  then
    TxlsFormat(FXLSListItem.Data).Borders.Top.Style :=
      TxlsBorderStyle(cmbBorderTop.ItemIndex);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemBorderTop, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.cmbBorderBottomChange(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  btnBorderBottom.Down := cmbBorderBottom.ItemIndex > 0;
  if cmbBorderBottom.ItemIndex >= 0  then
    TxlsFormat(FXLSListItem.Data).Borders.Bottom.Style :=
      TxlsBorderStyle(cmbBorderBottom.ItemIndex);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemBorderBottom, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.cmbBorderLeftChange(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  btnBorderLeft.Down := cmbBorderLeft.ItemIndex > 0;
  if cmbBorderLeft.ItemIndex >= 0  then
    TxlsFormat(FXLSListItem.Data).Borders.Left.Style :=
      TxlsBorderStyle(cmbBorderLeft.ItemIndex);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemBorderLeft, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.cmbBorderRightChange(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  btnBorderRight.Down := cmbBorderRight.ItemIndex > 0;
  if cmbBorderRight.ItemIndex >= 0  then
    TxlsFormat(FXLSListItem.Data).Borders.Right.Style :=
      TxlsBorderStyle(cmbBorderRight.ItemIndex);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemBorderRight, false);
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.cmbBorderTopDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  Invert: boolean;
begin
  if CurrXLSListView = nil then Exit;
  if not Assigned(CurrXLSListView.Selected) then Exit;
  Invert := (odSelected in State) or (odFocused in State);
  with (Control as TComboBox).Canvas do begin
    FillRect(Rect);
    if Invert then Pen.Color := clWhite
    else Pen.Color := XLS_STANDART_PALETTE[Integer(TxlsFormat(
      CurrXLSListView.Selected.Data).Borders.Top.Color)];
  end;
  DrawBorderStyle(TxlsBorderStyle(Index), (Control as TComboBox).Canvas, Rect);
end;

procedure TADO_QExportDialogF.cmbBorderBottomDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  Invert: boolean;
begin
  if CurrXLSListView = nil then Exit;
  if not Assigned(CurrXLSListView.Selected) then Exit;
  Invert := (odSelected in State) or (odFocused in State);
  with (Control as TComboBox).Canvas do begin
    FillRect(Rect);
    if Invert then Pen.Color := clWhite
    else Pen.Color := XLS_STANDART_PALETTE[Integer(TxlsFormat(
      CurrXLSListView.Selected.Data).Borders.Bottom.Color)];
  end;
  DrawBorderStyle(TxlsBorderStyle(Index), (Control as TComboBox).Canvas, Rect);
end;

procedure TADO_QExportDialogF.cmbBorderLeftDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  Invert: boolean;
begin
  if CurrXLSListView = nil then Exit;
  if not Assigned(CurrXLSListView.Selected) then Exit;
  Invert := (odSelected in State) or (odFocused in State);
  with (Control as TComboBox).Canvas do begin
    FillRect(Rect);
    if Invert then Pen.Color := clWhite
    else Pen.Color := XLS_STANDART_PALETTE[Integer(TxlsFormat(
      CurrXLSListView.Selected.Data).Borders.Left.Color)];
  end;
  DrawBorderStyle(TxlsBorderStyle(Index), (Control as TComboBox).Canvas, Rect);
end;

procedure TADO_QExportDialogF.cmbBorderRightDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  Invert: boolean;
begin
  if CurrXLSListView = nil then Exit;
  if not Assigned(CurrXLSListView.Selected) then Exit;
  Invert := (odSelected in State) or (odFocused in State);
  with (Control as TComboBox).Canvas do begin
    FillRect(Rect);
    if Invert then Pen.Color := clWhite
    else Pen.Color := XLS_STANDART_PALETTE[Integer(TxlsFormat(
      CurrXLSListView.Selected.Data).Borders.Right.Color)];
  end;
  DrawBorderStyle(TxlsBorderStyle(Index), (Control as TComboBox).Canvas, Rect);
end;

procedure TADO_QExportDialogF.cmbPatternDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
//  Invert: boolean;
  x, y: integer;
begin
  if CurrXLSListView = nil then Exit;
  if not Assigned(CurrXLSListView.Selected) then Exit;
//  Invert := (odSelected in State) or (odFocused in State);
  with (Control as TComboBox).Canvas do begin
{    if Invert then begin
        Brush.Color := XLS_STANDART_PALETTE[39 - Integer(TxlsFormat(CurrXLSListView.Selected.Data).Fill.Background)];
        Pen.Color := XLS_STANDART_PALETTE[39 - Integer(TxlsFormat(CurrXLSListView.Selected.Data).Fill.Foreground)];
    end
    else begin}
      Brush.Color := XLS_STANDART_PALETTE[Integer(TxlsFormat(CurrXLSListView.Selected.Data).Fill.Background)];
      Pen.Color := XLS_STANDART_PALETTE[Integer(TxlsFormat(CurrXLSListView.Selected.Data).Fill.Foreground)];
    {end;}
    if Index > 0 then
    FillRect(Rect);

    if Index = 0 then begin
      Brush.Color := clWhite;
      FillRect(Rect);
      Font.Color := clBlack ;
      TextOut((Rect.Right + Rect.Left - TextWidth(QED_XLS_Fill_Pattern_None)) div 2,
              (Rect.Bottom + Rect.Top - TextHeight(QED_XLS_Fill_Pattern_None)) div 2,
        QED_XLS_Fill_Pattern_None);
    end
    else begin
      x := Rect.Left;
      y := Rect.Top;
      while y <= Rect.Bottom - 4 do begin
        while x <= Rect.Right do begin
          DrawPattern((Control as TComboBox).Canvas, Index, x, y);
          Inc(x, 4);
        end;
        Inc(y, 4);
        x := Rect.Left;
      end
    end;
  end;
end;

procedure TADO_QExportDialogF.cmbPatternChange(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit; 
  if CurrXLSListView.SelCount < 1 then Exit;
  if cmbPattern.ItemIndex >= 0 then begin
    TxlsFormat(FXLSListItem.Data).Fill.Pattern :=
      TxlsPattern(cmbPattern.ItemIndex);
    if CurrXLSListView.SelCount > 1 then
      ForAllListViewItems(CurrXLSListView, XLSUpdateItemFillPattern, false);

    if (cmbPattern.ItemIndex = 0) and
       (TxlsFormat(FXLSListItem.Data).Fill.Background <> clrWhite) then begin
      TxlsFormat(FXLSListItem.Data).Fill.Background := clrWhite;
      if CurrXLSListView.SelCount > 1 then
        ForAllListViewItems(CurrXLSListView, XLSUpdateItemFillBackground, false);
      CurrXLSListView.OnChange(CurrXLSListView, CurrXLSListView.Selected, ctState);
    end;
  end;
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.LoadExportOptions(const FileName: string);
var
  i, j: integer;
  FIniFile: TIniFile;
  AStrings: TStrings;
  AComponent: TComponent;
  prefix, str: string;
  LV: TListView;
  xlsFormat: TxlsFieldFormat;
  PDFFont: TPDFFont;
begin
  FIniFile := TIniFile.Create(FileName);
  AStrings := TStringList.Create;
  try
    with FIniFile do begin
      // [GENERAL]
      Self.FileName := ReadString(S_GENERAL, S_FileName, Dialog.FileName);
      ExportType := TAllowedExport(ReadInteger(S_GENERAL, S_ExportType, 0));
      ShowFile := ReadBool(S_GENERAL, S_ShowFile, Dialog.ShowFile);
      PrintFile := ReadBool(S_GENERAL, S_PrintFile, Dialog.PrintFile);
      GoToFirstRecord := ReadBool(S_GENERAL, S_GoToFirstRecord,
        Dialog.GoToFirstRecord);
      ExportEmpty := ReadBool(S_GENERAL, S_ExportEmpty,
        Dialog.ExportEmpty);
      CurrentRecordOnly := ReadBool(S_GENERAL, S_CurrentRecordOnly,
        Dialog.CurrentRecordOnly);
      ExportEmpty := ReadBool(S_GENERAL, S_ExportEmpty, Dialog.ExportEmpty);
      ExportRecCount := ReadInteger(S_GENERAL, S_ExportRecCount,
        Dialog.ExportRecCount);
      SkipRecCount := ReadInteger(S_GENERAL, S_SkipRecCount,
        Dialog.SkipRecCount);
      AllowCaptions := ReadBool(S_GENERAL, S_AllowCaptions,
        Dialog.AllowCaptions);
      CaptionRow := ReadInteger(S_GENERAL, S_CaptionRow, Dialog.CaptionRow);
      // [FORMATS]
      ResetStandardFormats;
      IntegerFmt := ReadString(S_FORMATS, S_Integer, IntegerFmt);
      FloatFmt := ReadString(S_FORMATS, S_Float, FloatFmt);
      DateFmt := ReadString(S_FORMATS, S_Date, DateFmt);
      TimeFmt := ReadString(S_FORMATS, S_Time, TimeFmt);
      DateTimeFmt := ReadString(S_FORMATS, S_DateTime, DateTimeFmt);
      CurrencyFmt := ReadString(S_FORMATS, S_Currency, CurrencyFmt);
      BooleanTrue := ReadString(S_FORMATS, S_BooleanTrue, BooleanTrue);
      BooleanFalse := ReadString(S_FORMATS, S_BooleanFalse, BooleanFalse);
      NullString := ReadString(S_FORMATS, S_NullString, NullString);
      // [USER_FORMATS]
      lstUserFormats.Items.Clear;
      AStrings.Clear;
      ReadSection(S_USER_FORMATS, AStrings);
      for i := 0 to AStrings.Count - 1 do
        for j := 0 to Dialog.Columns.Count - 1 do
          if AnsiCompareText(AStrings[i], Dialog.Columns[j].Name) = 0 then
            with lstUserFormats.Items.Add do begin
              Caption := AStrings[i];
              SubItems.Add('=');
              SubItems.Add(ReadString(S_USER_FORMATS, AStrings[i], EmptyStr));
              ImageIndex := 2;
            end;
      // [FIELDS]
      bDelAllExportedField.Click;
      AStrings.Clear;
      ReadSection(S_FIELDS, AStrings);
      for i := 0 to AStrings.Count - 1 do
        for j := 0 to lstAvailableFields.Items.Count - 1 do
          if AnsiCompareText(ReadString(S_FIELDS, AStrings[i], EmptyStr),
               lstAvailableFields.Items[j].Caption) = 0 then begin
            with MoveListItem(lstAvailableFields.Items[j],
              lstExportedFields, true, -1) do
            ImageIndex := 1;
            CorrectXLSFieldsList;
            Break;
          end;
      // [HEADER]
      AStrings.Clear;
      ReadSection(S_HEADER, AStrings);
      memHeader.Lines.Clear;
      for i := 0 to AStrings.Count - 1 do
        memHeader.Lines.Add(ReadString(S_HEADER, AStrings[i], EmptyStr));
      // [FOOTER]
      AStrings.Clear;
      ReadSection(S_FOOTER, AStrings);
      memFooter.Lines.Clear;
      for i := 0 to AStrings.Count - 1 do
        memFooter.Lines.Add(ReadString(S_FOOTER, AStrings[i], EmptyStr));
      // [CAPTIONS]
      AStrings.Clear;
      for j := 1 to sgrCaptions.RowCount - 1 do
        sgrCaptions.Cells[1, j] := EmptyStr;
      ReadSection(S_CAPTIONS, AStrings);
      for i := 0 to AStrings.Count - 1 do
        for j := 1 to sgrCaptions.RowCount - 1 do
          if AnsiCompareText(AStrings[i], sgrCaptions.Cells[0, j]) = 0 then begin
            sgrCaptions.Cells[1, j] := ReadString(S_CAPTIONS, AStrings[i],
              EmptyStr);
            Break;
          end;

      // [WIDTH]
      if ExportType in [aeTXT, aeRTF, aeWord, aeXLS] then begin
        AStrings.Clear;
        for j := 1 to sgrCaptions.RowCount - 1 do
          sgrCaptions.Cells[2 + Integer(ExportType <> aeXLS), j] := '0';
        ReadSection(S_WIDTH, AStrings);
        for i := 0 to AStrings.Count - 1 do
          for j := 1 to sgrCaptions.RowCount - 1 do
            if AnsiCompareText(AStrings[i], sgrCaptions.Cells[0, j]) = 0 then begin
              sgrCaptions.Cells[2 + Integer(ExportType <> aeXLS), j] :=
                ReadString(S_WIDTH, AStrings[i], '0');
              Break;
            end;
      end;

      // [ALIGN]
      if ExportType in [aeTXT, aeRTF, aeWord, aeHTML] then begin
        AStrings.Clear;
        for j := 1 to sgrCaptions.RowCount - 1 do
          sgrCaptions.Cells[2, j] := 'Left';
        ReadSection(S_ALIGN, AStrings);
        for i := 0 to AStrings.Count - 1 do
          for j := 1 to sgrCaptions.RowCount - 1 do
            if AnsiCompareText(AStrings[i], sgrCaptions.Cells[0, j]) = 0 then begin
              sgrCaptions.Cells[2, j] := ReadString(S_ALIGN, AStrings[i], 'Left');
              Break;
            end;
      end;

      case ExportType of
        // [XLS]
        aeXLS: begin
          XLSPageHeader := ReadString(S_XLS, S_PageHeader,
            Dialog.XLSOptions.PageHeader);
          XLSPageFooter := ReadString(S_XLS, S_PageFooter,
            Dialog.XLSOptions.PageFooter);
          XLSSheetTitle := ReadString(S_XLS, S_SheetTitle,
            Dialog.XLSOptions.SheetTitle);
          XLSStripType := TxlsStripStyle(ReadInteger(S_XLS, S_StripType,
            Integer(Dialog.XLSOptions.StripType)));
          XLSAutoCalcColWidth := ReadBool(S_XLS, S_AutoCalcColWidth,
            Dialog.XLSOptions.AutoCalcColWidth);

          XLSResetAllItems_A;
          AStrings.Clear;
          ReadSections(AStrings);
          for i := 0 to AStrings.Count - 1  do begin
            if AnsiCompareText(S_XLS_FIELD, Copy(AStrings[i], 1,
               Length(S_XLS_FIELD))) = 0 then begin
              LV := lstXLSFields;
              prefix := S_XLS_FIELD;
            end
            else if AnsiCompareText(S_XLS_OPTION, Copy(AStrings[i], 1,
               Length(S_XLS_OPTION))) = 0 then begin
              LV := lstXLSOptions;
              prefix := S_XLS_OPTION;
            end
            else if AnsiCompareText(S_XLS_STYLE, Copy(AStrings[i], 1,
               Length(S_XLS_STYLE))) = 0 then begin
              LV := lstXLSStyles;
              prefix := S_XLS_STYLE;
            end
            else LV := nil;

            if Assigned(LV) then begin
              xlsFormat := nil;
              if (AnsiCompareText(prefix, S_XLS_FIELD) = 0) or
                 (AnsiCompareText(prefix, S_XLS_OPTION) = 0) then begin
                for j := 0 to LV.Items.Count - 1 do
                  if AnsiCompareText(LV.Items[j].Caption, Copy(AStrings[i],
                     Length(prefix) + 1, Length(AStrings[i]))) = 0 then begin
                    xlsFormat := TxlsFieldFormat(LV.Items[j].Data);
                    Break;
                  end;
              end
              else begin
                with LV.Items.Add do begin
                  Caption := Copy(AStrings[i], Length(prefix) + 1, Length(AStrings[i]));
                  xlsFormat := TxlsFieldFormat.Create(nil);
                  Data := xlsFormat;
                  ImageIndex := 2;
                end;
              end;

              if Assigned(xlsFormat)
                then xlsFormat.LoadFromIniFile(FIniFile, AStrings[i]);
            end;
          end;
          if lstXLSStyles.Items.Count > 0 then begin
            lstXLSStyles.Items[0].Focused := true;
            lstXLSStyles.Items[0].Selected := true;
          end;
        end;
        // [RTF]
        aeRTF, aeWord: begin
          LoadFontFromIniFile(RTFExp.Options.DefaultFont,
            Dialog.RTFOptions.DefaultFont, FIniFile, S_RTF_Default_Font);
          LoadFontFromIniFile(RTFExp.Options.HeaderFont,
            Dialog.RTFOptions.HeaderFont, FIniFile, S_RTF_Header_Font);
          PaintSampleFont(RTFExp.Options.DefaultFont, pbRTFDefaultFont, false);
          PaintSampleFont(RTFExp.Options.HeaderFont, pbRTFHeaderFont, false);
          RTFPageOrientation := TQExportPageOrientation(ReadInteger(S_RTF,
            S_RTF_PageOrientation, Integer(Dialog.RTFOptions.PageOrientation)));
        end;
        // [HTML]
        aeHTML: begin
           SetCustomTemplate;

           HTMLTitle := ReadString(S_HTML, S_HTML_Title,
             Dialog.HTMLPageOptions.Title);
           HTMLUsingCSS := TUsingCSS(ReadInteger(S_HTML, S_HTML_CSS,
             Integer(Dialog.HTMLPageOptions.UsingCSS)));
           HTMLCSSFileName := ReadString(S_HTML, S_HTML_CSSFile,
             Dialog.HTMLPageOptions.CSSFileName);
           HTMLOverwriteCSSFile := ReadBool(S_HTML, S_HTML_OverwriteCSSFile,
             Dialog.HTMLPageOptions.OverwriteCSSFile);

           HTMLUseMultiFileExport := ReadInteger(S_HTML,
             S_HTML_FileRecCount, Dialog.HTMLMultiFileOptions.FileRecCount) > 0;
           HTMLFileRecCount := ReadInteger(S_HTML,
             S_HTML_FileRecCount, Dialog.HTMLMultiFileOptions.FileRecCount);
           HTMLGenerateIndex := ReadBool(S_HTML, S_HTML_GenerateIndex,
             Dialog.HTMLMultiFileOptions.GenerateIndex);
           HTMLIndexLinkTemplate := ReadString(S_HTML, S_HTML_IndexLinkTemplate,
             Dialog.HTMLMultiFileOptions.IndexLinkTemplate);
           HTMLNavigationOnTop := ReadBool(S_HTML, S_HTML_NavigationOnTop,
             Dialog.HTMLMultiFileOptions.NavigationOnTop);
           HTMLNavigationOnBottom := ReadBool(S_HTML, S_HTML_NavigationOnBottom,
             Dialog.HTMLMultiFileOptions.NavigationOnBottom);
           HTMLIndexLinkTitle := ReadString(S_HTML, S_HTML_IndexLinkTitle,
             Dialog.HTMLMultiFileOptions.IndexLinkTitle);
           HTMLFirstLinkTitle := ReadString(S_HTML, S_HTML_FirstLinkTitle,
             Dialog.HTMLMultiFileOptions.FirstLinkTitle);
           HTMLPriorLinkTitle := ReadString(S_HTML, S_HTML_PriorLinkTitle,
             Dialog.HTMLMultiFileOptions.PriorLinkTitle);
           HTMLNextLinkTitle := ReadString(S_HTML, S_HTML_NextLinkTitle,
             Dialog.HTMLMultiFileOptions.NextLinkTitle);
           HTMLLastLinkTitle := ReadString(S_HTML, S_HTML_LastLinkTitle,
             Dialog.HTMLMultiFileOptions.LastLinkTitle);

           HTMLFontName := ReadString(S_HTML, S_HTML_FontName,
             Dialog.HTMLPageOptions.TextFont.Name);
           HTMLBackground := ReadString(S_HTML, S_HTML_BackgroundFile,
             Dialog.HTMLPageOptions.BackgroundFileName);
           HTMLBodyAdvanced := ReadString(S_HTML, S_HTML_BodyAdvanced,
             Dialog.HTMLPageOptions.AdvancedAttributes.Text);

           HTMLCellPadding := ReadInteger(S_HTML, S_HTML_CellPadding,
             Dialog.HTMLTableOptions.CellPadding);
           HTMLCellSpacing := ReadInteger(S_HTML, S_HTML_CellSpacing,
             Dialog.HTMLTableOptions.CellSpacing);
           HTMLBorderWidth := ReadInteger(S_HTML, S_HTML_BorderWidth,
             Dialog.HTMLTableOptions.BorderWidth);
           HTMLTableBackground := ReadString(S_HTML, S_HTML_TableBackground,
             Dialog.HTMLTableOptions.BackgroundFileName);
           HTMLTableAdvanced := ReadString(S_HTML, S_HTML_TableAdvanced,
             Dialog.HTMLTableOptions.AdvancedAttributes.Text);

           HTMLBackgroundColor := StringToColor(ReadString(S_HTML,
             S_HTML_BackgroundColor,
             ColorToString(Dialog.HTMLPageOptions.BackgroundColor)));
           HTMLFontColor := StringToColor(ReadString(S_HTML, S_HTML_FontColor,
             ColorToString(Dialog.HTMLPageOptions.TextFont.Color)));

           str := ReadString(S_HTML, S_HTML_HeadBackgroundColor,
             ColorToString(Dialog.HTMLTableOptions.HeadersRowBgColor));
           HTMLHeadBackgroundColor := StringToColor(str);
           for i := 1 to 3 do begin
             AComponent := FindComponent('paHTMLColumnHead_' + IntToStr(i));
             if Assigned(AComponent) and (AComponent is TPanel) then
               (AComponent as TPanel).Color := StringToColor(str);
           end;

           str := ReadString(S_HTML, S_HTML_HeadFontColor,
             ColorToString(Dialog.HTMLTableOptions.HeadersRowFontColor));
           HTMLHeadFontColor := StringToColor(str);
           for i := 1 to 3 do begin
             AComponent := FindComponent('laHTMLHead_' + IntToStr(i));
             if Assigned(AComponent) and (AComponent is TLabel) then
               (AComponent as TLabel).Font.Color := StringToColor(str);
           end;

           str := ReadString(S_HTML, S_HTML_OddRowBackgroundColor,
             ColorToString(Dialog.HTMLTableOptions.OddRowBgColor));
           HTMLOddRowBackgroundColor := StringToColor(str);
           for i := 1 to 6 do begin
             AComponent := FindComponent('paHTMLOddRowCol_' + IntToStr(i));
             if Assigned(AComponent) and (AComponent is TPanel) then
               (AComponent as TPanel).Color := StringToColor(str);
           end;

           str := ReadString(S_HTML, S_HTML_EvenRowBackgroundColor,
             ColorToString(Dialog.HTMLTableOptions.TableBgColor));
           HTMLEvenRowBackgroundColor := StringToColor(str);
           for i := 1 to 6 do begin
             AComponent := FindComponent('paHTMLEvenRowCol_' + IntToStr(i));
             if Assigned(AComponent) and (AComponent is TPanel) then
               (AComponent as TPanel).Color := StringToColor(str);
           end;

           str := ReadString(S_HTML, S_HTML_DataFontColor,
             ColorToString(Dialog.HTMLTableOptions.TableFontColor));
           HTMLDataFontColor := StringToColor(str);
           for i := 1 to 12 do begin
             AComponent := FindComponent('laHTMLData_' + IntToStr(i));
             if Assigned(AComponent) and (AComponent is TLabel) then
               (AComponent as TLabel).Font.Color := StringToColor(str);
           end;

           laHTMLLink.Font.Color := StringToColor(ReadString(S_HTML,
             S_HTML_LinkColor,
             ColorToString(Dialog.HTMLPageOptions.LinkColor)));
           HTMLLinkColor := laHTMLLink.Font.Color;
           laHTMLVLink.Font.Color := StringToColor(ReadString(S_HTML,
             S_HTML_VLinkColor,
             ColorToString(Dialog.HTMLPageOptions.VLinkColor)));
           HTMLVLinkColor := laHTMLVLink.Font.Color;
           laHTMLALink.Font.Color := StringToColor(ReadString(S_HTML,
             S_HTML_ALinkColor,
             ColorToString(Dialog.HTMLPageOptions.ALinkColor)));
           HTMLALinkColor := laHTMLALink.Font.Color;
        end;
        // [PDF]
        aePDF: begin
          PDFColSpacing := StrToDblDef(ReadString(S_PDF, S_PDF_ColSpacing,
            FormatFloat('0.0', Dialog.PDFOptions.ColSpacing)),
            Dialog.PDFOptions.ColSpacing);
          PDFRowSpacing := StrToDblDef(ReadString(S_PDF, S_PDF_RowSpacing,
            FormatFloat('0.0', Dialog.PDFOptions.RowSpacing)),
            Dialog.PDFOptions.RowSpacing);
          PDFGridLineWidth := ReadInteger(S_PDF, S_PDF_GridLineWidth,
            Dialog.PDFOptions.GridLineWidth);

          PDFPageFormat := TQExportPageFormat(ReadInteger(S_PDF,
            S_PDF_PageFormat, Integer(Dialog.PDFOptions.PageOptions.Format)));
          PDFPageUnits := TQExportUnits(ReadInteger(S_PDF, S_PDF_PageUnits,
            Integer(Dialog.PDFOptions.PageOptions.Units)));
          PDFPageOrientation := TQExportPageOrientation(ReadInteger(S_PDF,
            S_PDF_PageOrientation, Integer(Dialog.PDFOptions.PageOptions.Orientation)));
          if PDFPageFormat = pfUser then begin
            FPDFPageWidth := ReadInteger(S_PDF, S_PDF_PageWidth,
              Units2Dot(Dialog.PDFOptions.PageOptions.Units,
                        Dialog.PDFOptions.PageOptions.Width));
            FPDFPageHeight := ReadInteger(S_PDF, S_PDF_PageHeight,
              Units2Dot(Dialog.PDFOptions.PageOptions.Units,
                        Dialog.PDFOptions.PageOptions.Height));
          end;
          FPDFPageMarginLeft := ReadInteger(S_PDF, S_PDF_PageMarginLeft,
            Units2Dot(Dialog.PDFOptions.PageOptions.Units,
                      Dialog.PDFOptions.PageOptions.MarginLeft));
          FPDFPageMarginRight := ReadInteger(S_PDF, S_PDF_PageMarginRight,
            Units2Dot(Dialog.PDFOptions.PageOptions.Units,
                      Dialog.PDFOptions.PageOptions.MarginRight));
          FPDFPageMarginTop := ReadInteger(S_PDF, S_PDF_PageMarginTop,
            Units2Dot(Dialog.PDFOptions.PageOptions.Units,
                      Dialog.PDFOptions.PageOptions.MarginTop));
          FPDFPageMarginBottom := ReadInteger(S_PDF, S_PDF_PageMarginBottom,
            Units2Dot(Dialog.PDFOptions.PageOptions.Units,
                      Dialog.PDFOptions.PageOptions.MarginBottom));

          edPDFPageWidth.Text := FormatFloat(GetPDFPageSizeFormat,
            PDFPageWidth);
          edPDFPageHeight.Text := FormatFloat(GetPDFPageSizeFormat,
            PDFPageHeight);
          edPDFPageMarginLeft.Text := FormatFloat(GetPDFPageSizeFormat,
            PDFPageMarginLeft);
          edPDFPageMarginRight.Text := FormatFloat(GetPDFPageSizeFormat,
            PDFPageMarginRight);
          edPDFPageMarginTop.Text := FormatFloat(GetPDFPageSizeFormat,
            PDFPageMarginTop);
          edPDFPageMarginBottom.Text := FormatFloat(GetPDFPageSizeFormat,
            PDFPageMarginBottom);
          //--- Header
          PDFFont := PDFExp.Options.HeaderFont;
          PDFFont.BaseFont := TPDFFontName(ReadInteger(S_PDF_OPTION_HEADER,
            S_PDF_FontName, Integer(Dialog.PDFOptions.HeaderFont.BaseFont)));
          PDFFont.FontEncoding := TPDFFontEncoding(ReadInteger(S_PDF_OPTION_HEADER,
            S_PDF_FontEncoding, Integer(Dialog.PDFOptions.HeaderFont.FontEncoding)));
          PDFFont.FontSize := ReadInteger(S_PDF_OPTION_HEADER, S_PDF_FontSize,
            Dialog.PDFOptions.HeaderFont.FontSize);
          PDFFont.FontColor := StringToColor(ReadString(S_PDF_OPTION_HEADER,
            S_PDF_FontColor, ColorToString(Dialog.PDFOptions.HeaderFont.FontColor)));
          //--- Caption
          PDFFont := PDFExp.Options.CaptionFont;
          PDFFont.BaseFont := TPDFFontName(ReadInteger(S_PDF_OPTION_CAPTION,
            S_PDF_FontName, Integer(Dialog.PDFOptions.CaptionFont.BaseFont)));
          PDFFont.FontEncoding := TPDFFontEncoding(ReadInteger(S_PDF_OPTION_CAPTION,
            S_PDF_FontEncoding, Integer(Dialog.PDFOptions.CaptionFont.FontEncoding)));
          PDFFont.FontSize := ReadInteger(S_PDF_OPTION_CAPTION, S_PDF_FontSize,
            Dialog.PDFOptions.CaptionFont.FontSize);
          PDFFont.FontColor := StringToColor(ReadString(S_PDF_OPTION_CAPTION,
            S_PDF_FontColor, ColorToString(Dialog.PDFOptions.CaptionFont.FontColor)));
          //--- Data
          PDFFont := PDFExp.Options.DataFont;
          PDFFont.BaseFont := TPDFFontName(ReadInteger(S_PDF_OPTION_DATA,
            S_PDF_FontName, Integer(Dialog.PDFOptions.DataFont.BaseFont)));
          PDFFont.FontEncoding := TPDFFontEncoding(ReadInteger(S_PDF_OPTION_DATA,
            S_PDF_FontEncoding, Integer(Dialog.PDFOptions.DataFont.FontEncoding)));
          PDFFont.FontSize := ReadInteger(S_PDF_OPTION_DATA, S_PDF_FontSize,
            Dialog.PDFOptions.DataFont.FontSize);
          PDFFont.FontColor := StringToColor(ReadString(S_PDF_OPTION_DATA,
            S_PDF_FontColor, ColorToString(Dialog.PDFOptions.DataFont.FontColor)));
          //--- Footer
          PDFFont := PDFExp.Options.FooterFont;
          PDFFont.BaseFont := TPDFFontName(ReadInteger(S_PDF_OPTION_FOOTER,
            S_PDF_FontName, Integer(Dialog.PDFOptions.FooterFont.BaseFont)));
          PDFFont.FontEncoding := TPDFFontEncoding(ReadInteger(S_PDF_OPTION_FOOTER,
            S_PDF_FontEncoding, Integer(Dialog.PDFOptions.FooterFont.FontEncoding)));
          PDFFont.FontSize := ReadInteger(S_PDF_OPTION_FOOTER, S_PDF_FontSize,
            Dialog.PDFOptions.FooterFont.FontSize);
          PDFFont.FontColor := StringToColor(ReadString(S_PDF_OPTION_FOOTER,
            S_PDF_FontColor, ColorToString(Dialog.PDFOptions.FooterFont.FontColor)));
          FPDFFontItem := lvPDFFonts.ItemFocused;
          PDFShowFontInfo;
        end;
        // [XML]
        aeXML: begin
          XMLStandalone := ReadBool(S_XML, S_XML_Standalone,
            Dialog.XMLOptions.Standalone);
          XMLEncoding := ReadString(S_XML, S_XML_Encoding,
            Dialog.XMLOptions.Encoding);
        end;
        // [SQL]
        aeSQL: begin
          SQLTableName := ReadString(S_SQL, S_SQL_TableName,
            Dialog.SQLOptions.TableName);
          SQLCreateTable := ReadBool(S_SQL, S_SQL_CreateTable,
            Dialog.SQLOptions.CreateTable);
          SQLCommitRecCount := ReadInteger(S_SQL,
            S_SQL_CommitRecCount, Dialog.SQLOptions.CommitRecCount);
          SQLCommitAfterScript := ReadBool(S_SQL, S_SQL_CommitAfterScript,
            Dialog.SQLOptions.CommitAfterScript);
          SQLCommitStatement := ReadString(S_SQL, S_SQL_CommitStatement,
            Dialog.SQLOptions.CommitStatement);
          SQLStatementTerm := ReadString(S_SQL, S_SQL_StatementTerm,
            Dialog.SQLOptions.StatementTerm);
        end;
        // [TXT]
        aeTXT: begin
          TXTAutoCalcColWidth := ReadBool(S_TXT, S_TXT_AutoCalcColWidth,
            Dialog.TXTOptions.AutoCalcColWidth);
          TXTSpacing := ReadInteger(S_TXT, S_TXT_Spacing,
            Dialog.TXTOptions.ColSpacing);
        end;
        // [CSV]
        aeCSV: begin
          CSVQuoteStrings := ReadBool(S_CSV, S_CSV_QuoteStrings,
            Dialog.CSVOptions.QuoteStrings);
          CSVComma := Str2Char(ReadString(S_CSV, S_CSV_Comma,
            Char2Str(Dialog.CSVOptions.Comma)));
          CSVQuote := Str2Char(ReadString(S_CSV, S_CSV_Quote,
            Char2Str(Dialog.CSVOptions.Quote)));
        end;
        // [Access]
        aeAccess: begin
          AccessTableName := ReadString(S_ACCESS, S_ACCESS_TableName,
            Dialog.AccessOptions.TableName);
          AccessCreateTable := ReadBool(S_ACCESS, S_ACCESS_CreateTable,
            Dialog.AccessOptions.CreateTable);
        end;
      end;
    end;
  finally
    AStrings.Free;
    FIniFile.Free;
  end;
end;

procedure TADO_QExportDialogF.SaveExportOptions(const FileName: string);
var
  i, j: Integer;
  FIniFile: TIniFile;
  AStrings: TStrings;
  prefix, str: string;
  xlsFormat: TxlsFieldFormat;
  LV: TListView;
begin
  FIniFile := TIniFile.Create(FileName);
  try
    ClearIniFile(FIniFile);
    AStrings := TStringList.Create;
    try
      with FIniFile do begin
        // [GENERAL]
        WriteInteger(S_GENERAL, S_ExportType, Integer(ExportType));
        WriteString(S_GENERAL, S_FileName, Self.FileName);
        WriteBool(S_GENERAL, S_ShowFile, ShowFile);
        WriteBool(S_GENERAL, S_PrintFile, PrintFile);
        WriteBool(S_GENERAL, S_GoToFirstRecord, GoToFirstRecord);
        WriteBool(S_GENERAL, S_ExportEmpty, ExportEmpty);
        WriteBool(S_GENERAL, S_CurrentRecordOnly, CurrentRecordOnly);
        WriteInteger(S_GENERAL, S_ExportRecCount, ExportRecCount);
        WriteInteger(S_GENERAL, S_SkipRecCount, SkipRecCount);
        WriteBool(S_GENERAL, S_AllowCaptions, AllowCaptions);
        WriteInteger(S_GENERAL, S_CaptionRow, CaptionRow);

        EraseSection(S_USER_FORMATS);
        if tshFormats.TabVisible then begin
          // [FORMATS]
          WriteString(S_FORMATS, S_Integer, IntegerFmt);
          WriteString(S_FORMATS, S_Float, FloatFmt);
          WriteString(S_FORMATS, S_Date, DateFmt);
          WriteString(S_FORMATS, S_Time, TimeFmt);
          WriteString(S_FORMATS, S_DateTime, DateTimeFmt);
          WriteString(S_FORMATS, S_Currency, CurrencyFmt);
          WriteString(S_FORMATS, S_BooleanTrue, BooleanTrue);
          WriteString(S_FORMATS, S_BooleanFalse, BooleanFalse);
          WriteString(S_FORMATS, S_NullString, NullString);
          // [USER_FORMATS]
          for i := 0 to lstUserFormats.Items.Count - 1 do
            WriteString(S_USER_FORMATS, lstUserFormats.Items[i].Caption,
              lstUserFormats.Items[i].SubItems[1]);
        end;
        // [FIELDS]
        EraseSection(S_FIELDS);
        for i := 0 to lstExportedFields.Items.Count - 1 do
          WriteString(S_FIELDS, S_Field + IntToStr(i),
            lstExportedFields.Items[i].Caption);
        // [HEADER] & [FOOTER]
        EraseSection(S_HEADER);
        EraseSection(S_FOOTER);
        if tshHeaderFooter.TabVisible then begin
          for i := 0 to memHeader.Lines.Count - 1 do
            WriteString(S_HEADER, S_Line + IntToStr(i), memHeader.Lines[i]);
          for i := 0 to memFooter.Lines.Count - 1 do
            WriteString(S_FOOTER, S_Line + IntToStr(i), memFooter.Lines[i]);
        end;
        // [CAPTIONS & WIDTH & ALIGN]
        EraseSection(S_CAPTIONS);
        EraseSection(S_WIDTH);
        EraseSection(S_ALIGN);
        if tshCaptions.TabVisible then begin
          for i := 1 to sgrCaptions.RowCount - 1 do begin
            WriteString(S_CAPTIONS, sgrCaptions.Cells[0, i],
              sgrCaptions.Cells[1, i]);
            if ExportType in [aeTXT, aeRTF, aeWord, aeHTML]
              then WriteString(S_ALIGN, sgrCaptions.Cells[0, i],
                sgrCaptions.Cells[2, i]);
            if ExportType in [aeTXT, aeRTF, aeWord, aeXLS]
              then WriteInteger(S_WIDTH, sgrCaptions.Cells[0, i],
                StrToInt(sgrCaptions.Cells[2 + Integer(ExportType <> aeXLS), i]));
          end;
        end;

        EraseSection(S_XLS);
        ReadSections(AStrings);
        for i := AStrings.Count - 1 downto 0 do
          if Pos(S_XLS_FIELD, AnsiUpperCase(AStrings[i])) > 0
            then EraseSection(AStrings[i]);
        EraseSection(S_RTF);
        EraseSection(S_HTML);
        EraseSection(S_SQL);
        EraseSection(S_XML);
        case ExportType of
          // [XLS]
          aeXLS: begin
            WriteString(S_XLS, S_PageHeader, XLSPageHeader);
            WriteString(S_XLS, S_PageFooter, XLSPageFooter);
            WriteString(S_XLS, S_SheetTitle, XLSSheetTitle);
            WriteInteger(S_XLS, S_StripType, Integer(XLSStripType));
            WriteBool(S_XLS, S_AutoCalcColWidth, XLSAutoCalcColWidth);

            for j := 1 to 3 do begin
              case j of
                1: begin
                  LV := lstXLSFields;
                  prefix := S_XLS_FIELD;
                end;
                2: begin
                  LV := lstXLSOptions;
                  prefix := S_XLS_OPTION;
                end;
                3: begin
                  LV := lstXLSStyles;
                  prefix := S_XLS_STYLE;
                end;
                else LV := nil
              end;
              for i := 0 to LV.Items.Count - 1 do begin
                str := prefix + AnsiUpperCase(LV.Items[i].Caption);
                xlsFormat := TxlsFieldFormat(LV.Items[i].Data);
                xlsFormat.SaveToIniFile(FIniFile, str);
              end;
            end;
          end;
          // [RTF]
          aeRTF, aeWord: begin
            SaveFontToIniFile(RTFExp.Options.DefaultFont, FIniFile, S_RTF_Default_Font);
            SaveFontToIniFile(RTFExp.Options.HeaderFont, FIniFile, S_RTF_Header_Font);
            WriteInteger(S_RTF, S_RTF_PageOrientation, Integer(RTFPageOrientation));
          end;
          // [HTML]
          aeHTML: begin
             WriteString(S_HTML, S_HTML_Title, HTMLTitle);
             WriteInteger(S_HTML, S_HTML_CSS, Integer(HTMLUsingCSS));
             WriteString(S_HTML, S_HTML_CSSFile, HTMLCSSFileName);
             WriteBool(S_HTML, S_HTML_OverwriteCSSFile, HTMLOverwriteCSSFile);

             WriteInteger(S_HTML, S_HTML_FileRecCount, HTMLFileRecCount);
             WriteBool(S_HTML, S_HTML_GenerateIndex, HTMLGenerateIndex);
             WriteString(S_HTML, S_HTML_IndexLinkTemplate, HTMLIndexLinkTemplate);
             WriteBool(S_HTML, S_HTML_NavigationOnTop, HTMLNavigationOnTop);
             WriteBool(S_HTML, S_HTML_NavigationOnBottom, HTMLNavigationOnBottom);
             WriteString(S_HTML, S_HTML_IndexLinkTitle, HTMLIndexLinkTitle);
             WriteString(S_HTML, S_HTML_FirstLinkTitle, HTMLFirstLinkTitle);
             WriteString(S_HTML, S_HTML_PriorLinkTitle, HTMLPriorLinkTitle);
             WriteString(S_HTML, S_HTML_NextLinkTitle, HTMLNextLinkTitle);
             WriteString(S_HTML, S_HTML_LastLinkTitle, HTMLLastLinkTitle);

             WriteString(S_HTML, S_HTML_FontName, HTMLFontName);
             WriteString(S_HTML, S_HTML_BackgroundFile, HTMLBackground);
             WriteString(S_HTML, S_HTML_BodyAdvanced, HTMLBodyAdvanced);
             WriteInteger(S_HTML, S_HTML_CellPadding, HTMLCellPadding);
             WriteInteger(S_HTML, S_HTML_CellSpacing, HTMLCellSpacing);
             WriteInteger(S_HTML, S_HTML_BorderWidth, HTMLBorderWidth);
             WriteString(S_HTML, S_HTML_TableBackground, HTMLTableBackground);
             WriteString(S_HTML, S_HTML_TableAdvanced, HTMLTableAdvanced);

             WriteString(S_HTML, S_HTML_BackgroundColor,
               ColorToString(HTMLBackgroundColor));
             WriteString(S_HTML, S_HTML_FontColor,
               ColorToString(HTMLFontColor));
             WriteString(S_HTML, S_HTML_HeadBackgroundColor,
               ColorToString(paHTMLColumnHead_1.Color));
             WriteString(S_HTML, S_HTML_HeadFontColor,
               ColorToString(laHTMLHead_1.Font.Color));
             WriteString(S_HTML, S_HTML_OddRowBackgroundColor,
               ColorToString(paHTMLOddRowCol_1.Color));
             WriteString(S_HTML, S_HTML_EvenRowBackgroundColor,
               ColorToString(paHTMLEvenRowCol_1.Color));
             WriteString(S_HTML, S_HTML_DataFontColor,
               ColorToString(laHTMLData_1.Font.Color));
             WriteString(S_HTML, S_HTML_LinkColor,
               ColorToString(laHTMLLink.Font.Color));
             WriteString(S_HTML, S_HTML_VLinkColor,
               ColorToString(laHTMLVLink.Font.Color));
             WriteString(S_HTML, S_HTML_ALinkColor,
               ColorToString(laHTMLALink.Font.Color));
          end;
          // [PDF]
          aePDF: begin
            WriteFloat(S_PDF, S_PDF_ColSpacing, PDFColSpacing);
            WriteFloat(S_PDF, S_PDF_RowSpacing, PDFRowSpacing);
            WriteInteger(S_PDF, S_PDF_GridLineWidth, PDFGridLineWidth);

            WriteInteger(S_PDF, S_PDF_PageFormat, Integer(PDFPageFormat));
            WriteInteger(S_PDF, S_PDF_PageUnits, Integer(PDFPageUnits));
            WriteInteger(S_PDF, S_PDF_PageOrientation,
              Integer(PDFPageOrientation));

            WriteInteger(S_PDF, S_PDF_PageWidth, FPDFPageWidth);
            WriteInteger(S_PDF, S_PDF_PageHeight, FPDFPageHeight);
            WriteInteger(S_PDF, S_PDF_PageMarginLeft, FPDFPageMarginLeft);
            WriteInteger(S_PDF, S_PDF_PageMarginRight, FPDFPageMarginRight);
            WriteInteger(S_PDF, S_PDF_PageMarginTop, FPDFPageMarginTop);
            WriteInteger(S_PDF, S_PDF_PageMarginBottom, FPDFPageMarginBottom);
            //--- Header
            WriteInteger(S_PDF_OPTION_HEADER, S_PDF_FontName,
              Integer(PDFExp.Options.HeaderFont.BaseFont));
            WriteInteger(S_PDF_OPTION_HEADER, S_PDF_FontEncoding,
              Integer(PDFExp.Options.HeaderFont.FontEncoding));
            WriteInteger(S_PDF_OPTION_HEADER, S_PDF_FontSize,
              Integer(PDFExp.Options.HeaderFont.FontSize));
            WriteString(S_PDF_OPTION_HEADER, S_PDF_FontColor,
              ColorToString(PDFExp.Options.HeaderFont.FontColor));
            //--- Caption
            WriteInteger(S_PDF_OPTION_CAPTION, S_PDF_FontName,
              Integer(PDFExp.Options.CaptionFont.BaseFont));
            WriteInteger(S_PDF_OPTION_CAPTION, S_PDF_FontEncoding,
              Integer(PDFExp.Options.CaptionFont.FontEncoding));
            WriteInteger(S_PDF_OPTION_CAPTION, S_PDF_FontSize,
              Integer(PDFExp.Options.CaptionFont.FontSize));
            WriteString(S_PDF_OPTION_CAPTION, S_PDF_FontColor,
              ColorToString(PDFExp.Options.CaptionFont.FontColor));
            //--- Data
            WriteInteger(S_PDF_OPTION_DATA, S_PDF_FontName,
              Integer(PDFExp.Options.DataFont.BaseFont));
            WriteInteger(S_PDF_OPTION_DATA, S_PDF_FontEncoding,
              Integer(PDFExp.Options.DataFont.FontEncoding));
            WriteInteger(S_PDF_OPTION_DATA, S_PDF_FontSize,
              Integer(PDFExp.Options.DataFont.FontSize));
            WriteString(S_PDF_OPTION_DATA, S_PDF_FontColor,
              ColorToString(PDFExp.Options.DataFont.FontColor));
            //--- Footer
            WriteInteger(S_PDF_OPTION_FOOTER, S_PDF_FontName,
              Integer(PDFExp.Options.FooterFont.BaseFont));
            WriteInteger(S_PDF_OPTION_FOOTER, S_PDF_FontEncoding,
              Integer(PDFExp.Options.FooterFont.FontEncoding));
            WriteInteger(S_PDF_OPTION_FOOTER, S_PDF_FontSize,
              Integer(PDFExp.Options.FooterFont.FontSize));
            WriteString(S_PDF_OPTION_FOOTER, S_PDF_FontColor,
              ColorToString(PDFExp.Options.FooterFont.FontColor));
          end;
          // [XML]
          aeXML: begin
            WriteBool(S_XML, S_XML_Standalone, XMLStandAlone);
            WriteString(S_XML, S_XML_Encoding, XMLEncoding);
          end;
          // [SQL]
          aeSQL: begin
            WriteString(S_SQL, S_SQL_TableName, SQLTableName);
            WriteBool(S_SQL, S_SQL_CreateTable, SQLCreateTable);
            WriteInteger(S_SQL, S_SQL_CommitRecCount, SQLCommitRecCount);
            WriteBool(S_SQL, S_SQL_CommitAfterScript, SQLCommitAfterScript);
            WriteString(S_SQL, S_SQL_CommitStatement, SQLCommitStatement);
            WriteString(S_SQL, S_SQL_StatementTerm, SQLStatementTerm);
          end;
          // [TXT]
          aeTXT: begin
            WriteBool(S_TXT, S_TXT_AutoCalcColWidth, TXTAutoCalcColWidth);
            WriteInteger(S_TXT, S_TXT_Spacing, TXTSpacing);
          end;
          // [CSV]
          aeCSV: begin
            WriteBool(S_CSV, S_CSV_QuoteStrings, CSVQuoteStrings);
            WriteString(S_CSV, S_CSV_Comma, Char2Str(CSVComma));
            WriteString(S_CSV, S_CSV_Quote, Char2Str(CSVQuote));
          end;
          // [Access]
          aeAccess: begin
            WriteString(S_ACCESS, S_ACCESS_TableName, AccessTableName);
            WriteBool(S_ACCESS, S_ACCESS_CreateTable, AccessCreateTable);
          end;
        end;
      end;
    finally
      AStrings.Free;
    end;
  finally
    FIniFile.Free;
  end;
end;

procedure TADO_QExportDialogF.bStartClick(Sender: TObject);

  function CalcAlignment(const Value: string): string;
  var
    Index: integer;
  begin
    Index := cbxColumnAlign.Items.IndexOf(Value);
    Result := 'Left';
    case Index of
      1: Result := 'Center';
      2: Result := 'Right';
    end;
  end;

var
  i, j: integer;
  str, ext: string;
begin
  if Dialog.AutoChangeFileExt then
    ChangeFileExtension;

  case ExportType of
    aeXLS: begin
      QuickExport := XLSExp;

      XLSExp.Options.PageHeader := XLSPageHeader;
      XLSExp.Options.PageFooter := XLSPageFooter;
      XLSExp.Options.SheetTitle := XLSSheetTitle;
      XLSExp.StripType := XLSStripType;
      XlsExp.AutoCalcColWidth := XLSAutoCalcColWidth;

      XLSExp.Options.HeaderFormat.Assign(TxlsFormat(lstXLSOptions.Items[0].Data));
      XLSExp.Options.CaptionsFormat.Assign(TxlsFormat(lstXLSOptions.Items[1].Data));
      XLSExp.Options.AggregateFormat.Assign(TxlsFormat(lstXLSOptions.Items[2].Data));
      XLSExp.Options.FooterFormat.Assign(TxlsFormat(lstXLSOptions.Items[3].Data));
      XLSExp.FieldFormats.Clear;
      if lstExportedFields.Items.Count > 0 then begin
        for i := 0 to lstExportedFields.Items.Count - 1 do
          for j := 0 to lstXLSFields.Items.Count - 1 do
            if AnsiCompareText(lstExportedFields.Items[i].Caption,
                               lstXLSFields.Items[j].Caption) = 0 then
              with XLSExp.FieldFormats.Add do begin
                FieldName := lstXLSFields.Items[j].Caption;
                Assign(TxlsFieldFormat(lstXLSFields.Items[j].Data));
              end;
      end
      else begin
        for i := 0 to lstAvailableFields.Items.Count - 1 do
          for j := 0 to lstXLSFields.Items.Count - 1 do
            if AnsiCompareText(lstAvailableFields.Items[i].Caption,
                               lstXLSFields.Items[j].Caption) = 0 then
              with XLSExp.FieldFormats.Add do begin
                FieldName := lstXLSFields.Items[j].Caption;
                Assign(TxlsFormat(lstXLSFields.Items[j].Data));
              end;
      end;
      XLSExp.StripStyles.Clear;
      if lstXLSStyles.Items.Count > 0 then
      for i := 0 to lstXLSStyles.Items.Count - 1 do
        XLSExp.StripStyles.Add.Assign(TxlsFormat(lstXLSStyles.Items[i].Data));
    end;
    aeWord,
    aeRTF: begin
      QuickExport := RTFExp;
      RTFExp.Options.PageOrientation := RTFPageOrientation;
    end;
    aeHTML: begin
      QuickExport := HTMLExp;
      with HTMLExp do begin
        Title := HTMLTitle;
        UsingCSS := HTMLUsingCSS;
        CSSFileName := HTMLCSSFileName;
        OverwriteCSSFile := HTMLOverwriteCSSFile;

        MaxRecords := 0;
        if HTMLUseMultiFileExport then
          MaxRecords := HTMLFileRecCount;
        GenerateIndex := HTMLGenerateIndex;
        Navigation.IndexLinkTemplate := HTMLIndexLinkTemplate;
        Navigation.OnTop := HTMLNavigationOnTop;
        Navigation.OnBottom := HTMLNavigationOnBottom;
        Navigation.IndexLinkTitle := HTMLIndexLinkTitle;
        Navigation.FirstLinkTitle := HTMLFirstLinkTitle;
        Navigation.PriorLinkTitle := HTMLPriorLinkTitle;
        Navigation.NextLinkTitle := HTMLNextLinkTitle;
        Navigation.LastLinkTitle := HTMLLastLinkTitle;

        HTMLOptions.TextFont.Name := HTMLFontName;
        HTMLOptions.BackgroundFileName := HTMLBackground;
        HTMLOptions.AdvancedAttributes.Text := HTMLBodyAdvanced;

        TableOptions.CellPadding := HTMLCellPadding;
        TableOptions.CellSpacing := HTMLCellSpacing;
        TableOptions.Border := HTMLBorderWidth;
        TableOptions.BackgroundFileName := HTMLTableBackground;
        TableOptions.AdvancedAttributes.Text := HTMLTableAdvanced;

        HTMLOptions.BackgroundColor := HTMLBackgroundColor;
        HTMLOptions.TextFont.Color := HTMLFontColor;

        TableOptions.HeadersRowBgColor := HTMLHeadBackgroundColor;
        TableOptions.HeadersRowFontColor := HTMLHeadFontColor;
        TableOptions.OddRowBgColor := HTMLOddRowBackgroundColor;
        TableOptions.TableBgColor := HTMLEvenRowBackgroundColor;
        TableOptions.TableFontColor := HTMLDataFontColor;

        HTMLOptions.LinkColor := HTMLLinkColor;
        HTMLOptions.VLinkColor := HTMLVLinkColor;
        HTMLOptions.ALinkColor := HTMLALinkColor;
      end;
    end;
    aeTXT,
    aeCSV,
    aeDIFF,
    aeSylk: begin
      QuickExport := ASCIIExp;
      case ExportType of
        aeTXT: begin
          ASCIIExp.ExportType := etTXT;
          ASCIIExp.AutoCalcColWidth := TXTAutoCalcColWidth;
          ASCIIExp.TXTSpacing := TXTSpacing;
        end;
        aeCSV: begin
          ASCIIExp.ExportType := etCSV;
          ASCIIExp.CSVQuoteStrings := CSVQuoteStrings;
          ASCIIExp.CSVComma := CSVComma;
          ASCIIExp.CSVQuote := CSVQuote;
        end;
        aeDIFF: ASCIIExp.ExportType := etDIF;
        aeSylk: ASCIIExp.ExportType := etSYLK;
      end;
    end;
    aeXML: begin
      QuickExport := XMLExp;
      XMLExp.Options.StandAlone := XMLStandAlone;
      XMLExp.Options.Encoding := XMLEncoding;
    end;
    aeDBF: QuickExport := DBFExp;
    aeLaTeX: QuickExport := LaTeXExp;
    aeSQL: begin
      QuickExport := SQLExp;
      SQLExp.TableName := SQLTableName;
      if SQLExp.TableName = EmptyStr then begin
        str := ExtractFileName(FileName);
        ext := ExtractFileExt(FileName);
        if ext <> EmptyStr then
          Delete(str, Length(str) - Length(ext) + 1, Length(ext));
        SQLExp.TableName := AnsiUpperCase(str);
      end;
      SQLExp.CreateTable := SQLCreateTable;
      SQLExp.CommitRecCount := SQLCommitRecCount;
      SQLExp.CommitAfterScript := SQLCommitAfterScript;
      SQLExp.CommitStatement := SQLCommitStatement;
      if Length(SQLStatementTerm) > 0 then
        SQLExp.StatementTerm := SQLStatementTerm[1];
    end;
    aeClipboard: QuickExport := ClipExp;

    aePDF: begin
      QuickExport := PDFExp;
      PDFExp.Options.ColSpacing := PDFColSpacing;
      PDFExp.Options.RowSpacing := PDFRowSpacing;
      PDFExp.Options.GridLineWidth := PDFGridLineWidth;

      PDFExp.Options.PageOptions.Format := PDFPageFormat;
      if PDFPageFormat = pfUser then begin
        PDFExp.Options.PageOptions.Width := FPDFPageWidth;
        PDFExp.Options.PageOptions.Height := FPDFPageHeight;
      end;
      PDFExp.Options.PageOptions.Orientation := PDFPageOrientation;
      PDFExp.Options.PageOptions.MarginLeft := FPDFPageMarginLeft;
      PDFExp.Options.PageOptions.MarginRight := FPDFPageMarginRight;
      PDFExp.Options.PageOptions.MarginTop := FPDFPageMarginTop;
      PDFExp.Options.PageOptions.MarginBottom := FPDFPageMarginBottom;
    end;
  end;
  QuickExport.AutoCalcStrType := Dialog.AutoCalcStrType;
  QuickExport.GoToFirstRecord := GoToFirstRecord;
  QuickExport.CurrentRecordOnly := CurrentRecordOnly;
  QuickExport.ExportEmpty := ExportEmpty;
  QuickExport.ExportRecCount := ExportRecCount;
  QuickExport.SkipRecCount := SkipRecCount;

  QuickExport.Header.Assign(memHeader.Lines);
  QuickExport.Footer.Assign(memFooter.Lines);
  QuickExport.ExportedFields.Clear;
  if lstExportedFields.Items.Count > 0 then
    for i := 0 to lstExportedFields.Items.Count - 1 do
      QuickExport.ExportedFields.Add(lstExportedFields.Items[i].Caption)
  else
    for i := 0 to lstAvailableFields.Items.Count - 1 do
      if not Dialog.Columns[Integer(lstAvailableFields.Items[i].Data)].IsBlob then
        QuickExport.ExportedFields.Add(lstAvailableFields.Items[i].Caption);

  QuickExport.Formats.IntegerFormat := IntegerFmt;
  QuickExport.Formats.FloatFormat := FloatFmt;
  QuickExport.Formats.DateFormat := DateFmt;
  QuickExport.Formats.TimeFormat := TimeFmt;
  QuickExport.Formats.DateTimeFormat := DateTimeFmt;
  QuickExport.Formats.CurrencyFormat := CurrencyFmt;
  QuickExport.Formats.BooleanTrue := BooleanTrue;
  QuickExport.Formats.BooleanFalse := BooleanFalse;
  QuickExport.Formats.NullString := NullString;

  QuickExport.UserFormats.Clear;
  for i := 0 to lstUserFormats.Items.Count - 1 do
    QuickExport.UserFormats.Values[lstUserFormats.Items[i].Caption] :=
      lstUserFormats.Items[i].SubItems[1];

  QuickExport.ExportSource := ExportSource;
  QuickExport.DataSet := DataSet;
  QuickExport.ListView := ListView;
  QuickExport.DBGrid := DBGrid;
  QuickExport.StringGrid := StringGrid;

  if QuickExport is TQExportText then
    with QuickExport as TQExportText do begin
      FileName := Self.FileName;
      ShowFile :=  Self.ShowFile;
      PrintFile := Self.PrintFile;
    end;

  if QuickExport is TQExportFormatText then begin
    (QuickExport as TQExportFormatText).AllowCaptions := AllowCaptions;
    (QuickExport as TQExportFormatText).CaptionRow := CaptionRow;
  end;

  if QuickExport is TQExportDatabase then
    with QuickExport as TQExportDatabase do begin
      DatabaseName := Self.FileName;
      ShowFile := Self.ShowFile;
      PrintFile := Self.PrintFile;
    end;

  QuickExport.Captions.Clear;
  for i := 1 to sgrCaptions.RowCount - 1 do begin
    if AnsiCompareStr(sgrCaptions.Cells[0, i], sgrCaptions.Cells[1, i]) <> 0 then
      QuickExport.Captions.Values[sgrCaptions.Cells[0, i]] := sgrCaptions.Cells[1, i];

    if QuickExport is TQExportASCII then
      with QuickExport as TQExportASCII do begin
        ColumnsAlign.Values[sgrCaptions.Cells[0, i]] := 
          CalcAlignment(sgrCaptions.Cells[2, i]);
        ColumnsWidth.Values[sgrCaptions.Cells[0, i]] := sgrCaptions.Cells[3, i];
      end;

    if QuickExport is TQExportRTF then
      with QuickExport as TQExportRTF do begin
        ColumnsAlign.Values[sgrCaptions.Cells[0, i]] := 
          CalcAlignment(sgrCaptions.Cells[2, i]);
        ColumnsWidth.Values[sgrCaptions.Cells[0, i]] := sgrCaptions.Cells[3, i];
      end;

    if QuickExport is TQExportPDF then
      with QuickExport as TQExportPDF do begin
        ColumnsAlign.Values[sgrCaptions.Cells[0, i]] := 
          CalcAlignment(sgrCaptions.Cells[2, i]);
        ColumnsWidth.Values[sgrCaptions.Cells[0, i]] := sgrCaptions.Cells[3, i];
      end;

    if QuickExport is TQExportHTML then
      with QuickExport as TQExportHTML do
        ColumnsAlign.Values[sgrCaptions.Cells[0, i]] := 
          CalcAlignment(sgrCaptions.Cells[2, i]);

    if QuickExport is TQExportXLS then
      with QuickExport as TQExportXLS do
        ColumnsWidth.Values[sgrCaptions.Cells[0, i]] := sgrCaptions.Cells[2, i];
  end;

  FProgress := TQExportDialogProgressF.CreateProgress(Self, QuickExport);
  try
    FProgress.Show;
    QuickExport.Execute;
    if ShowFile then begin
      if not QuickExport.Aborted and Assigned(FProgress) then begin
        PostMessage(FProgress.Handle, WM_QEXPORT_PROGRESS, QEP_DONE, 0);
        Application.ProcessMessages;
      end;
    end
    else
      while FProgress.ModalResult <> mrOk do
        Application.ProcessMessages;
  finally
    FProgress.Free;
  end;
end;

procedure TADO_QExportDialogF.OnBeginExport(Sender: TObject);
begin
  if Assigned(FProgress) then begin
    PostMessage(FProgress.Handle, WM_QEXPORT_PROGRESS, QEP_START, 0);
    Application.ProcessMessages;
  end;
  if Assigned(Dialog.OnBeginExport) then Dialog.OnBeginExport(QuickExport);
end;

procedure TADO_QExportDialogF.OnEndExport(Sender: TObject);
begin
  if Assigned(FProgress) then begin
    if not QuickExport.Aborted then
      PostMessage(FProgress.Handle, WM_QEXPORT_PROGRESS, QEP_FINISH, 0);
    Application.ProcessMessages;
  end;
  if Assigned(Dialog.OnEndExport) then Dialog.OnEndExport(QuickExport);
end;

procedure TADO_QExportDialogF.OnSkippedRecord(Sender: TObject;
  RecNo: Integer);
begin
  if Assigned(FProgress) then begin
    PostMessage(FProgress.Handle, WM_QEXPORT_PROGRESS, QEP_SKIPPED, 0);
    Application.ProcessMessages;
  end;
  if Assigned(Dialog.OnSkippedRecord) then
    Dialog.OnSkippedRecord(QuickExport, RecNo);
end;

procedure TADO_QExportDialogF.OnBeforeExportRow(Sender: TObject;
  Row: TQExportRow; var Accept: Boolean);
begin
  if Assigned(Dialog.OnBeforeExportRow) then
    Dialog.OnBeforeExportRow(QuickExport, Row, Accept);
end;

procedure TADO_QExportDialogF.OnExportedRecord(Sender: TObject; RecNo: Integer);
begin
  if Assigned(Dialog.OnExportedRecord) then
    Dialog.OnExportedRecord(QuickExport, RecNo);
  if Assigned(FProgress) then begin
    PostMessage(FProgress.Handle, WM_QEXPORT_PROGRESS, QEP_EXPORTED, 0);
    Application.ProcessMessages;
  end;
end;

procedure TADO_QExportDialogF.OnFetchedRecord(Sender: TObject;
  RecNo: Integer);
begin
  if Assigned(Dialog.OnFetchedRecord) then
    Dialog.OnFetchedRecord(QuickExport, RecNo);
  if Assigned(FProgress) then begin
    PostMessage(FProgress.Handle, WM_QEXPORT_PROGRESS, QEP_FETCHED, 0);
    Application.ProcessMessages;
  end;
end;

procedure TADO_QExportDialogF.OnStopExport(Sender: TObject;
  var CanContinue: Boolean);
begin
  if Assigned(FProgress) then begin
    PostMessage(FProgress.Handle, WM_QEXPORT_PROGRESS, QEP_PAUSE, 0);
    Application.ProcessMessages;
  end;
  CanContinue := Application.MessageBox(PChar(QEM_StopExportConfirm),
                            PChar(QEM_StopExportCaption),
                            MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = ID_NO;
  if Assigned(Dialog.OnStopExport) then Dialog.OnStopExport(Dialog, CanContinue);
  if Assigned(FProgress) then begin
    if CanContinue
      then PostMessage(FProgress.Handle, WM_QEXPORT_PROGRESS, QEP_CONTINUE, 0)
      else PostMessage(FProgress.Handle, WM_QEXPORT_PROGRESS, QEP_ABORT, 0);
    Application.ProcessMessages;
  end;
end;

procedure TADO_QExportDialogF.OnGetExportText(Sender: TObject;
  ColNo: Integer; var Text: String);
begin
  if Assigned(Dialog.OnGetExportText) then
    Dialog.OnGetExportText(QuickExport, ColNo, Text);
end;

procedure TADO_QExportDialogF.SetCaptions;
var
  DC: HDC;
  Size: TSize;
begin
  laFileName.Caption := QED_FileName;
  bBrowse.Caption := QED_SelectFile;
  chShowFile.Caption := QED_OpenAfterExport;
  chPrintFile.Caption := QED_PrintAfterExport;
  // Export Type
  tshExportType.Caption := QED_ExportType_Title;
  tshExportFormats.Caption := QED_ExportType_Formats;
  rgExportType.Caption := QED_ExportType_ExportTo;
  bTools.Caption := QED_Tools;
  miSaveOptions.Caption := QED_ExportType_Save;
  miLoadOptions.Caption := QED_ExportType_Load;

  tshExportOptions.Caption := QED_ExportType_Options;
  gbExportConstraints.Caption := QED_ExportType_Constraints;
  chGoToFirstRecord.Caption := QED_ExportType_Options_GoToFirstRecord;
  chCurrentRecordOnly.Caption := QED_ExportType_Options_CurrentRecordOnly;
  chExportEmpty.Caption := QED_ExportType_Options_ExportEmpty;
  laSkipRecCount_01.Caption := QED_ExportType_Options_SkipRecCount;
  edSkipRecCount.Left := laSkipRecCount_01.Left + laSkipRecCount_01.Width + 4;
  laSkipRecCount_02.Left := edSkipRecCount.Left + edSkipRecCount.Width + 4;
  laSkipRecCount_02.Caption := QED_ExportType_Options_Records;


  rbExportAllRecords.Caption := QED_ExportType_ExportAllRecords;
  rbExportOnly.Caption := QED_ExportType_Options_ExportRecCount;
  DC := GetDC(rbExportOnly.Handle);
  try
    GetTextExtentPoint32(DC, PChar(rbExportOnly.Caption),
      Length(rbExportOnly.Caption), Size);
  finally
    ReleaseDC(rbExportOnly.Handle, DC);
  end;
  rbExportOnly.Width := Size.cx;
  edExportRecCount.Left := rbExportOnly.Left + rbExportOnly.Width + 4;
  laExportRecCount_02.Left := edExportRecCount.Left + edExportRecCount.Width + 4;
  laExportRecCount_02.Caption := QED_ExportType_Options_Records;

  bStart.Caption := QED_ExportType_Start;
  bCancel.Caption := QED_ExportType_Close;

  // Fields
  tshFields.Caption :=  QED_Fields_Title;
  laAvailableFields.Caption :=  QED_Fields_Available;
  laExportedFields.Caption := QED_Fields_Exported;
  bAddOneExportedField.Caption := QED_Fields_Add;
  bAddAllExportedField.Caption := QED_Fields_AddAll;
  bDelOneExportedField.Caption := QED_Fields_Remove;
  bDelAllExportedField.Caption := QED_Fields_RemoveAll;

  // Formats
  tshFormats.Caption := QED_Formats_Title;
  gbStandardFormats.Caption := QED_Formats_Common;
  laIntegerFormat.Caption := QED_Formats_Integer;
  laFloatFormat.Caption := QED_Formats_Float;
  laDateFormat.Caption := QED_Formats_Date;
  laTimeFormat.Caption := QED_Formats_Time;
  laDateTimeFormat.Caption := QED_Formats_DateTime;
  laCurrencyFormat.Caption := QED_Formats_Currency;
  laBooleanTrue.Caption := QED_Formats_BooleanTrue;
  laBooleanFalse.Caption := QED_Formats_BooleanFalse;
  laNullString.Caption := QED_Formats_NullString;
  gbUserFormat.Caption := QED_Formats_User;
  bAddUserFormat.Caption := QED_Formats_Add;
  bEditUserFormat.Caption := QED_Formats_Edit;
  bDeleteUserFormat.Caption := QED_Formats_Delete;
  bClearUserFormats.Caption := QED_Formats_Clear;

  // Header & Footer
  tshHeaderFooter.Caption := QED_Header_Footer_Title;
  laHeader.Caption := QED_Header_Footer_Header;
  laFooter.Caption := QED_Header_Footer_Footer;

  // Captions
  tshCaptions.Caption := QED_Captions_Title;
  chAllowCaptions.Caption := QED_Captions_AllowCaptions;
  cbxColumnAlign.Items.Clear;
  cbxColumnAlign.Items.Add(QED_Align_Left);
  cbxColumnAlign.Items.Add(QED_Align_Center);
  cbxColumnAlign.Items.Add(QED_Align_Right);
  laCaptionRow.Caption := QED_StringGrid_CaptionRow;

  // Word / RTF
  tshRTF.Caption := QED_RTF_Title;
  laRTFDefaultFont.Caption := QED_RTF_DefaultFont;
  laRTFHeaderFont.Caption := QED_RTF_HeaderFont;
  bRTFDefaultFont.Caption := QED_SelectFile;
  bRTFHeaderFont.Caption := QED_SelectFile;
  rgRTFPageOrientation.Caption := QED_RTF_PageOrientation;
  rgRTFPageOrientation.Items.Clear;
  rgRTFPageOrientation.Items.Add(QEPO_Portrait);
  rgRTFPageOrientation.Items.Add(QEPO_Landscape);

  // XML
  tshXML.Caption := QED_XML_Title;
  chXMLStandAlone.Caption := QED_XML_Standalone;
  laXMLEncoding.Caption := QED_XML_Encoding;

  // SQL
  tshSQL.Caption := QED_SQL_Title;
  gbSQLTableOptions.Caption := QED_SQL_TableOptions;
  chSQLCreateTable.Caption := QED_SQL_AddCreateTable;
  laSQLTableName.Caption := QED_SQL_TableName;
  gbSQLCommit.Caption := QED_SQL_Commit;
  laSQLUseCommit_01.Caption := QED_SQL_CommitAfter_01;
  laSQLUseCommit_02.Caption := QED_SQL_CommitAfter_02;
  chSQLCommitAfterScript.Caption := QED_SQL_CommitAfterScript;
  laSQLCommitStatement.Caption := QED_SQL_CommitStatement;
  gbSQLMisc.Caption := QED_SQL_Other;
  laSQLNullString.Caption := QED_SQL_NullAs;
  //edSQLNullString.Left := laSQLNullString.Left + laSQLNullString.Width + 4;
  laSQLStatementTerm.Caption := QED_SQL_StatementTerm;

  // HTML
  tshHTML.Caption := QED_HTML_Title;
  tshHTMLPreview.Caption := QED_HTML_Preview_Title;
  laHTMLFont.Caption := QED_HTML_Preview_DefaultText;
  laHTMLLink.Caption := QED_HTML_Preview_NonVisitedLink;
  laHTMLVLink.Caption := QED_HTML_Preview_VisitedLink;
  laHTMLALink.Caption := QED_HTML_Preview_ActiveLink;
  laHTMLTemplate.Caption := QED_HTML_Preview_Template;
  bHTMLSaveTemplate.Caption := QED_HTML_Preview_SaveTemplate;
  bHTMLLoadTemplate.Caption := QED_HTML_Preview_LoadTemplate;
  tshHTMLBasic.Caption := QED_HTML_Basic_Title;
  laHTMLTitle.Caption := QED_HTML_Basic_PageTitle;
  gbHTMLUsingCSS.Caption := QED_HTML_Basic_CSS;
  rbInternal.Caption := QED_HTML_Basic_CSSInternal;
  rbExternal.Caption := QED_HTML_Basic_CSSExternal;
  laHTMLCSSFileName.Caption := QED_HTML_Basic_CSSFileName;
  edHTMLCSSFileName.Left := laHTMLCSSFileName.Left + laHTMLCSSFileName.Width + 4;
  bvHTMLCSSFileName.Left := edHTMLCSSFileName.Left + edHTMLCSSFileName.Width + 2;
  btnHTMLCSSFileName.Left := bvHTMLCSSFileName.Left + 1;
  chHTMLOverwriteCSSFile.Caption := QED_HTML_Basic_OverwriteCSSFile;

  tshHTMLMultiFile.Caption := QED_HTML_MultiFile_Title;
  gbHTMLMultifileOptions.Caption := QED_HTML_Basic_MultiFile_Options;
  chHTMLUseMultiFileExport.Caption := QED_HTML_Basic_MultiFile_Use;
  laHTMLFileRecCount_01.Caption := QED_HTML_Basic_MultiFile_RecCount_01;
  edHTMLFileRecCount.Left := laHTMLFileRecCount_01.Left +
    laHTMLFileRecCount_01.Width + 4;
  laHTMLFileRecCount_02.Left := edHTMLFileRecCount.Left +
    edHTMLFileRecCount.Width + 4;
  laHTMLFileRecCount_02.Caption := QED_HTML_Basic_MultiFile_RecCount_02;
  chHTMLGenerateIndex.Caption := QED_HTML_Basic_MultiFile_GenerateIndex;
  gbHTMLNavigation.Caption := QED_HTML_Basic_MultiFile_Navigation;
  laHTMLIndexLinkTemplate.Caption := QED_HTML_MultiFile_IndexLinkTemplate;
  chHTMLNavigationOnTop.Caption := QED_HTML_Basic_MultiFile_Navigation_OnTop;
  chHTMLNavigationOnBottom.Caption := QED_HTML_Basic_MultiFile_Navigation_OnBottom;
  laHTMLIndexLinkTitle.Caption := QED_HTML_Basic_MultiFile_IndexLinkTitle;
  laHTMLFirstLinkTitle.Caption := QED_HTML_Basic_MultiFile_FirstLinkTitle;
  laHTMLPriorLinkTitle.Caption := QED_HTML_Basic_MultiFile_PriorLinkTitle;
  laHTMLNextLinkTitle.Caption := QED_HTML_Basic_MultiFile_NextLinkTitle;
  laHTMLLastLinkTitle.Caption := QED_HTML_Basic_MultiFile_LastLinkTitle;

  tshHTMLAdvanced.Caption := QED_HTML_Advanced_Title;
  gbHTMLBodyOptions.Caption := QED_HTML_Advanced_Body_Options;
  laHTMLBodyFontName.Caption := QED_HTML_Advanced_Body_FontName;
  laHTMLBackground.Caption := QED_HTML_Advanced_Body_Background;
  laHTMLBodyAdvanced.Caption := QED_HTML_Advanced_Body_Attributes;
  gbHTMLTableOptions.Caption := QED_HTML_Advanced_Table_Options;
  laHTMLCellPadding.Caption := QED_HTML_Advanced_Table_CellPadding;
  laHTMLCellSpacing.Caption := QED_HTML_Advanced_Table_CellSpasing;
  laHTMLBorderWidth.Caption := QED_HTML_Advanced_Table_Border;
  laHTMLTableBackground.Caption := QED_HTML_Advanced_Table_Background;
  laHTMLTableAdvanced.Caption := QED_HTML_Advanced_Table_Attributes;

  // XLS
  tshXLS.Caption := QED_XLS_Title;

  tshXLSAdvanced.Caption := QED_XLS_Advanced_Title;
  laXLSPageHeader.Caption := QED_XLS_Page_Header;
  laXLSPageFooter.Caption := QED_XLS_Page_Footer;
  laXLSSheetTitle.Caption := QED_XLS_Sheet_Title;
  chXLSAutoCalcColWidth.Caption := QED_XLS_AutoCalcColWidth;

  tshXLSDataFormat.Caption := QED_XLS_DataFormat_Title;
  tshXLSFields.Caption := QED_XLS_DataFormat_Fields;
  tshXLSOptions.Caption := QED_XLS_DataFormat_Options;
  tshXLSStyles.Caption := QED_XLS_DataFormat_Styles;
  tbtAddXLSStyle.Hint := QED_XLS_DataFormat_Styles_Add;
  tbtDelXLSStyle.Hint := QED_XLS_DataFormat_Styles_Del;
  tbtUpXLSStyle.Hint := QED_XLS_DataFormat_Styles_Up;
  tbtDownXLSStyle.Hint := QED_XLS_DataFormat_Styles_Down;
  tbtSaveXLSStyle.Hint := QED_XLS_DataFormat_Styles_Save;
  tbtLoadXLSStyle.Hint := QED_XLS_DataFormat_Styles_Load;
  rgXLSStripType.Caption := QED_XLS_DataFormat_Styles_StripStyle_Caption;
  rgXLSStripType.Items.Clear;
  rgXLSStripType.Items.Add(QED_XLS_DataFormat_Styles_StripStyle_None);
  rgXLSStripType.Items.Add(QED_XLS_DataFormat_Styles_StripStyle_Col);
  rgXLSStripType.Items.Add(QED_XLS_DataFormat_Styles_StripStyle_Row);
  rgXLSStripType.ItemIndex := Integer(XLSExp.StripType);

  btnXLSResetItem.Caption := QED_XLS_Reset_Item;
  btnXLSResetAll.Caption := QED_XLS_Reset_All;
  laXLSSampleCell.Caption := QED_XLS_SampleCell;

  tshXLSFont.Caption := QED_XLS_Font_Title;
  laXLSFont.Caption := QED_XLS_Font;
  laXLSFontSize.Caption := QED_XLS_FontSize;
  btnFontColor.Hint := QED_XLS_Font_Color;
  btnFontBold.Hint := QED_XLS_Font_Bold;
  btnFontItalic.Hint := QED_XLS_Font_Italic;
  btnFontStrikeOut.Hint := QED_XLS_Font_StrikeOut;
  btnUnderlineSingle.Hint := QED_XLS_Underline_Single;
  btnUnderlineSingleAccounting.Hint := QED_XLS_Underline_Single_Accounting;
  btnUnderlineDouble.Hint := QED_XLS_Underline_Double;
  btnUnderlineDoubleAccounting.Hint := QED_XLS_Underline_Double_Accounting;
  btnHorizontalLeft.Hint := QED_XLS_Alignment_Horizontal_Left;
  btnHorizontalCenter.Hint := QED_XLS_Alignment_Horizontal_Center;
  btnHorizontalRight.Hint := QED_XLS_Alignment_Horizontal_Right;
  btnHorizontalFill.Hint := QED_XLS_Alignment_Horizontal_Fill;
  btnVerticalTop.Hint := QED_XLS_Alignment_Vertical_Top;
  btnVerticalCenter.Hint := QED_XLS_Alignment_Vertical_Center;
  btnVerticalBottom.Hint := QED_XLS_Alignment_Vertical_Bottom;

  tshXLSBorders.Caption := QED_XLS_Borders_Title;
  btnBorderTop.Hint := QED_XLS_Border_Top;
  btnBorderTopColor.Hint := QED_XLS_Border_Top_Color;
  btnBorderBottom.Hint := QED_XLS_Border_Bottom;
  btnBorderBottomColor.Hint := QED_XLS_Border_Bottom_Color;
  btnBorderLeft.Hint := QED_XLS_Border_Left;
  btnBorderLeftColor.Hint := QED_XLS_Border_Left_Color;
  btnBorderRight.Hint := QED_XLS_Border_Right;
  btnBorderRightColor.Hint := QED_XLS_Border_Right_Color;

  tshXLSFill.Caption := QED_XLS_Fill_Title;
  btnFillBackground.Hint := QED_XLS_Fill_Background;
  btnFillForeground.Hint := QED_XLS_Fill_Foreground;

  tshXLSAggregate.Caption := QED_XLS_Aggregate_Title;
  rgXLSFunction.Caption := QED_XLS_Function;
  rgXLSFunction.Items.Clear;
  rgXLSFunction.Items.Add(QED_XLS_Function_None);
  rgXLSFunction.Items.Add(QED_XLS_Function_Sum);
  rgXLSFunction.Items.Add(QED_XLS_Function_Avg);
  rgXLSFunction.Items.Add(QED_XLS_Function_Min);
  rgXLSFunction.Items.Add(QED_XLS_Function_Max);

  // ASCII
  tshASCII.Caption := QED_ASCII_Title;
  gbTXTOptions.Caption := QED_TXT_Title;
  chTXTAutoCalcColWidth.Caption := QED_TXT_AutoCalcColWidth;
  laTXTSpacing.Caption := QED_TXT_Spacing;
  gbCSVOptions.Caption := QED_CSV_Title;
  chCSVQuoteStrings.Caption := QED_CSV_QuoteStrings;
  laCSVComma.Caption := QED_CSV_Comma;
  laCSVQuote.Caption := QED_CSV_Quote;

  // Access
  tshAccess.Caption := QED_Access_Title;
  gbAccessTableOptions.Caption := QED_Access_TableOptions;
  laAccessTableName.Caption := QED_Access_TableName;
  chAccessCreateTable.Caption := QED_Access_CreateTable;

  //PDF
  tshPDF.Caption := QED_PDF_Title;
  laPDFFontName.Caption := QED_PDF_FontName;
  laPDFFontEncoding.Caption := QED_PDF_FontEncoding;
  laPDFFontSize.Caption := QED_PDF_FontSize;
  sbPDFFontColor.Caption := QED_PDF_FontColor;
  paPDFSample.Caption := QED_PDF_Sample;
  tshPDFGridOptions.Caption := QED_PDF_GridOptions;
  laPDFColSpacing.Caption := QED_PDF_ColSpacing;
  laPDFRowSpacing.Caption := QED_PDF_RowSpacing;
  laPDFGridLineWidth.Caption := QED_PDF_GridLineWidth;

  tshPDFPageOptions.Caption := QED_PDF_PageOptions;
  laPDFPageFormat.Caption := QED_PDF_PageSize;
  cbPDFPageFormat.Items.Clear;
  cbPDFPageFormat.Items.Add(QEPF_Letter);
  cbPDFPageFormat.Items.Add(QEPF_Legal);
  cbPDFPageFormat.Items.Add(QEPF_A3);
  cbPDFPageFormat.Items.Add(QEPF_A4);
  cbPDFPageFormat.Items.Add(QEPF_A5);
  cbPDFPageFormat.Items.Add(QEPF_B5_JIS);
  cbPDFPageFormat.Items.Add(QEPF_US_Std_Fanfold);
  cbPDFPageFormat.Items.Add(QEPF_Fanfold);
  cbPDFPageFormat.Items.Add(QEPF_User);
  cbPDFPageFormat.ItemIndex := Integer(Dialog.PDFOptions.PageOptions.Format);
  laPDFPageUnits.Caption := QED_PDF_PageUnits;
  cbPDFPageUnits.Items.Clear;
  cbPDFPageUnits.Items.Add(QEUN_Inch);
  cbPDFPageUnits.Items.Add(QEUN_Millimeter);
  cbPDFPageUnits.Items.Add(QEUN_Dot);
  cbPDFPageUnits.ItemIndex := Integer(Dialog.PDFOptions.PageOptions.Units);
  laPDFPageOrientation.Caption := QED_PDF_PageOrientation;
  cbPDFPageOrientation.Items.Clear;
  cbPDFPageOrientation.Items.Add(QEPO_Portrait);
  cbPDFPageOrientation.Items.Add(QEPO_Landscape);
  cbPDFPageOrientation.ItemIndex := Integer(Dialog.PDFOptions.PageOptions.Orientation);
  gbPDFMargins.Caption := QED_PDF_Margins;
  laPDFPageMarginLeft.Caption := QED_PDF_MarginLeft;
  laPDFPageMarginRight.Caption := QED_PDF_MarginRight;
  laPDFPageMarginTop.Caption := QED_PDF_MarginTop;
  laPDFPageMarginBottom.Caption := QED_PDF_MarginBottom;
end;

procedure TADO_QExportDialogF.FieldsListDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TListView);// and (Source <> Sender);
end;

procedure TADO_QExportDialogF.rgXLSFunctionClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  TxlsFieldFormat(FXLSListItem.Data).Aggregate :=
    TxlsAggregate(rgXLSFunction.ItemIndex);
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemAggregate, false);
end;

procedure TADO_QExportDialogF.btnXLSResetItemClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  TxlsFieldFormat(FXLSListItem.Data).SetDefault;
  if CurrXLSListView.SelCount > 1 then
    ForAllListViewItems(CurrXLSListView, XLSUpdateItemSetDefault, false);
  CurrXLSListView.OnChange(CurrXLSListView, CurrXLSListView.Selected, ctState);
end;

procedure TADO_QExportDialogF.btnXLSResetAllClick(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.Items.Count = 0 then Exit;
  if Application.MessageBox(PChar(QED_XLS_Reset_All_Question),
    PChar(QED_XLS_Reset_All_Question_Caption),
    MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = ID_NO
    then Exit;
  XLSResetAllItems;
end;

procedure TADO_QExportDialogF.btnFontColorMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IncLeftAndTop(pbFontColor);
end;

procedure TADO_QExportDialogF.btnFontColorMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DecLeftAndTop(pbFontColor);
end;

procedure TADO_QExportDialogF.btnBorderTopColorMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IncLeftAndTop(pbBorderTop);
end;

procedure TADO_QExportDialogF.btnBorderTopColorMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DecLeftAndTop(pbBorderTop);
end;

procedure TADO_QExportDialogF.btnBorderBottomColorMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IncLeftAndTop(pbBorderBottom);
end;

procedure TADO_QExportDialogF.btnBorderBottomColorMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DecLeftAndTop(pbBorderBottom);
end;

procedure TADO_QExportDialogF.btnBorderLeftColorMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IncLeftAndTop(pbBorderLeft);
end;

procedure TADO_QExportDialogF.btnBorderLeftColorMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DecLeftAndTop(pbBorderLeft);
end;

procedure TADO_QExportDialogF.btnBorderRightColorMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IncLeftAndTop(pbBorderRight);
end;

procedure TADO_QExportDialogF.btnBorderRightColorMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DecLeftAndTop(pbBorderRight);
end;

procedure TADO_QExportDialogF.btnFillBackgroundMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IncLeftAndTop(pbFillBackground);
end;

procedure TADO_QExportDialogF.btnFillBackgroundMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DecLeftAndTop(pbFillBackground);
end;

procedure TADO_QExportDialogF.btnFillForegroundMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IncLeftAndTop(pbFillForeground);
end;

procedure TADO_QExportDialogF.btnFillForegroundMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DecLeftAndTop(pbFillForeground);
end;

procedure TADO_QExportDialogF.pbXLSCellPaint(Sender: TObject);
begin
  if CurrXLSListView = nil then Exit;
  if CurrXLSListView.SelCount < 1 then Exit;
  if CurrXLSListView.SelCount = 1
    then DrawXLSCell(pbXLSCell, TxlsFormat(CurrXLSListView.Selected.Data))
    else DrawXLSCell(pbXLSCell, TxlsFormat(FXLSListItem.Data))
end;

function TADO_QExportDialogF.CurrXLSListView: TListView;
begin
  if pcXLSFormats.ActivePage = tshXLSFields then
    Result := lstXLSFields
  else if pcXLSFormats.ActivePage = tshXLSOptions then
    Result := lstXLSOptions
  else if pcXLSFormats.ActivePage = tshXLSStyles then
    Result := lstXLSStyles
  else Result := nil
end;

procedure TADO_QExportDialogF.CorrectXLSFieldsList;
var
  i, j: integer;
  flag: boolean;
begin
  if lstExportedFields.Items.Count = 0 then begin
    for i := 0 to lstXLSFields.Items.Count - 1 do begin
      j := Dialog.Columns.IndexOfName(lstXLSFields.Items[i].Caption);
      if not Dialog.Columns[j].IsBlob
        then lstXLSFields.Items[i].ImageIndex := 1
        else lstXLSFields.Items[i].ImageIndex := 0;
    end
  end
  else begin
    // Adding columns which not in lstXLSFields
    for i := 0 to lstExportedFields.Items.Count - 1 do
      for j := 0 to lstXLSFields.Items.Count - 1 do
        if AnsiCompareText(lstExportedFields.Items[i].Caption,
             lstXLSFields.Items[j].Caption) = 0 then begin
          lstXLSFields.Items[j].ImageIndex := 1;
          SetListItemIndex(lstXLSFields.Items[j], i);
          Break;
        end;
    // Deleting columns which not in lstExportedFields
    for i := lstXLSFields.Items.Count - 1 downto 0 do begin
      flag := false;
      for j := 0 to lstExportedFields.Items.Count - 1 do begin
        flag := flag or
          (AnsiCompareText(lstXLSFields.Items[i].Caption,
            lstExportedFields.Items[j].Caption) = 0);
        if flag then Break;
      end;
      if not flag then lstXLSFields.Items[i].ImageIndex := 0;
    end;
  end;
end;

procedure TADO_QExportDialogF.lstAvailableFieldsDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  Item, Item1: TListItem;
  n: integer;
begin
  if Source <> Sender then begin
    with MoveListItem((Source as TListView).Selected, Sender as TListView, true,
      GetIndexOfNewAvailableFields((Source as TListView).Selected)) do
      ImageIndex := 0;
    CorrectXLSFieldsList;
  end
  else begin
    Item := (Source as TListView).GetItemAt(X, Y);
    if Assigned(Item) then begin
      if Item.Index > (Source as TListView).Selected.Index
        then n := 1
        else n := 0;
      Item1 := (Source as TListView).Items.Insert(Item.Index + n);
      with Item1 do Caption := (Source as TListView).Selected.Caption;
      (Source as TListView).Selected.Delete;
      Item1.Focused := true;
      Item1.Selected := true;
    end;
  end;
end;

procedure TADO_QExportDialogF.lstExportedFieldsDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  with MoveListItem((Source as TListView).Selected, Sender as TListView, true, -1) do
    ImageIndex := 1;
  CorrectXLSFieldsList;
end;

procedure TADO_QExportDialogF.ShowXLSListItem(Item: TListItem);
var
  Event: TNotifyEvent;
begin
  btnXLSResetItem.Caption := QED_XLS_Reset_Item;

  cbxXLSFont.ItemIndex :=
    cbxXLSFont.Items.IndexOf(TxlsFormat(Item.Data).Font.Name);
  cbxXLSFontSize.Text := IntToStr(TxlsFormat(Item.Data).Font.Size);

  pbFontColor.Repaint;
  btnFontBold.Down := xfsBold in TxlsFormat(Item.Data).Font.Style;
  btnFontItalic.Down := xfsItalic in TxlsFormat(Item.Data).Font.Style;
  btnFontStrikeOut.Down := xfsStrikeOut in TxlsFormat(Item.Data).Font.Style;

  btnUnderlineSingle.Down := TxlsFormat(Item.Data).Font.Underline = fulSingle;
  btnUnderlineSingleAccounting.Down :=
    TxlsFormat(Item.Data).Font.Underline = fulSingleAccounting;
  btnUnderlineDouble.Down := TxlsFormat(Item.Data).Font.Underline = fulDouble;
  btnUnderlineDoubleAccounting.Down :=
    TxlsFormat(Item.Data).Font.Underline = fulDoubleAccounting;

  btnHorizontalLeft.Down :=
    TxlsFormat(Item.Data).Alignment.Horizontal = halLeft;
  btnHorizontalCenter.Down :=
    TxlsFormat(Item.Data).Alignment.Horizontal = halCenter;
  btnHorizontalRight.Down :=
    TxlsFormat(Item.Data).Alignment.Horizontal = halRight;
  btnHorizontalFill.Down :=
    TxlsFormat(Item.Data).Alignment.Horizontal = halFill;

  btnVerticalTop.Down := TxlsFormat(Item.Data).Alignment.Vertical = valTop;
  btnVerticalCenter.Down :=
    TxlsFormat(Item.Data).Alignment.Vertical = valCenter;
  btnVerticalBottom.Down :=
    TxlsFormat(Item.Data).Alignment.Vertical = valBottom;

  btnBorderTop.Down := TxlsFormat(Item.Data).Borders.Top.Style <> bstNone;
  cmbBorderTop.ItemIndex := Integer(TxlsFormat(Item.Data).Borders.Top.Style);
  btnBorderBottom.Down := TxlsFormat(Item.Data).Borders.Bottom.Style <> bstNone;
  cmbBorderBottom.ItemIndex :=
    Integer(TxlsFormat(Item.Data).Borders.Bottom.Style);

  btnBorderLeft.Down := TxlsFormat(Item.Data).Borders.Left.Style <> bstNone;
  cmbBorderLeft.ItemIndex := Integer(TxlsFormat(Item.Data).Borders.Left.Style);
  btnBorderRight.Down := TxlsFormat(Item.Data).Borders.Right.Style <> bstNone;
  cmbBorderRight.ItemIndex :=
    Integer(TxlsFormat(Item.Data).Borders.Right.Style);

  pbBorderTop.Repaint;
  pbBorderBottom.Repaint;
  pbBorderLeft.Repaint;
  pbBorderRight.Repaint;

  cmbPattern.ItemIndex := Integer(TxlsFormat(Item.Data).Fill.Pattern);
  pbFillBackground.Repaint;
  pbFillForeground.Repaint;
  cmbPattern.Repaint;

  if rgXLSFunction.Enabled
    then begin
      Event := rgXLSFunction.OnClick;
      rgXLSFunction.OnClick := nil;
      rgXLSFunction.ItemIndex := Integer(TxlsFieldFormat(Item.Data).Aggregate);
      rgXLSFunction.OnClick := Event;
    end
    else rgXLSFunction.ItemIndex := -1;
  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.ShowXLSListItemM;
var
  i: integer;
  IsFont, IsFontSize,
  IsTop, IsBottom, IsLeft, IsRight,
  IsPattern, IsAggregate, IsFunction: boolean;
begin
  if CurrXLSListView = nil then Exit;
  btnXLSResetItem.Caption := QED_XLS_Reset_SelectedItems;

  IsFont := true;
  IsFontSize := true;
  IsTop := true;
  IsBottom := true;
  IsLeft := true;
  IsRight := true;
  IsPattern := true;
  IsAggregate := true;
  IsFunction := true;
  for i := 0 to CurrXLSListView.Items.Count - 1 do
    if CurrXLSListView.Items[i].Selected and
      (CurrXLSListView.Items[i] <> FXLSListItem) then begin

      if IsFont then
        IsFont := IsFont and
          (AnsiCompareText(TxlsFormat(FXLSListItem.Data).Font.Name,
            TxlsFormat(CurrXLSListView.Items[i].Data).Font.Name) = 0);

      if IsFontSize then
        IsFontSize := IsFontSize and
          (TxlsFormat(FXLSListItem.Data).Font.Size =
            TxlsFormat(CurrXLSListView.Items[i].Data).Font.Size);

      if IsTop then
        IsTop := IsTop and
          (TxlsFormat(FXLSListItem.Data).Borders.Top.Style =
            TxlsFormat(CurrXLSListView.Items[i].Data).Borders.Top.Style);

      if IsBottom then
        IsBottom := IsBottom and
          (TxlsFormat(FXLSListItem.Data).Borders.Bottom.Style =
            TxlsFormat(CurrXLSListView.Items[i].Data).Borders.Bottom.Style);

      if IsLeft then
        IsLeft := IsLeft and
          (TxlsFormat(FXLSListItem.Data).Borders.Left.Style =
            TxlsFormat(CurrXLSListView.Items[i].Data).Borders.Left.Style);

      if IsRight then
        IsRight := IsRight and
          (TxlsFormat(FXLSListItem.Data).Borders.Right.Style =
            TxlsFormat(CurrXLSListView.Items[i].Data).Borders.Right.Style);

      if IsPattern then
        IsPattern := IsPattern and
          (TxlsFormat(FXLSListItem.Data).Fill.Pattern =
            TxlsFormat(CurrXLSListView.Items[i].Data).Fill.Pattern);

      if IsAggregate then
        IsAggregate := IsAggregate and not (i in [0..3]);

      IsFunction := IsFunction and IsAggregate;
      if IsFunction then
        IsFunction := IsFunction and
          (TxlsFieldFormat(FXLSListItem.Data).Aggregate =
            TxlsFieldFormat(CurrXLSListView.Items[i].Data).Aggregate);

    end;

  if IsFont
    then cbxXLSFont.ItemIndex := cbxXLSFont.Items.IndexOf(TxlsFormat(FXLSListItem.Data).Font.Name)
    else cbxXLSFont.ItemIndex := -1;

  if IsFontSize
    then cbxXLSFontSize.Text := IntToStr(TxlsFormat(FXLSListItem.Data).Font.Size)
    else cbxXLSFontSize.Text := EmptyStr;

  pbFontColor.Repaint;

  btnFontBold.Down := xfsBold in TxlsFormat(FXLSListItem.Data).Font.Style;
  btnFontItalic.Down := xfsItalic in TxlsFormat(FXLSListItem.Data).Font.Style;
  btnFontStrikeOut.Down := xfsStrikeOut in TxlsFormat(FXLSListItem.Data).Font.Style;

  btnUnderlineSingle.Down :=
    TxlsFormat(FXLSListItem.Data).Font.Underline = fulSingle;
  btnUnderlineSingleAccounting.Down :=
    TxlsFormat(FXLSListItem.Data).Font.Underline = fulSingleAccounting;
  btnUnderlineDouble.Down :=
    TxlsFormat(FXLSListItem.Data).Font.Underline = fulDouble;
  btnUnderlineDoubleAccounting.Down :=
    TxlsFormat(FXLSListItem.Data).Font.Underline = fulDoubleAccounting;

  btnHorizontalLeft.Down :=
    TxlsFormat(FXLSListItem.Data).Alignment.Horizontal = halLeft;
  btnHorizontalCenter.Down :=
    TxlsFormat(FXLSListItem.Data).Alignment.Horizontal = halCenter;
  btnHorizontalRight.Down :=
    TxlsFormat(FXLSListItem.Data).Alignment.Horizontal = halRight;
  btnHorizontalFill.Down :=
    TxlsFormat(FXLSListItem.Data).Alignment.Horizontal = halFill;

  btnVerticalTop.Down :=
    TxlsFormat(FXLSListItem.Data).Alignment.Vertical = valTop;
  btnVerticalCenter.Down :=
    TxlsFormat(FXLSListItem.Data).Alignment.Vertical = valCenter;
  btnVerticalBottom.Down :=
    TxlsFormat(FXLSListItem.Data).Alignment.Vertical = valBottom;

  if IsTop
    then cmbBorderTop.ItemIndex :=
      Integer(TxlsFormat(FXLSListItem.Data).Borders.Top.Style)
    else cmbBorderTop.ItemIndex := -1;

  if IsBottom
    then cmbBorderBottom.ItemIndex :=
      Integer(TxlsFormat(FXLSListItem.Data).Borders.Bottom.Style)
    else cmbBorderBottom.ItemIndex := -1;

  if IsLeft
    then cmbBorderLeft.ItemIndex :=
      Integer(TxlsFormat(FXLSListItem.Data).Borders.Left.Style)
    else cmbBorderLeft.ItemIndex := -1;

  if IsRight
    then cmbBorderRight.ItemIndex :=
      Integer(TxlsFormat(FXLSListItem.Data).Borders.Right.Style)
    else cmbBorderRight.ItemIndex := -1;

  pbBorderTop.Repaint;
  pbBorderBottom.Repaint;
  pbBorderLeft.Repaint;
  pbBorderRight.Repaint;

  if IsPattern
    then cmbPattern.ItemIndex :=
      Integer(TxlsFormat(FXLSListItem.Data).Fill.Pattern)
    else cmbPattern.ItemIndex := -1;

  pbFillBackground.Repaint;
  pbFillForeground.Repaint;

  rgXLSFunction.Enabled := IsAggregate;
  if IsFunction
    then rgXLSFunction.ItemIndex :=
      Integer(TxlsFieldFormat(FXLSListItem.Data).Aggregate)
    else rgXLSFunction.ItemIndex := -1;

  pbXLSCell.Repaint;
end;

procedure TADO_QExportDialogF.XLSUpdateItemFont(Item: TListItem);
begin
  if Item <> FXLSListItem
    then TxlsFormat(Item.Data).Font.Name :=
      TxlsFormat(FXLSListItem.Data).Font.Name;
end;

procedure TADO_QExportDialogF.XLSUpdateItemFontSize(Item: TListItem);
begin
  if Item <> FXLSListItem
    then TxlsFormat(Item.Data).Font.Size :=
      TxlsFormat(FXLSListItem.Data).Font.Size;
end;

procedure TADO_QExportDialogF.XLSUpdateItemFontColor(Item: TListItem);
begin
  if Item <> FXLSListItem
    then TxlsFormat(Item.Data).Font.Color :=
      TxlsFormat(FXLSListItem.Data).Font.Color;
end;

procedure TADO_QExportDialogF.XLSUpdateItemFontBold(Item: TListItem);
begin
  if Item <> FXLSListItem then
    XLSItemEditFontStyle(Item, xfsBold,
      xfsBold in TxlsFormat(FXLSListItem.Data).Font.Style);
end;

procedure TADO_QExportDialogF.XLSUpdateItemFontItalic(Item: TListItem);
begin
  if Item <> FXLSListItem then
    XLSItemEditFontStyle(Item, xfsItalic,
      xfsItalic in TxlsFormat(FXLSListItem.Data).Font.Style);
end;

procedure TADO_QExportDialogF.XLSUpdateItemFontStrikeOut(Item: TListItem);
begin
  if Item <> FXLSListItem then
    XLSItemEditFontStyle(Item, xfsStrikeOut,
      xfsStrikeOut in TxlsFormat(FXLSListItem.Data).Font.Style);
end;

procedure TADO_QExportDialogF.XLSUpdateItemFontUnderline(Item: TListItem);
begin
  if Item <> FXLSListItem then
    TxlsFormat(Item.Data).Font.Underline :=
      TxlsFormat(FXLSListItem.Data).Font.Underline;
end;

procedure TADO_QExportDialogF.XLSUpdateItemHorAlignment(Item: TListItem);
begin
  if Item <> FXLSListItem then
    TxlsFormat(Item.Data).Alignment.Horizontal :=
      TxlsFormat(FXLSListItem.Data).Alignment.Horizontal;
end;

procedure TADO_QExportDialogF.XLSUpdateItemVertAlignment(Item: TListItem);
begin
  if Item <> FXLSListItem then
    TxlsFormat(Item.Data).Alignment.Vertical :=
      TxlsFormat(FXLSListItem.Data).Alignment.Vertical;
end;

procedure TADO_QExportDialogF.XLSUpdateItemBorderTop(Item: TListItem);
begin
  if Item <> FXLSListItem then
    TxlsFormat(Item.Data).Borders.Top.Style :=
      TxlsFormat(FXLSListItem.Data).Borders.Top.Style;
end;

procedure TADO_QExportDialogF.XLSUpdateItemBorderTopColor(Item: TListItem);
begin
  if Item <> FXLSListItem then
    TxlsFormat(Item.Data).Borders.Top.Color :=
      TxlsFormat(FXLSListItem.Data).Borders.Top.Color;
end;

procedure TADO_QExportDialogF.XLSUpdateItemBorderBottom(Item: TListItem);
begin
  if Item <> FXLSListItem then
    TxlsFormat(Item.Data).Borders.Bottom.Style :=
      TxlsFormat(FXLSListItem.Data).Borders.Bottom.Style;
end;

procedure TADO_QExportDialogF.XLSUpdateItemBorderBottomColor(Item: TListItem);
begin
  if Item <> FXLSListItem then
    TxlsFormat(Item.Data).Borders.Bottom.Color :=
      TxlsFormat(FXLSListItem.Data).Borders.Bottom.Color;
end;

procedure TADO_QExportDialogF.XLSUpdateItemBorderLeft(Item: TListItem);
begin
  if Item <> FXLSListItem then
    TxlsFormat(Item.Data).Borders.Left.Style :=
      TxlsFormat(FXLSListItem.Data).Borders.Left.Style;
end;

procedure TADO_QExportDialogF.XLSUpdateItemBorderLeftColor(Item: TListItem);
begin
  if Item <> FXLSListItem then
    TxlsFormat(Item.Data).Borders.Left.Color :=
      TxlsFormat(FXLSListItem.Data).Borders.Left.Color;
end;

procedure TADO_QExportDialogF.XLSUpdateItemBorderRight(Item: TListItem);
begin
  if Item <> FXLSListItem then
    TxlsFormat(Item.Data).Borders.Right.Style :=
      TxlsFormat(FXLSListItem.Data).Borders.Right.Style;
end;

procedure TADO_QExportDialogF.XLSUpdateItemBorderRightColor(Item: TListItem);
begin
  if Item <> FXLSListItem then
    TxlsFormat(Item.Data).Borders.Right.Color :=
      TxlsFormat(FXLSListItem.Data).Borders.Right.Color;
end;

procedure TADO_QExportDialogF.XLSUpdateItemFillPattern(Item: TListItem);
begin
  if Item <> FXLSListItem then
    TxlsFormat(Item.Data).Fill.Pattern :=
      TxlsFormat(FXLSListItem.Data).Fill.Pattern;
end;

procedure TADO_QExportDialogF.XLSUpdateItemFillBackground(Item: TListItem);
begin
  if Item <> FXLSListItem then
    TxlsFormat(Item.Data).Fill.Background :=
      TxlsFormat(FXLSListItem.Data).Fill.Background;
end;

procedure TADO_QExportDialogF.XLSUpdateItemFillForeground(Item: TListItem);
begin
  if Item <> FXLSListItem then
    TxlsFormat(Item.Data).Fill.Foreground :=
      TxlsFormat(FXLSListItem.Data).Fill.Foreground;
end;

procedure TADO_QExportDialogF.XLSUpdateItemAggregate(Item: TListItem);
begin
  if Item <> FXLSListItem then
    TxlsFieldFormat(Item.Data).Aggregate :=
      TxlsFieldFormat(FXLSListItem.Data).Aggregate;
end;

procedure TADO_QExportDialogF.XLSUpdateItemSetDefault(Item: TListItem);
begin
  if Item <> FXLSListItem then begin
    if AnsiCompareText(Item.Caption, QED_XLS_Caption) = 0
      then SetDefaultXLSCaption(TxlsFormat(Item.Data))
      else TxlsFieldFormat(Item.Data).SetDefault;
  end;
end;

procedure TADO_QExportDialogF.XLSResetAllItems;
var
  Index, i: integer;
begin
  if Assigned(FXLSListItem)
    then Index := FXLSListItem.Index
    else Index := 0;
  CurrXLSListView.Items.BeginUpdate;
  try
    if Assigned(FXLSListItem) then begin
      TxlsFieldFormat(FXLSListItem.Data).SetDefault;
      if AnsiCompareText(TxlsFieldFormat(FXLSListItem.Data).FieldName,
        QED_XLS_Caption) = 0 then
        EditFontStyleXLS(TxlsFieldFormat(FXLSListItem.Data).Font, xfsBold, true);
    end;
    for i := 0 to CurrXLSListView.Items.Count - 1 do
      XLSUpdateItemSetDefault(CurrXLSListView.Items[i]);
    CurrXLSListView.Items[Index].Selected := true;
  finally
    CurrXLSListView.Items.EndUpdate;
    CurrXLSListView.OnChange(CurrXLSListView, FXLSListItem, ctState);
  end;
end;

procedure TADO_QExportDialogF.XLSResetAllItems_A;
var
  i, j: integer;
  LV: TListView;
begin
  for i := 1 to 3 do begin
    case i of
      1: LV := lstXLSFields;
      2: LV := lstXLSOptions;
      3: LV := lstXLSStyles;
      else LV := nil;
    end;
    if not Assigned(LV) then Exit;

    LV.Items.BeginUpdate;
    try
      for j := 0 to LV.Items.Count - 1 do begin
        XLSUpdateItemSetDefault(LV.Items[j]);
        if AnsiCompareText(LV.Items[j].Caption, QED_XLS_Caption) = 0 then
          EditFontStyleXLS(TxlsFieldFormat(LV.Items[j].Data).Font, xfsBold, true);
        if AnsiCompareText(TxlsFieldFormat(FXLSListItem.Data).FieldName,
           QED_XLS_Caption) = 0 then
          EditFontStyleXLS(TxlsFieldFormat(FXLSListItem.Data).Font, xfsBold, true);
      end;
    finally
      LV.Items.EndUpdate;
    end;
  end;
  if Assigned(FXLSListItem) then TxlsFieldFormat(FXLSListItem.Data).SetDefault;
end;

procedure TADO_QExportDialogF.XLSShowStyleButtons;
begin
  tbtDelXLSStyle.Enabled := Assigned(lstXLSStyles.Selected);
  tbtUpXLSStyle.Enabled := Assigned(lstXLSStyles.Selected) and
                           (lstXLSStyles.Items.Count > 1) and
                           (lstXLSStyles.Selected.Index > 0);
  tbtDownXLSStyle.Enabled := Assigned(lstXLSStyles.Selected) and
                             (lstXLSStyles.Items.Count > 1) and
                             (lstXLSStyles.Selected.Index <
                              lstXLSStyles.Items.Count - 1);
  tbtSaveXLSStyle.Enabled := lstXLSStyles.Items.Count > 0;
end;

procedure TADO_QExportDialogF.XLSRenumStyles;
var
  i: integer;
  LI: TListItem;
begin
  lstXLSStyles.Items.BeginUpdate;
  try
    LI := lstXLSStyles.Selected;
    for i := 0 to lstXLSStyles.Items.Count - 1 do
      lstXLSStyles.Items[i].Caption := QED_XLS_StyleItem + IntToStr(i + 1);
    if Assigned(LI) then begin
      LI.Focused := true;
      LI.Selected := true;
    end;
  finally
    lstXLSStyles.Items.EndUpdate;
  end;
end;

procedure TADO_QExportDialogF.XLSSaveStyle(const FileName: string);
var
  IniFile: TIniFile;
  i: integer;
begin
  IniFile := TIniFile.Create(FileName);
  try
    ClearIniFile(IniFile);
    for i := 0 to lstXLSStyles.Items.Count - 1 do
      TxlsFormat(lstXLSStyles.Items[i].Data).SaveToIniFile(IniFile,
        S_XLS_STYLE + IntToStr(i));
  finally
    IniFile.Free;
  end;
end;

procedure TADO_QExportDialogF.XLSLoadStyle(const FileName: string);
var
  IniFile: TIniFile;
  AStrings: TStrings;
  i: integer;
begin
  lstXLSStyles.Items.BeginUpdate;
  try
    lstXLSStyles.Items.Clear;
    IniFile :=TIniFile.Create(FileName);
    try
      AStrings := TStringList.Create;
      try
        IniFile.ReadSections(AStrings);
        for i := 0 to AStrings.Count - 1 do
          if AnsiCompareText(S_XLS_STYLE, Copy(AStrings[i], 1,
            Length(S_XLS_STYLE))) = 0 then
            with lstXLSStyles.Items.Add do begin
              Caption := QED_XLS_StyleItem + Copy(AStrings[i],
                Length(S_XLS_STYLE) + 1, Length(AStrings[i]));
              Data := TxlsFormat.Create(nil);
              TxlsFormat(Data).LoadFromIniFile(IniFile, AStrings[i]);
              ImageIndex := 2;
            end;
        if lstXLSStyles.Items.Count > 0 then begin
          ActiveControl := lstXLSStyles;
          lstXLSStyles.Items[0].Focused := true;
          lstXLSStyles.Items[0].Selected := true;
        end;
      finally
        AStrings.Free;
      end;
    finally
      IniFile.Free;
    end;
  finally
    lstXLSStyles.Items.EndUpdate;
  end;
end;

procedure TADO_QExportDialogF.edIntegerFormatChange(Sender: TObject);
begin
  IntegerFmt := edIntegerFormat.Text;
end;

procedure TADO_QExportDialogF.edFloatFormatChange(Sender: TObject);
begin
  FloatFmt := edFloatFormat.Text;
end;

procedure TADO_QExportDialogF.edDateFormatChange(Sender: TObject);
begin
  DateFmt := edDateFormat.Text;
end;

procedure TADO_QExportDialogF.edTimeFormatChange(Sender: TObject);
begin
  TimeFmt := edTimeFormat.Text;
end;

procedure TADO_QExportDialogF.edDateTimeFormatChange(Sender: TObject);
begin
  DateTimeFmt := edDateTimeFormat.Text;
end;

procedure TADO_QExportDialogF.edCurrencyFormatChange(Sender: TObject);
begin
  CurrencyFmt := edCurrencyFormat.Text;
end;

procedure TADO_QExportDialogF.edXLSPageHeaderChange(Sender: TObject);
begin
  XLSPageHeader := edXLSPageHeader.Text;
end;

procedure TADO_QExportDialogF.edXLSPageFooterChange(Sender: TObject);
begin
  XLSPageFooter := edXLSPageFooter.Text;
end;

procedure TADO_QExportDialogF.edXLSSheetTitleChange(Sender: TObject);
begin
  XLSSheetTitle := edXLSSheetTitle.Text;
end;

procedure TADO_QExportDialogF.chXLSAutoCalcColWidthClick(Sender: TObject);
begin
  XLSAutoCalcColWidth := chXLSAutoCalcColWidth.Checked;
end;

procedure TADO_QExportDialogF.edHTMLTitleChange(Sender: TObject);
begin
  HTMLTitle := edHTMLTitle.Text;
end;

procedure TADO_QExportDialogF.edHTMLCSSFileNameChange(Sender: TObject);
begin
  HTMLCSSFileName := edHTMLCSSFileName.Text;
end;

procedure TADO_QExportDialogF.btnHTMLCSSFileNameClick(Sender: TObject);
begin
  if odHTMLCSS.Execute then HTMLCSSFileName := odHTMLCSS.FileName;
end;

procedure TADO_QExportDialogF.chHTMLOverwriteCSSFileClick(Sender: TObject);
begin
  HTMLOverwriteCSSFile := chHTMLOverwriteCSSFile.Checked;
end;

procedure TADO_QExportDialogF.edHTMLFileRecCountChange(Sender: TObject);
begin
  HTMLFileRecCount := StrToIntDef(edHTMLFileRecCount.Text, 0);
end;

procedure TADO_QExportDialogF.chHTMLGenerateIndexClick(Sender: TObject);
begin
  HTMLGenerateIndex := chHTMLGenerateIndex.Checked;
  HTMLUpdateMultiFileControls;
end;

procedure TADO_QExportDialogF.cbxHTMLFontNameChange(Sender: TObject);
begin
  HTMLFontName := cbxHTMLFontName.Text;
end;

procedure TADO_QExportDialogF.edHTMLBackgroundChange(Sender: TObject);
begin
  HTMLBackground := edHTMLBackground.Text;
end;

procedure TADO_QExportDialogF.btnHTMLBackgroundClick(Sender: TObject);
begin
  if HTMLBackground <> EmptyStr then
    opdHTMLBackground.InitialDir := ExtractFileDir(HTMLBackground);
  if opdHTMLBackground.Execute then
    HTMLBackground := opdHTMLBackground.FileName;
end;

procedure TADO_QExportDialogF.edHTMLBodyAdvancedChange(Sender: TObject);
begin
  HTMLBodyAdvanced := edHTMLBodyAdvanced.Text;
end;

procedure TADO_QExportDialogF.edHTMLCellPaddingChange(Sender: TObject);
begin
  HTMLCellPadding := StrToIntDef(edHTMLCellPadding.Text, 0);
end;

procedure TADO_QExportDialogF.edHTMLCellSpacingChange(Sender: TObject);
begin
  HTMLCellSpacing := StrToIntDef(edHTMLCellSpacing.Text, 0);
end;

procedure TADO_QExportDialogF.edHTMLBorderWidthChange(Sender: TObject);
begin
  HTMLBorderWidth := StrToIntDef(edHTMLBorderWidth.Text, 0);
end;

procedure TADO_QExportDialogF.edHTMLTableBackgroundChange(Sender: TObject);
begin
  HTMLTableBackground := edHTMLTableBackground.Text;
end;

procedure TADO_QExportDialogF.btnHTMLTableBackgroundClick(Sender: TObject);
begin
  if HTMLTableBackground <> EmptyStr then
    opdHTMLBackground.InitialDir := ExtractFileDir(HTMLTableBackground);
  if opdHTMLBackground.Execute then
    HTMLTableBackground := opdHTMLBackground.FileName;
end;

procedure TADO_QExportDialogF.edHTMLTableAdvancedChange(Sender: TObject);
begin
  HTMLTableAdvanced := edHTMLTableAdvanced.Text;
end;

procedure TADO_QExportDialogF.paHTMLBackgroundClick(Sender: TObject);
var
  FColor:TColor;
begin
  ColorDialog.Color := HTMLBackgroundColor;
  if ColorDialog.Execute then begin
    FColor := ColorDialog.Color;
    HTMLBackgroundColor := FColor;
    SetCustomTemplate;
  end;
end;

procedure TADO_QExportDialogF.laHTMLFontClick(Sender: TObject);
begin
  ColorDialog.Color := HTMLFontColor;
  if ColorDialog.Execute then begin
    HTMLFontColor := ColorDialog.Color;
    SetCustomTemplate;
  end;
end;

procedure TADO_QExportDialogF.paHTMLColumnHead_1Click(Sender: TObject);
begin
  ColorDialog.Color := HTMLHeadBackgroundColor;
  if ColorDialog.Execute then begin
    HTMLHeadBackgroundColor := ColorDialog.Color;
    SetCustomTemplate;
  end;
end;

procedure TADO_QExportDialogF.laHTMLHead_1Click(Sender: TObject);
begin
  ColorDialog.Color := HTMLHeadFontColor;
  if ColorDialog.Execute then begin
    HTMLHeadFontColor := ColorDialog.Color;
    SetCustomTemplate;
  end;
end;

procedure TADO_QExportDialogF.paHTMLOddRowCol_1Click(Sender: TObject);
begin
  ColorDialog.Color := HTMLOddRowBackgroundColor;
  if ColorDialog.Execute then begin
    HTMLOddRowBackgroundColor := ColorDialog.Color;
    SetCustomTemplate;
  end;
end;

procedure TADO_QExportDialogF.paHTMLEvenRowCol_1Click(Sender: TObject);
begin
  ColorDialog.Color := HTMLEvenRowBackgroundColor;
  if ColorDialog.Execute then begin
    HTMLEvenRowBackgroundColor := ColorDialog.Color;
    SetCustomTemplate;
  end;
end;

procedure TADO_QExportDialogF.laHTMLData_1Click(Sender: TObject);
begin
  ColorDialog.Color := HTMLDataFontColor;
  if ColorDialog.Execute then begin
    HTMLDataFontColor := ColorDialog.Color;
    SetCustomTemplate;
  end;
end;

procedure TADO_QExportDialogF.laHTMLLinkClick(Sender: TObject);
begin
  ColorDialog.Color := HTMLLinkColor;
  if ColorDialog.Execute then begin
    HTMLLinkColor := ColorDialog.Color;
    SetCustomTemplate;
  end;
end;

procedure TADO_QExportDialogF.laHTMLVLinkClick(Sender: TObject);
begin
  ColorDialog.Color := HTMLVLinkColor;
  if ColorDialog.Execute then begin
    HTMLVLinkColor := ColorDialog.Color;
    SetCustomTemplate;
  end;
end;

procedure TADO_QExportDialogF.laHTMLALinkClick(Sender: TObject);
begin
  ColorDialog.Color := HTMLALinkColor;
  if ColorDialog.Execute then begin
    HTMLALinkColor := ColorDialog.Color;
    SetCustomTemplate;
  end;
end;

procedure TADO_QExportDialogF.chXMLStandaloneClick(Sender: TObject);
begin
  XMLStandalone := chXMLStandalone.Checked;
end;

procedure TADO_QExportDialogF.edXMLEncodingChange(Sender: TObject);
begin
  XMLEncoding := edXMLEncoding.Text;
end;

procedure TADO_QExportDialogF.edSQLTableNameChange(Sender: TObject);
begin
  SQLTableName := edSQLTableName.Text;
end;

procedure TADO_QExportDialogF.chSQLCreateTableClick(Sender: TObject);
begin
  SQLCreateTable := chSQLCreateTable.Checked;
end;

procedure TADO_QExportDialogF.edSQLCommitRecCountChange(Sender: TObject);
begin
  try
    SQLCommitRecCount := StrToInt(edSQLCommitRecCount.Text);
  except end;
end;

procedure TADO_QExportDialogF.chSQLCommitAfterScriptClick(Sender: TObject);
begin
  SQLCommitAfterScript := chSQLCommitAfterScript.Checked;
end;

procedure TADO_QExportDialogF.edSQLCommitStatementChange(Sender: TObject);
begin
  SQLCommitStatement := edSQLCommitStatement.Text;
end;

procedure TADO_QExportDialogF.edSQLNullStringChange(Sender: TObject);
begin
  NullString := edSQLNullString.Text;
end;

procedure TADO_QExportDialogF.edSQLStatementTermChange(Sender: TObject);
begin
  SQLStatementTerm := edSQLStatementTerm.Text;
end;

procedure TADO_QExportDialogF.edBooleanTrueChange(Sender: TObject);
begin
  BooleanTrue := edBooleanTrue.Text;
end;

procedure TADO_QExportDialogF.edBooleanFalseChange(Sender: TObject);
begin
  BooleanFalse := edBooleanFalse.Text;
end;

procedure TADO_QExportDialogF.edNullStringChange(Sender: TObject);
begin
  NullString := edNullString.Text;
end;

function TADO_QExportDialogF.GetIndexOfNewAvailableFields(Item: TListItem): integer;
var
  i: integer;
begin
  Result := 0;
  for i := 0 to lstAvailableFields.Items.Count - 1 do begin
    if Integer(lstAvailableFields.Items[i].Data) > Integer(Item.Data)
      then Exit
      else Result := i + 1;
  end
end;

procedure TADO_QExportDialogF.sgrCaptionsGetEditText(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
var
  Rect: TRect;
begin
  if (ExportType in [aeTXT, aeRTF, aeWord, aeHTML, aePDF]) and (ACol = 2) then begin
    Rect := sgrCaptions.CellRect(ACol, ARow);
    cbxColumnAlign.Left:= Rect.Left + 1;
    cbxColumnAlign.Top := Rect.Top + 26;
    cbxColumnAlign.Width := Rect.Right - Rect.Left + 2;
    cbxColumnAlign.ItemIndex := cbxColumnAlign.Items.IndexOf(sgrCaptions.Cells[ACol, ARow]);
    cbxColumnAlign.Visible := true;
    cbxColumnAlign.SetFocus;
  end;
  if ((ExportType in [aeTXT, aeRTF, aeWord, aePDF]) and (ACol = 3)) or
     ((ExportType = aeXLS) and (ACol = 2)) then begin
    Rect := sgrCaptions.CellRect(ACol, ARow);

    edColumnWidth.Left:= Rect.Left + 1;
    edColumnWidth.Top := Rect.Top + 26;
    edColumnWidth.Width := Rect.Right - Rect.Left - udColumnWidth.Width + 2;
    edColumnWidth.Text := sgrCaptions.Cells[ACol, ARow];

    udColumnWidth.Left:= edColumnWidth.Left + edColumnWidth.Width;
    udColumnWidth.Top := edColumnWidth.Top;
    udColumnWidth.Height := 20;
    udColumnWidth.Position := StrToInt(sgrCaptions.Cells[ACol, ARow]);

    edColumnWidth.Visible := true;
    udColumnWidth.Visible := true;
    edColumnWidth.SetFocus;
  end;
end;

procedure TADO_QExportDialogF.cbxColumnAlignExit(Sender: TObject);
begin
  sgrCaptions.Cells[sgrCaptions.Col, sgrCaptions.Row] := cbxColumnAlign.Text;
  cbxColumnAlign.Visible := false;
end;

procedure TADO_QExportDialogF.edColumnWidthExit(Sender: TObject);
begin
  sgrCaptions.Cells[sgrCaptions.Col, sgrCaptions.Row] := edColumnWidth.Text;
  edColumnWidth.Visible := false;
  udColumnWidth.Visible := false;
end;

procedure TADO_QExportDialogF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if AutoSaveOptions and (OptionsFileName <> EmptyStr)
    then SaveExportOptions(OptionsFileName);
end;

procedure TADO_QExportDialogF.rbInternalClick(Sender: TObject);
begin
  if rbInternal.Checked
    then HTMLUsingCSS := usInternal;
end;

procedure TADO_QExportDialogF.rbExternalClick(Sender: TObject);
begin
  if rbExternal.Checked
    then HTMLUsingCSS := usExternal;
end;

procedure TADO_QExportDialogF.rbExportOnlyClick(Sender: TObject);
begin
  edExportRecCount.Enabled := true;
  laExportRecCount_02.Enabled := true;
end;

procedure TADO_QExportDialogF.rbExportAllRecordsClick(Sender: TObject);
begin
  edExportRecCount.Enabled := false;
  laExportRecCount_02.Enabled := false;
  ExportRecCount := 0;
end;

procedure TADO_QExportDialogF.chTXTAutoCalcColWidthClick(Sender: TObject);
begin
  TXTAutoCalcColWidth := chTXTAutoCalcColWidth.Checked;
end;

procedure TADO_QExportDialogF.edTXTSpacingChange(Sender: TObject);
begin
  try TXTSpacing := StrToInt(edTXTSpacing.Text); except end;
end;

procedure TADO_QExportDialogF.NumberKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', #8])
    then Key := #0;
end;

procedure TADO_QExportDialogF.chCSVQuoteStringsClick(Sender: TObject);
begin
  CSVQuoteStrings :=  chCSVQuoteStrings.Checked;
end;

procedure TADO_QExportDialogF.edCSVCommaExit(Sender: TObject);
begin
  CSVComma := Str2Char(edCSVComma.Text);
end;

procedure TADO_QExportDialogF.edCSVQuoteExit(Sender: TObject);
begin
  CSVQuote := Str2Char(edCSVQuote.Text);
end;

procedure TADO_QExportDialogF.rgRTFPageOrientationClick(Sender: TObject);
begin
  RTFPageOrientation := TQExportPageOrientation(rgRTFPageOrientation.ItemIndex);
end;

procedure TADO_QExportDialogF.lstXLSFieldsDeletion(Sender: TObject;
  Item: TListItem);
begin
  TxlsFormat(Item.Data).Free;
  Item.Data := nil;
end;

procedure TADO_QExportDialogF.lstXLSFieldsChange(Sender: TObject;
  Item: TListItem; Change: TItemChange);
var
  i: integer;
  LV: TListView;
begin
  if (Change <> ctState) then Exit;
  if not Assigned(Item.Data) then Exit;
  if not (Sender is TListView) then Exit;

  LV := Sender as TListView;

  case LV.SelCount of
    0: FXLSListItem := nil;
    1: FXLSListItem := Item;
  end;
  if not Assigned(FXLSListItem) and
    (LV.SelCount > 0) then
    for i := 0 to LV.Items.Count - 1 do
      if LV.Items[i].Selected then begin
        FXLSListItem := LV.Items[i];
        Break;
      end;

  if LV.SelCount = 1
    then ShowXLSListItem(Item)
    else if LV.SelCount > 1
         then ShowXLSListItemM;

  XLSShowStyleButtons;
end;

procedure TADO_QExportDialogF.pcXLSFormatsChange(Sender: TObject);
begin
  tshXLSAggregate.TabVisible := pcXLSFormats.ActivePage = tshXLSFields;
  if CurrXLSListView = nil then Exit;
  if Assigned(CurrXLSListView.Selected) then
    CurrXLSListView.OnChange(CurrXLSListView, CurrXLSListView.Selected, ctState);
end;

procedure TADO_QExportDialogF.tbtAddXLSStyleClick(Sender: TObject);
begin
  with lstXLSStyles.Items.Add do begin
    Caption := QED_XLS_StyleItem + IntToStr(lstXLSStyles.Items.Count);
    Data := TxlsFieldFormat.Create(nil);
    ImageIndex := 2;
    Focused := true;
    Selected := true;
  end;
  ActiveControl := lstXLSStyles;
  XLSShowStyleButtons;
end;

procedure TADO_QExportDialogF.tbtDelXLSStyleClick(Sender: TObject);
var
  Index: integer;
begin
  if Assigned(lstXLSStyles.Selected) then begin
    Index := lstXLSStyles.Selected.Index;
    lstXLSStyles.Selected.Delete;
    if lstXLSStyles.Items.Count > 0 then begin
      if Index >= lstXLSStyles.Items.Count
        then Index := lstXLSStyles.Items.Count - 1;
      lstXLSStyles.Items[Index].Focused := true;
      lstXLSStyles.Items[Index].Selected := true;
    end;
    XLSRenumStyles;
    ActiveControl := lstXLSStyles;
    XLSShowStyleButtons;
  end;
end;

procedure TADO_QExportDialogF.tbtUpXLSStyleClick(Sender: TObject);
var
  F: TxlsFormat;
  Index: integer;
begin
  Index := lstXLSStyles.Selected.Index;
  F := TxlsFormat(lstXLSStyles.Items[Index - 1].Data);
  lstXLSStyles.Items[Index - 1].Data := lstXLSStyles.Items[Index].Data;
  lstXLSStyles.Items[Index].Data := F;
  lstXLSStyles.Items[Index - 1].Focused := true;
  lstXLSStyles.Items[Index - 1].Selected := true;
end;

procedure TADO_QExportDialogF.tbtDownXLSStyleClick(Sender: TObject);
var
  F: TxlsFormat;
  Index: integer;
begin
  Index := lstXLSStyles.Selected.Index;
  F := TxlsFormat(lstXLSStyles.Items[Index + 1].Data);
  lstXLSStyles.Items[Index + 1].Data := lstXLSStyles.Items[Index].Data;
  lstXLSStyles.Items[Index].Data := F;
  lstXLSStyles.Items[Index + 1].Focused := true;
  lstXLSStyles.Items[Index + 1].Selected := true;
end;

procedure TADO_QExportDialogF.rgXLSStripTypeClick(Sender: TObject);
begin
  XLSStripType := TxlsStripStyle(rgXLSStripType.ItemIndex);
end;

procedure TADO_QExportDialogF.tbtSaveXLSStyleClick(Sender: TObject);
begin
  if sdXLSStyle.Execute then
    XLSSaveStyle(sdXLSStyle.FileName);
end;

procedure TADO_QExportDialogF.tbtLoadXLSStyleClick(Sender: TObject);
begin
  if odXLSStyle.Execute then
    XLSLoadStyle(odXLSStyle.FileName);
end;

procedure TADO_QExportDialogF.XLSExpBeforeExportRow(Sender: TObject;
  Sheet: Integer; Row: TQExportRow; var Accept: Boolean);
begin
  if Assigned(Dialog.OnBeforeExportXLSRow) then
    Dialog.OnBeforeExportXLSRow(XLSExp, Sheet, Row, Accept);
end;

procedure TADO_QExportDialogF.XLSExpExportedRecord(Sender: TObject; Sheet,
  RecNo: Integer);
begin
  if Assigned(Dialog.OnExportedRecordXLS) then
    Dialog.OnExportedRecordXLS(XLSExp, Sheet, RecNo);
{  if Assigned(FProgress) then begin
    PostMessage(FProgress.Handle, WM_QEXPORT_PROGRESS, QEP_EXPORTED, 0);
    Application.ProcessMessages;
  end;}
end;

procedure TADO_QExportDialogF.XLSExpAdvancedGetExportText(Sender: TObject;
  Sheet, ColNo: Integer; var Text: String);
begin
  if Assigned(Dialog.OnGetExportXLSText) then
    Dialog.OnGetExportXLSText(XLSExp, Sheet, ColNo, Text);
end;

procedure TADO_QExportDialogF.edAccessTableNameChange(Sender: TObject);
begin
  AccessTableName := edAccessTableName.Text;
end;

procedure TADO_QExportDialogF.chAccessCreateTableClick(Sender: TObject);
begin
  AccessCreateTable := chAccessCreateTable.Checked;
end;

procedure TADO_QExportDialogF.edHTMLIndexLinkTemplateChange(
  Sender: TObject);
begin
  HTMLIndexLinkTemplate := edHTMLIndexLinkTemplate.Text;
end;

procedure TADO_QExportDialogF.chHTMLNavigationOnTopClick(Sender: TObject);
begin
  HTMLNavigationOnTop := chHTMLNavigationOnTop.Checked;
  HTMLUpdateMultifileControls;
end;

procedure TADO_QExportDialogF.chHTMLNavigationOnBottomClick(
  Sender: TObject);
begin
  HTMLNavigationOnBottom := chHTMLNavigationOnBottom.Checked;
  HTMLUpdateMultifileControls;
end;

procedure TADO_QExportDialogF.edHTMLIndexLinkTitleChange(Sender: TObject);
begin
  HTMLIndexLinkTitle := edHTMLIndexLinkTitle.Text;
end;

procedure TADO_QExportDialogF.edHTMLFirstLinkTitleChange(Sender: TObject);
begin
  HTMLFirstLinkTitle := edHTMLFirstLinkTitle.Text;
end;

procedure TADO_QExportDialogF.edHTMLPriorLinkTitleChange(Sender: TObject);
begin
  HTMLPriorLinkTitle := edHTMLPriorLinkTitle.Text;
end;

procedure TADO_QExportDialogF.edHTMLNextLinkTitleChange(Sender: TObject);
begin
  HTMLNextLinkTitle := edHTMLNextLinkTitle.Text;
end;

procedure TADO_QExportDialogF.edHTMLLastLinkTitleChange(Sender: TObject);
begin
  HTMLLastLinkTitle := edHTMLLastLinkTitle.Text;
end;

procedure TADO_QExportDialogF.chHTMLUseMultiFileExportClick(
  Sender: TObject);
begin
  HTMLUseMultiFileExport := chHTMLUseMultiFileExport.Checked;
  HTMLUpdateMultiFileControls;
end;

//--- PDF
procedure TADO_QExportDialogF.SetPDFColSpacing(const Value: double);
begin
  if FPDFColSpacing <> Value then begin
    FPDFColSpacing := Value;
    edPDFColSpacing.Text := FormatFloat('0.0', PDFColSpacing);
  end;
end;

procedure TADO_QExportDialogF.edPDFColSpacingChange(Sender: TObject);
begin
  PDFColSpacing := StrToDblDef(edPDFColSpacing.Text,
    Dialog.PDFOptions.ColSpacing);
end;

procedure TADO_QExportDialogF.SetPDFRowSpacing(const Value: double);
begin
  if FPDFRowSpacing <> Value then begin
    FPDFRowSpacing := Value;
    edPDFRowSpacing.Text := FormatFloat('0.0', PDFRowSpacing);
  end;
end;

procedure TADO_QExportDialogF.edPDFRowSpacingChange(Sender: TObject);
begin
  PDFRowSpacing := StrToDblDef(edPDFRowSpacing.Text,
    Dialog.PDFOptions.RowSpacing);
end;

procedure TADO_QExportDialogF.SetPDFGridLineWidth(const Value: integer);
begin
  if FPDFGridLineWidth <> Value then begin
    FPDFGridLineWidth := Value;
    edPDFGridLineWidth.Text := IntToStr(PDFGridLineWidth);
  end;
end;

procedure TADO_QExportDialogF.edPDFGridLineWidthChange(Sender: TObject);
begin
  PDFGridLineWidth := StrToIntDef(edPDFGridLineWidth.Text,
    Dialog.PDFOptions.GridLineWidth);
end;

function TADO_QExportDialogF.GetPDFPageSizeFormat: string;
begin
  if FPDFPageUnits = unInch
    then Result := '0.00'
    else Result := '0';
end;

procedure TADO_QExportDialogF.SetPDFPageFormat(const Value: TQExportPageFormat);
begin
  if FPDFPageFormat <> Value then begin
    FPDFPageFormat := Value;
    cbPDFPageFormat.ItemIndex := Integer(FPDFPageFormat);
    if FPDFPageFormat <> pfUser then begin
      FPDFPageWidth := InchToDot(GetPageFormatInchWidth(FPDFPageFormat));
      edPDFPageWidth.Text := FormatFloat(GetPDFPageSizeFormat, PDFPageWidth);
      FPDFPageHeight := InchToDot(GetPageFormatInchHeight(FPDFPageFormat));
      edPDFPageHeight.Text := FormatFloat(GetPDFPageSizeFormat, PDFPageHeight);
    end;
  end;
end;

procedure TADO_QExportDialogF.cbPDFPageFormatChange(Sender: TObject);
begin
  PDFPageFormat := TQExportPageFormat(cbPDFPageFormat.ItemIndex);
end;

function TADO_QExportDialogF.GetPDFPageWidth: double;
begin
  Result := Dot2Units(FPDFPageUnits, FPDFPageWidth);
end;

procedure TADO_QExportDialogF.SetPDFPageWidth(const Value: double);
var
  Dummy: integer;
begin
  Dummy := Units2Dot(FPDFPageUnits, Value);
  if FPDFPageWidth <>  Dummy then begin
    FPDFPageWidth := Dummy;
    edPDFPageWidth.Text := FormatFloat(GetPDFPageSizeFormat, PDFPageWidth);
  end;
  PDFPageFormat := pfUser;
end;

procedure TADO_QExportDialogF.edPDFPageWidthExit(Sender: TObject);
begin
  PDFPageWidth := StrToDblDef(edPDFPageWidth.Text, PDFPageWidth);
end;

function TADO_QExportDialogF.GetPDFPageHeight: double;
begin
  Result := Dot2Units(FPDFPageUnits, FPDFPageHeight);
end;

procedure TADO_QExportDialogF.SetPDFPageHeight(const Value: double);
var
  Dummy: integer;
begin
  Dummy := Units2Dot(FPDFPageUnits, Value);
  if FPDFPageHeight <> Dummy then begin
    FPDFPageheight := Dummy;
    edPDFPageHeight.Text := FormatFloat(GetPDFPageSizeFormat, PDFPageHeight);
  end;
  PDFPageFormat := pfUser;
end;

procedure TADO_QExportDialogF.edPDFPageHeightExit(Sender: TObject);
begin
  PDFPageHeight := StrToDblDef(edPDFPageHeight.Text, PDFPageHeight);
end;

procedure TADO_QExportDialogF.SetPDFPageUnits(const Value: TQExportUnits);
begin
  if FPDFPageUnits <> Value then begin
    FPDFPageUnits := Value;
    cbPDFPageUnits.ItemIndex := Integer(FPDFPageUnits);
    edPDFPageWidth.Text := FormatFloat(GetPDFPageSizeFormat, PDFPageWidth);
    edPDFPageHeight.Text := FormatFloat(GetPDFPageSizeFormat, PDFPageHeight);

    edPDFPageMarginLeft.Text := FormatFloat(GetPDFPageSizeFormat,
      PDFPageMarginLeft);
    edPDFPageMarginRight.Text := FormatFloat(GetPDFPageSizeFormat,
      PDFPageMarginRight);
    edPDFPageMarginTop.Text := FormatFloat(GetPDFPageSizeFormat,
      PDFPageMarginTop);
    edPDFPageMarginBottom.Text := FormatFloat(GetPDFPageSizeFormat,
      PDFPageMarginBottom);
  end;
end;

procedure TADO_QExportDialogF.cbPDFPageUnitsChange(Sender: TObject);
begin
  PDFPageUnits := TQExportUnits(cbPDFPageUnits.ItemIndex);
end;

procedure TADO_QExportDialogF.SetPDFPageOrientation(const Value:
  TQExportPageOrientation);
var
  Sz: TSize;
  Rect: TRect;
begin
  if FPDFPageOrientation <> Value then begin
    FPDFPageOrientation := Value;
    cbPDFPageOrientation.ItemIndex := Integer(FPDFPageOrientation);

    Sz.cx := FPDFPageWidth;
    Sz.cy := FPDFPageHeight;
    FPDFPageWidth := Sz.cy;
    FPDFPageHeight := Sz.cx;

    Rect.Left := FPDFPageMarginLeft;
    Rect.Right := FPDFPageMarginRight;
    Rect.Top := FPDFPageMarginTop;
    Rect.Bottom := FPDFPageMarginBottom;

    if FPDFPageOrientation = poLandscape then begin
      FPDFPageMarginLeft := Rect.Bottom;
      FPDFPageMarginRight := Rect.Top;
      FPDFPageMarginTop := Rect.Left;
      FPDFPageMarginBottom := Rect.Right;
    end
    else begin
      FPDFPageMarginLeft := Rect.Top;
      FPDFPageMarginRight := Rect.Bottom;
      FPDFPageMarginTop := Rect.Right;
      FPDFPageMarginBottom := Rect.Left;
    end;

    edPDFPageWidth.Text := FormatFloat(GetPDFPageSizeFormat, PDFPageWidth);
    edPDFPageHeight.Text := FormatFloat(GetPDFPageSizeFormat, PDFPageHeight);
    edPDFPageMarginLeft.Text := FormatFloat(GetPDFPageSizeFormat,
      PDFPageMarginLeft);
    edPDFPageMarginRight.Text := FormatFloat(GetPDFPageSizeFormat,
      PDFPageMarginRight);
    edPDFPageMarginTop.Text := FormatFloat(GetPDFPageSizeFormat,
      PDFPageMarginTop);
    edPDFPageMarginBottom.Text := FormatFloat(GetPDFPageSizeFormat,
      PDFPageMarginBottom);
  end;
end;

procedure TADO_QExportDialogF.cbPDFPageOrientationChange(Sender: TObject);
begin
  PDFPageOrientation := TQExportPageOrientation(cbPDFPageOrientation.ItemIndex);
end;

function TADO_QExportDialogF.GetPDFPageMarginLeft: double;
begin
  Result := Dot2Units(FPDFPageUnits, FPDFPageMarginLeft);
end;

procedure TADO_QExportDialogF.SetPDFPageMarginLeft(const Value: double);
var
  Dummy: integer;
begin
  Dummy := Units2Dot(FPDFPageUnits, Value);
  if FPDFPageMarginLeft <> Dummy then begin
    FPDFPageMarginLeft := Dummy;
    edPDFPageMarginLeft.Text := FormatFloat(GetPDFPageSizeFormat,
      PDFPageMarginLeft);
  end;
end;

procedure TADO_QExportDialogF.edPDFPageMarginLeftExit(Sender: TObject);
begin
  PDFPageMarginLeft := StrToDblDef(edPDFPageMarginLeft.Text, PDFPageMarginLeft);
end;

function TADO_QExportDialogF.GetPDFPageMarginRight: double;
begin
  Result := Dot2Units(FPDFPageUnits, FPDFPageMarginRight);
end;

procedure TADO_QExportDialogF.SetPDFPageMarginRight(const Value: double);
var
  Dummy: integer;
begin
  Dummy := Units2Dot(FPDFPageUnits, Value);
  if FPDFPageMarginRight <> Dummy then begin
    FPDFPageMarginRight := Dummy;
    edPDFPageMarginRight.Text := FormatFloat(GetPDFPageSizeFormat,
      PDFPageMarginRight);
  end;
end;

procedure TADO_QExportDialogF.edPDFPageMarginRightExit(Sender: TObject);
begin
  PDFPageMarginRight := StrToDblDef(edPDFPageMarginRight.Text,
    PDFPageMarginRight);
end;

function TADO_QExportDialogF.GetPDFPageMarginTop: double;
begin
  Result := Dot2Units(FPDFPageUnits, FPDFPageMarginTop);
end;

procedure TADO_QExportDialogF.SetPDFPageMarginTop(const Value: double);
var
  Dummy: integer;
begin
  Dummy := Units2Dot(FPDFPageUnits, Value);
  if FPDFPageMarginTop <> Dummy then begin
    FPDFPageMarginTop := Dummy;
    edPDFPageMarginTop.Text := FormatFloat(GetPDFPageSizeFormat,
      PDFPageMarginTop);
  end;
end;

procedure TADO_QExportDialogF.edPDFPageMarginTopExit(Sender: TObject);
begin
  PDFPageMarginTop := StrToDblDef(edPDFPageMarginTop.Text, PDFPageMarginTop);
end;

function TADO_QExportDialogF.GetPDFPageMarginBottom: double;
begin
  Result := Dot2Units(FPDFPageUnits, FPDFPageMarginBottom);
end;

procedure TADO_QExportDialogF.SetPDFPageMarginBottom(const Value: double);
var
  Dummy: integer;
begin
  Dummy := Units2Dot(FPDFPageUnits, Value);
  if FPDFPageMarginBottom <> Dummy then begin
    FPDFPageMarginBottom := Dummy;
    edPDFPageMarginBottom.Text := FormatFloat(GetPDFPageSizeFormat,
      PDFPageMarginBottom);
  end;
end;

procedure TADO_QExportDialogF.edPDFPageMarginBottomExit(Sender: TObject);
begin
  PDFPageMarginBottom := StrToDblDef(edPDFPageMarginBottom.Text,
    PDFPageMarginBottom);
end;

procedure TADO_QExportDialogF.PDFFillFontList;
begin
  lvPDFFonts.Items.BeginUpdate;
  try
    lvPDFFonts.Items.Clear;

    with lvPDFFonts.Items.Add do begin
      Caption := QED_PDF_HeaderFont;
      ImageIndex := 3;
      Data := PDFExp.Options.HeaderFont;
    end;
    with lvPDFFonts.Items.Add do begin
      Caption := QED_PDF_CaptionFont;
      ImageIndex := 3;
      Data := PDFExp.Options.CaptionFont;
    end;
    with lvPDFFonts.Items.Add do begin
      Caption := QED_PDF_DataFont;
      ImageIndex := 3;
      Data := PDFExp.Options.DataFont;
    end;
    with lvPDFFonts.Items.Add do begin
      Caption := QED_PDF_FooterFont;
      ImageIndex := 3;
      Data := PDFExp.Options.FooterFont;
    end;

    lvPDFFonts.Items[0].Focused := true;
    lvPDFFonts.Items[0].Selected := true;
    FPDFFontItem := lvPDFFonts.Items[0];
    PDFShowFontInfo;
  finally
    lvPDFFonts.Items.EndUpdate;
  end;
end;

procedure TADO_QExportDialogF.PDFShowFontInfo;
begin
  if Assigned(FPDFFontItem) then begin
    with TPDFFont(FPDFFontItem.Data) do begin
      cbPDFFontName.ItemIndex := Integer(BaseFont);
      paPDFSample.Font.Color := FontColor;
      cbPDFFontEncoding.ItemIndex := Integer(FontEncoding);
      edPDFFontSize.Text := IntToStr(FontSize);
    end;
    PDFShowExample;
  end;
end;

procedure TADO_QExportDialogF.lvPDFFontsChange(Sender: TObject;
  Item: TListItem; Change: TItemChange);
begin
  if not ((Change = ctState) and Assigned(Item) and Assigned(Item.Data)) then Exit;
  if Item <> FPDFFontItem then begin
    FPDFFontItem := Item;
    PDFShowFontInfo;
  end;
end;

procedure TADO_QExportDialogF.cbPDFFontNameChange(Sender: TObject);
begin
  TPDFFont(FPDFFontItem.Data).BaseFont := TPDFFontName(cbPDFFontName.ItemIndex);
  PDFShowExample;
end;

procedure TADO_QExportDialogF.cbPDFFontEncodingChange(Sender: TObject);
begin
  TPDFFont(FPDFFontItem.Data).FontEncoding :=
    TPDFFontEncoding(cbPDFFontEncoding.ItemIndex);
end;

procedure TADO_QExportDialogF.edPDFFontSizeChange(Sender: TObject);
begin
  TPDFFont(FPDFFontItem.Data).FontSize := StrToIntDef(edPDFFontSize.Text, 10);
  PDFShowExample;
end;

procedure TADO_QExportDialogF.PDFShowExample;
var
  FN: string;
begin
  with TPDFFont(FPDFFontItem.Data) do begin
    FN := AnsiUpperCase(cbPDFFontName.Text);

    paPDFSample.Font.Color := FontColor;
    paPDFSample.Font.Size := FontSize;

    EditFontStyle(paPDFSample.Font, fsBold, Pos('BOLD', FN) > 0);
    EditFontStyle(paPDFSample.Font, fsItalic,
      (Pos('OBLIQUE', FN) > 0) or (Pos('ITALIC', FN) > 0));

    if Pos('COURIER', FN) > 0 then
      paPDFSample.Font.Name := 'Courier New'
    else if Pos('TIMES', FN) > 0 then
      paPDFSample.Font.Name := 'Times New Roman'
    else if Pos('SYMBOL', FN) > 0 then
      paPDFSample.Font.Name := 'Symbol'
    else paPDFSample.Font.Name := 'Arial'
  end;
end;

procedure TADO_QExportDialogF.sbPDFFontColorClick(Sender: TObject);
var
  OldColor: TColor;
begin
  OldColor := TPDFFont(FPDFFontItem.Data).FontColor;
  ColorDialog.Color := OldColor;
  if ColorDialog.Execute and (OldColor <> ColorDialog.Color) then begin
    TPDFFont(FPDFFontItem.Data).FontColor := ColorDialog.Color;
    PDFShowExample;
  end;
end;

procedure TADO_QExportDialogF.bToolsClick(Sender: TObject);
var
  Point: TPoint;
begin
  Point.X := 0;
  Point.Y := 0;
  Point := bTools.ClientToScreen(Point);
  pmTools.Popup(Point.X, Point.Y - pmTools.Items.Count * 25);
end;

procedure TADO_QExportDialogF.miSaveOptionsClick(Sender: TObject);
begin
  sdOptions.FileName := OptionsFileName;
  if sdOptions.Execute then begin
    OptionsFileName := sdOptions.FileName;
    SaveExportOptions(OptionsFileName);
  end;
end;

procedure TADO_QExportDialogF.miLoadOptionsClick(Sender: TObject);
begin
  odOptions.FileName := OptionsFileName;
  if odOptions.Execute then begin
    OptionsFileName := odOptions.FileName;
    LoadExportOptions(odOptions.FileName);
  end;
end;

function TADO_QExportDialogF.IsCompatiblePage: boolean;
begin
  case ExportType of
    aeXLS: Result :=  Pages.ActivePage.PageIndex in [tshExportType.PageIndex,
                                                     tshFields.PageIndex,
                                                     tshFormats.PageIndex,
                                                     tshHeaderFooter.PageIndex,
                                                     tshCaptions.PageIndex,
                                                     tshXLS.PageIndex];
    aeAccess: Result :=  Pages.ActivePage.PageIndex in [tshExportType.PageIndex,
                                                        tshFields.PageIndex,
                                                        tshCaptions.PageIndex,
                                                        tshAccess.PageIndex];
    aeWord,
    aeRTF: Result :=  Pages.ActivePage.PageIndex in [tshExportType.PageIndex,
                                                     tshFields.PageIndex,
                                                     tshFormats.PageIndex,
                                                     tshHeaderFooter.PageIndex,
                                                     tshCaptions.PageIndex,
                                                     tshRTF.PageIndex];
    aeHTML: Result :=  Pages.ActivePage.PageIndex in [tshExportType.PageIndex,
                                                      tshFields.PageIndex,
                                                      tshFormats.PageIndex,
                                                      tshHeaderFooter.PageIndex,
                                                      tshCaptions.PageIndex,
                                                      tshHTML.PageIndex];
    aeXML: Result :=  Pages.ActivePage.PageIndex in [tshExportType.PageIndex,
                                                     tshFields.PageIndex,
                                                     tshFormats.PageIndex,
                                                     tshXML.PageIndex];
    aeDBF: Result :=  Pages.ActivePage.PageIndex in [tshExportType.PageIndex,
                                                     tshFields.PageIndex];
    aePDF: Result :=  Pages.ActivePage.PageIndex in [tshExportType.PageIndex,
                                                     tshFields.PageIndex,
                                                     tshFormats.PageIndex,
                                                     tshHeaderFooter.PageIndex,
                                                     tshCaptions.PageIndex,
                                                     tshPDF.PageIndex];
    aeTXT,
    aeCSV: Result :=  Pages.ActivePage.PageIndex in [tshExportType.PageIndex,
                                                     tshFields.PageIndex,
                                                     tshFormats.PageIndex,
                                                     tshHeaderFooter.PageIndex,
                                                     tshCaptions.PageIndex,
                                                     tshASCII.PageIndex];
    aeDIFF,
    aeSYLK,
    aeLaTeX: Result :=  Pages.ActivePage.PageIndex in [tshExportType.PageIndex,
                                                       tshFields.PageIndex,
                                                       tshFormats.PageIndex,
                                                       tshHeaderFooter.PageIndex,
                                                       tshCaptions.PageIndex];
    aeSQL: Result :=  Pages.ActivePage.PageIndex in [tshExportType.PageIndex,
                                                     tshFields.PageIndex,
                                                     tshHeaderFooter.PageIndex,
                                                     tshSQL.PageIndex];
    aeClipboard: Result :=  Pages.ActivePage.PageIndex in [tshExportType.PageIndex,
                                                     tshFields.PageIndex,
                                                     tshFormats.PageIndex,
                                                     tshHeaderFooter.PageIndex,
                                                     tshCaptions.PageIndex];
    else Result := false;
  end;
end;

end.
