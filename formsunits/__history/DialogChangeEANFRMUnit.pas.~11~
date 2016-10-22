unit DialogChangeEANFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,
  ImgList, Davidutilsunit, cxControls,
  cxContainer, cxEdit, cxTextEdit, Buttons, cxDBEdit, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters;

type
  TChangeEANForm = class(TForm)

    Label2: TLabel;
    EditNewModel: TcxTextEdit;
    EditOldModel: TcxDBTextEdit;
    Label1: TLabel;
    BitBtnOk: TBitBtn;
    BitBtnCancel: TBitBtn;

    procedure BitBtnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangeEANForm: TChangeEANForm;

implementation

{$R *.dfm}

uses clientDMUnit;

procedure TChangeEANForm.BitBtnOkClick(Sender: TObject);
begin
  if ValidateModel(EditNewModel.Text) then
  begin
    RemoteDB.ChangeEAN(EditOldModel.Text, EditNewModel.Text);
  end else begin
    ShowMessage('Nouveau code barre non valide');
  end;
end;

end.
