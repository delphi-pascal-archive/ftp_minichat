unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls,unit1, ComCtrls, Animate, GIFCtrl;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    RxGIFAnimator1: TRxGIFAnimator;
    Label3: TLabel;
    Label4: TLabel;
    procedure Click_(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Create_(Sender: TObject);
    procedure Show_(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Click_(Sender: TObject);
begin
Close;
end;

procedure TForm5.Image1Click(Sender: TObject);
begin
Close;
end;

procedure TForm5.Timer1Timer(Sender: TObject);
begin
ProgressBar1.Position:=ProgressBar1.Position+2;
if ProgressBar1.Position=100 then ProgressBar1.Position:=0;
end;

procedure TForm5.Create_(Sender: TObject);
begin
PostMessage(ProgressBar1.Handle, $0409, 0, clred);
end;

procedure TForm5.Show_(Sender: TObject);
begin
ProgressBar1.Position:=0;
end;

end.
