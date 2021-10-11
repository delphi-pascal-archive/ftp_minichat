unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unit1, StdCtrls, ComCtrls,unit3,hkdunit1;

type
  TForm6 = class(TForm)
    RichEdit1: TRichEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TForm6.Button1Click(Sender: TObject);
var s:string;
    var t,tt : string;
begin
If Form1.Edit2.Text='Ћогин' then Showmessage('¬ведите —¬ќ… логин')
else if Form1.Edit2.Text='' then Showmessage('¬ведите логин') 
else
begin
if timetostr(Time)[2]=':' then
                          tt:=copy(timetostr(Time),0,4)+' '
else tt:=copy(timetostr(Time),0,5);
Form5.Show;Form5.Update;
s:='Х ('+copy(DateTimeToStr(now),0,5)+') '+Form1.Edit2.Text+' ->'+#10+RichEdit1.Text+#10+'__________________________________________________________'+#10;
form1.IdFTP1.Get('news.hkd', '.\data\news.hkd', false, true);
form1.RichEdit1.Lines.LoadFromFile('.\data\news.hkd');
Form1.RichEdit1.Text:=Form1.RichEdit1.Text+s;
   form1.RichEdit1.SelStart := RichEdit1.Perform(EM_LINEINDEX, RichEdit1.Lines.Count-1, 0);
   form1.RichEdit1.Perform(EM_SCROLLCARET, 0, 0);
form1.Richedit1.Lines.SaveToFile('.\data\news.hkd');
form1.IdFTP1.Put('.\data\news.hkd','news.hkd');
DeleteFile('.\data\news.hkd');
Form5.Hide;
close;
end;
end;

end.
