unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm3 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit5, Unit1;

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
Form3.Width:=300;
Form3.Height:=300;
Form3.Color:=clred;
BorderStyle:=bsNone;
ShowHint:=True;
Hint:='��� ���� �3';
Form3.AlphaBlendValue:=127;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
if Form3.Visible=true then
Showmessage('��������, ���������� ������ ����!');
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
Form5.Caption:='���������';
end;

end.
