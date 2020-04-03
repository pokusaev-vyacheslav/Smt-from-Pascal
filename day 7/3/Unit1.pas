unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure Label1DblClick(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure ListBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
Form1.WindowState:=wsMaximized;
form1.Color:=clblue;
form1.Caption:='��������';
form1.ActiveControl:=Form1.Button1;
ShowHint:=True;
Hint:='��� ���� �1';
label1.font.Size:=16;
Label1.Font.Color:=clYellow;
Label1.Color:=clRed;
Form1.Button1.Align:=alBottom
end;

procedure TForm1.Label1DblClick(Sender: TObject);
begin
Form2.Visible:=true;
Form3.Visible:=true;
Form4.Visible:=true;
Form5.Visible:=true;
end;

procedure TForm1.Edit1Click(Sender: TObject);
begin
if Form4.WindowState=wsMinimized then Form1.Close
else begin
Showmessage('��������� ���� �� ��������');
form3.Visible:=false;
Form5.Visible:=false;
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Edit1.Visible:=false;
end;

procedure TForm1.FormDblClick(Sender: TObject);
begin
Edit1.Visible:=true;
end;

procedure TForm1.ListBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.Color:=clblack;
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Form1.Color:=clyellow;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
Form5.Caption:='���������';
end;

end.
