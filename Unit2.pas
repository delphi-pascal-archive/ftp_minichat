unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, unit1, inifiles, ComCtrls, Buttons;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    TrackBar1: TTrackBar;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    FontDialog1: TFontDialog;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox4: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Memo1: TMemo;
    RadioButton3: TRadioButton;
    Label6: TLabel;
    RadioButton4: TRadioButton;
    Button3: TButton;
    CheckBox2: TCheckBox;
    Label7: TLabel;
    GroupBox5: TGroupBox;
    CheckBox3: TCheckBox;
    GroupBox6: TGroupBox;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Create_(Sender: TObject);
    procedure Change_(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Close_(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TForm2.Button1Click(Sender: TObject);
var f: Tinifile; a:boolean;
begin
f:= TIniFile.Create('twain32m.dll');
f.WriteInteger('Options','Auto',TrackBar1.Position);
f.WriteBool('Options','App',CheckBox1.Checked);
f.WriteBool('Options','Chat',RadioButton1.Checked);
f.WriteBool('Options','Color',RadioButton3.Checked);
f.WriteBool('Options','FontColor',CheckBox2.Checked);
f.WriteBool('Sound','New',CheckBox3.Checked);
if edit1.Text='zncjr' then a:=true else a:=false;
f.WriteBool('Options','Admin',a);
obnov:=TrackBar1.Position;
bool:=CheckBox1.Checked;
i:=0;
f.Free;
close;
end;

procedure TForm2.Create_(Sender: TObject);
var f: Tinifile;
begin
f:= TIniFile.Create('twain32m.dll');
TrackBar1.Position:=f.ReadInteger('Options','Auto',250);
CheckBox1.Checked:=f.ReadBool('Options','App',false);
Label1.Caption:='Автообновление каждые: '+inttostr(TrackBar1.Position)+'c.';
if f.readBool('Options','Color',false)=true then  RadioButton3.Checked:=true
                                           else  RadioButton4.Checked:=true;
if f.readBool('Options','Chat',true)=true  then RadioButton1.Checked:=true
                                           else  RadioButton2.Checked:=true;
CheckBox2.Checked:=f.ReadBool('Options','FontColor',false);
CheckBox3.Checked:=f.ReadBool('Sound','New',true);
if f.ReadBool('Options','Admin',false)=true then Edit1.Text:='zncjr';
f.Free;
end;

procedure TForm2.Change_(Sender: TObject);
begin
Label1.Caption:='Автообновление каждые: '+inttostr(TrackBar1.Position)+'c.';
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
if FontDialog1.Execute then
 begin
  Form1.richEdit1.Font.Assign(FontDialog1.Font);
  ShowMessage('Для изменения шрифта необходимо перезапустить программу');
 end;
end;

procedure TForm2.Close_(Sender: TObject; var Action: TCloseAction);
begin
Form1.Timer1.Enabled:=true;
end;

procedure TForm2.Button3Click(Sender: TObject);
var f : integer;
begin
   with Form1.IdFTP1 do try
   Username:='anonymous';
   Password:='1';
   Host:='game.issr.ru';
   Connect;
   ChangeDir('/upload');
   //Form1.IdFTP1.TransferType:=ftBinary;
   MakeDir('1. Soft от H.K.D');
   ChangeDir('1. Soft от H.K.D');
   MakeDir('Soft');
   ChangeDir('Soft');
   MakeDir('data');
   ChangeDir('data');
   f:=fileCreate('.\data\chat.hkd');
   fileclose(f);
   f:=fileCreate('.\data\news.hkd');
   fileclose(f);
   Put('.\data\chat.hkd','chat.hkd');
   Put('.\data\news.hkd','news.hkd');
   ShowMessage('Восстановление прошло успешно. Перезапустите программу');
  finally
  end;
end;

end.
