unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls,
  Buttons, ComCtrls, OleServer, Word2000, WordXP;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    Table1: TTable;
    Table1Vopros: TStringField;
    Table1Otvet1: TStringField;
    Table1Otvet2: TStringField;
    Table1Otvet3: TStringField;
    Table1Otvet4: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Table1Pravilniy_otvet: TStringField;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Timer2: TTimer;
    WordApplication1: TWordApplication;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  n:string;n2:string;
  k,k1,k2,k3,u,k7,m,m1:integer;
  t,t1,t2,t3:Boolean;
  c,c1:string;



implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
if (Dbedit2.text=DBedit6.Text) and (t2=false) then begin
k:=k+1;
timer1.Enabled:=false;
timer1.Interval:=i*1000;
timer1.Enabled:=true;
g3:=i;
table1.Next
 end else
begin
timer1.Enabled:=false;
timer1.Interval:=i*1000;
timer1.Enabled:=true;
g3:=i;t3:=true;
table1.Next
end;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);

begin
if (Dbedit3.text=DBedit6.Text) and (t2=false)  then begin
k1:=k1+1;
timer1.Enabled:=false;
timer1.Interval:=i*1000;
timer1.Enabled:=true;
g3:=i;
table1.Next end else
begin
timer1.Enabled:=false;
timer1.Interval:=i*1000;
timer1.Enabled:=true;
g3:=i;
table1.Next end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
if (Dbedit4.text=DBedit6.Text) and (t2=false) then begin
k2:=k2+1;

timer1.Enabled:=false;
timer1.Interval:=i*1000;
timer1.Enabled:=true;
g3:=i;
table1.Next
end else begin
timer1.Enabled:=false;
timer1.Interval:=i*1000;
timer1.Enabled:=true;
g3:=i;
table1.Next;
end;end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
if (Dbedit5.text=DBedit6.Text) and (t2=false) then begin
k3:=k3+1;

timer1.Enabled:=false;
timer1.Interval:=i*1000;
timer1.Enabled:=true;
g3:=i;
table1.Next
 end else begin

timer1.Enabled:=false;
timer1.Interval:=i*1000;
timer1.Enabled:=true;
g3:=i;
table1.Next
end;end;

procedure TForm1.Button2Click(Sender: TObject);
begin
u:=k+k1+k2+k3;
t:=False;
wordApplication1.connect;
WordApplication1.Documents.Add(EmptyParam,EmptyParam,EmptyParam,EmptyParam);
WordApplication1.visible:=true;
WordApplication1.Selection.InsertAfter('�������� �����'+' '+'-'+' '+Form1.Caption + #13);
WordApplication1.Selection.InsertAfter('���'+' '+'-'+' '+n + #13);
WordApplication1.Selection.InsertAfter('������'+' '+'-'+' '+n2 + #13);
WordApplication1.Selection.InsertAfter('���� � ����� ������ �����'+' '+'-'+' '+c + #13);
WordApplication1.Selection.InsertAfter('����� ���������� �������� ��������'+' '+'-'+' '+inttostr(g2)+ #13);
WordApplication1.Selection.InsertAfter('������� ���������� �������'+' '+'-'+' '+floattostr((u/g2)*100)+'%' + #13);
if t=False then Form1.Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
t1:=False;t2:=false;t3:=false;
t:=True;
k:=0;k1:=0;k2:=0;k3:=0;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if t=True then begin Action:=canone;ShowMessage('�������� ������������');
end;end;

procedure TForm1.FormShow(Sender: TObject);
begin
for i7:=0 to g2-1 do begin
Form1.Table1.First;
Form1.Table1.MoveBy(a2[i7]);
end;
c:=datetimetostr(Now);
n:=inputbox('������� ���',' ',' ');
n2:=inputbox('������� ������',' ',' ');
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
table1.Next;
timer1.enabled:=false;
timer1.Interval:=i*1000;
timer1.enabled:=true;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
g3:=g3-1;
if i7=g2-1 then t3:=true;
if (i7=g2-1) and (g3=0) then begin
t2:=true;
timer2.Interval:=0;
timer1.Interval:=0;
g3:=0;
statusbar1.Panels[0].Text:='���� ����������';
end;
if g3=0 then g3:=i;

if t2=false then statusbar1.Panels[0].Text:=inttostr(g3);


end;

end.
