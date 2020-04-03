unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    Memo1: TMemo;
    PopupMenu1: TPopupMenu;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    PopupMenu2: TPopupMenu;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    Panel1: TPanel;
    N28: TMenuItem;
    N29: TMenuItem;
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  f,a,c: boolean;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.N7Click(Sender: TObject);
begin
form1.Position:=poscreencenter;
form1.Align:=alNone;
form1.Height:=675;
form1.Width:=1305;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
form1.Top:=0;
form1.Left:=0;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
form1.Align:=albottom;
end;

procedure TForm1.N10Click(Sender: TObject);
begin
form1.Top:=0;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
f:=true;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin if c=false then begin
if f=true then begin action:=canone; showmessage('Запрещенно закрывать');
end;
if c=true then action:=cafree;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
f:=false;
a:=false;
c:=false;
panel1.visible:=false;
panel1.align:=alclient;
memo1.Visible:=false;
memo1.align:=alright;

end;

procedure TForm1.N12Click(Sender: TObject);
begin
a:=true;
end;

procedure TForm1.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
if a=true then begin resize:=false; showmessage('Запрещено изменение');
end;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
form1.BorderIcons:=bordericons-[biminimize];
end;

procedure TForm1.N14Click(Sender: TObject);
begin
form3.visible:=true;
end;

procedure TForm1.N15Click(Sender: TObject);
begin
n15.checked:=not n15.Checked;
if   n15.checked=true then
memo1.Visible:=False else
memo1.Visible:=True;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
c:=true;
form1.close;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
form2.visible:=true;
end;

procedure TForm1.N17Click(Sender: TObject);
begin
panel1.bevelouter:=bvRaised;
end;

procedure TForm1.N18Click(Sender: TObject);
begin
panel1.bevelouter:=bvlowered;
end;

procedure TForm1.N19Click(Sender: TObject);
begin
panel1.bevelouter:=bvnone;
end;

procedure TForm1.N25Click(Sender: TObject);
begin
memo1.Font.Color:=clblack;
end;

procedure TForm1.N26Click(Sender: TObject);
begin
memo1.Font.Color:=clblue;
end;

procedure TForm1.N27Click(Sender: TObject);
begin
memo1.Font.Color:=clred;
end;

procedure TForm1.N23Click(Sender: TObject);
begin
n23.checked:=not n23.Checked;
if   n23.checked=true then
memo1.enabled:=true else
memo1.enabled:=false;

end;

procedure TForm1.N21Click(Sender: TObject);
begin
panel1.bevelwidth:=1;
end;

procedure TForm1.N22Click(Sender: TObject);
begin
panel1.bevelwidth:=2;
end;

procedure TForm1.N31Click(Sender: TObject);
begin
panel1.bevelwidth:=3;
end;

procedure TForm1.N41Click(Sender: TObject);
begin
panel1.bevelwidth:=4;
end;

end.
