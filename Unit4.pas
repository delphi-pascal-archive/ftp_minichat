unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls,hkdunit1,unit1;

type
  TProgrammer = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure create(Sender: TObject);
    procedure Close1(Sender: TObject; var Action: TCloseAction);
    procedure FormClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Programmer: TProgrammer;

implementation

{$R *.dfm}


procedure TProgrammer.create(Sender: TObject);
begin
//controlresolution(self);
end;

procedure TProgrammer.Close1(Sender: TObject; var Action: TCloseAction);
begin
Form1.MediaPlayer1.Close;
end;

procedure TProgrammer.FormClick(Sender: TObject);
begin
 Close;
end;

procedure TProgrammer.Label1Click(Sender: TObject);
begin
 Close;
end;

procedure TProgrammer.Label2Click(Sender: TObject);
begin
 Close;
end;

end.
