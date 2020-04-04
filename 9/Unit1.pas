unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    Edit3: TEdit;
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
N:integer;
A:real;
m,s:real;

begin
m:=0;
N:=strtoint(edit1.Text);
A:=strtofloat(edit2.text);
for N:=1 to N do begin
s:=intpower(A,N);
m:=s+m;
memo1.lines.add(floattostr(m));
end;
m:=m+1;
edit3.text:=floattostr(m);
end;

end.
