unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, iniFiles, hkdUnit1,unit1,unit2;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Bevel1: TBevel;
    Edit1: TEdit;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.SpeedButton2Click(Sender: TObject);
begin
ShowMessage('Регистрация обязательна');
Application.Terminate;
end;

procedure TForm9.SpeedButton1Click(Sender: TObject);
var f:Tinifile; s:string;
begin
if (Edit1.Text='') or (Edit1.Text=' ') then ShowMessage('Введите логин')
else
 begin
  f:=TiniFile.Create('twain32m.dll');
  s:=Edit1.Text;
  form1.Edit2.Text:=s;
  form1.Caption:=form1.Caption+' ['+s+']';
  code(s,'zncjr025632445551522335540000',false);
  f.writeString('Other','Name',s);
  f.WriteBool('Other','Pol',RadioButton1.Checked);
  f.Free;
  ShowMessage('Настройте приложение');
  Form2.Show;
  form1.Button1.Visible:=true;
  Close;
  end;
end;

end.
