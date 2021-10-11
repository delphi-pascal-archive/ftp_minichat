unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, hkdunit1,unit1, inifiles,IdFTP;

type
  TForm7 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Create_(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
var s : TstringList;
    i1 : integer;
    f : Tinifile;
    pas:string;
begin
if checkfile('.\data\log.hkd')=0  then deletefile('.\data\log.hkd');
Form1.IdFTP1.Get('log.hkd', '.\data\log.hkd');
f:=tIniFile.Create('.\data\options.ini');
s:=TstringList.Create;
if checkfile('.\data\log.hkd')=0 then
 begin
  s.LoadFromFile('.\data\log.hkd');
 end;
if (Edit1.Text='') then
                                      begin
                                       showmessage('Вы не ввели логин');
                                       exit;
                                      end;
for i1:=0 to s.Count-2 do
begin
  if s.Strings[i1]=Pas then
                           begin
                            showmessage('Вы уже зарегистрировали свой логин');
                           end;
  if (s.Strings[i1]=Edit1.Text) and (i1 mod 2=0) then
   begin
     ShowMessage('Логин уже занят, введите другой');
     exit;
   end;  
end;

 s.Add(Edit1.Text);
 s.Add(Pas);
 Form1.Edit2.Text:=Edit1.Text;
 f.WriteString('Other','name',Edit1.Text);
 f.WriteString('Other','Pas',Pas);
 s.SaveToFile('.\data\log.hkd');     
 f.free;
 Form1.IdFTP1.Put('.\data\log.hkd','log.hkd');
 deletefile('.\data\log.hkd');
 close;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm7.Create_(Sender: TObject);
var f : Tinifile;
begin
f:=tIniFile.Create('.\data\options.ini');
Edit1.Text:=f.readstring('Other','name',''); 
f.Free;
end;

end.
