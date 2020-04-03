unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, OleServer, Excel2000;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    StringGrid1: TStringGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    ExcelApplication1: TExcelApplication;
    Label1: TLabel;
    procedure Button2Click(Sender: TObject);
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

procedure TForm1.Button2Click(Sender: TObject);
var
n,m: integer;
begin
n:=strtoint(edit1.text);
m:=strtoint(edit2.text);
stringgrid1.rowcount:=n;
stringgrid1.colcount:=m;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
i,j,n,m: integer;
begin
randomize;
n:=strtoint(edit1.text);
m:=strtoint(edit2.text);
ExcelApplication1.connect;
ExcelApplication1.Visible[0]:=true;
ExcelApplication1.Workbooks. Add(EmptyParam,0);
for i:=0 to n-1 do begin
for j:=0 to m-1 do begin
ExcelApplication1.Cells.Item[ i+1, j+1 ].value:=stringgrid1.Cells[i,j];
ExcelApplication1.Cells.Item[ 1, 1 ].font.color:=random(color);
ExcelApplication1.Cells.Item[ 1, 1 ].font.size:=random(14)+5;
ExcelApplication1.Cells.Item[ n, m ].font.color:=random(color);
ExcelApplication1.Cells.Item[ n, m ].font.size:=random(14)+5;
end;
end;



end;

end.
