unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, hkdunit1;

type
  TForm8 = class(TForm)
    RichEdit1: TRichEdit;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Create_(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.SpeedButton1Click(Sender: TObject);
begin
close;
end;

procedure TForm8.Create_(Sender: TObject);
begin
if checkfile('.\data\help.rtf')=0 then
RichEdit1.Lines.LoadFromFile('.\data\help.rtf');
end;

end.
