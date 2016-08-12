unit DialogSmsSendFRMUnit;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Spin, ComCtrls;

type
  TDlgSmsSend = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    MemoSmsText: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    LabelSmsAvailable: TLabel;
    UpDownSmsToSend: TUpDown;
    LabelSmsToSend: TLabel;
    procedure UpDownSmsToSendClick(Sender: TObject; Button: TUDBtnType);
  private
    { Private declarations }
  public
    Reserved: Integer;
    { Public declarations }
  end;

var
  DlgSmsSend: TDlgSmsSend;

implementation

uses Math;

{$R *.dfm}

procedure TDlgSmsSend.UpDownSmsToSendClick(Sender: TObject; Button: TUDBtnType);
begin
  if Button = btNext then
  begin
    LabelSmsToSend.Caption := inttostr(min((StrtoInt(LabelSmsToSend.Caption) + 1), Reserved));
  end;
  if Button = btPrev then
  begin
    LabelSmsToSend.Caption := inttostr(max(StrtoInt(LabelSmsToSend.Caption) - 1, 0));
  end;
end;

end.