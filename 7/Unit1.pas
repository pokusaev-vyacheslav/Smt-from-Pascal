unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
A,B,C:integer;
begin
A:=strtoint(edit1.Text);
B:=strtoint(edit2.Text);
C:=strtoint(edit3.Text);
if A mod 6=0 then edit4.Text:='A-������ �����';
if B mod 6=0 then edit4.Text:='B-������ �����';
if C mod 6=0 then edit4.Text:='C-������ �����';
if not (A mod 6=0) and not (B mod 6=0) and not (C mod 6=0) then edit4.Text:='�� ����� �� ������';
if (A mod 6=0) and (B mod 6=0) then edit4.Text:='A-������ ����� � B-������ �����';
if (A mod 6=0) and (C mod 6=0) then edit4.Text:='A-������ ����� � C-������ �����';
if (C mod 6=0) and (B mod 6=0) then edit4.Text:='B-������ ����� � C-������ �����';
if (A mod 6=0) and (B mod 6=0) and (C mod 6=0) then edit4.Text:='A-������ �����, B-������ ����� �� C-������ �����';
end;

end.
