unit ChackLibFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExStdCtrls, JvHtControls, JvExControls,
  JvComponent, JvSegmentedLEDDisplay, JvGIF, ExtCtrls;

type
  TFormCheckLib = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    LedSlot: TJvSegmentedLEDDisplay;
    MessageLabel: TJvHTLabel;
    BtMain: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCheckLib: TFormCheckLib;

implementation

{$R *.dfm}

end.
