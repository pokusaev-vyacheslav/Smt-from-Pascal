unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Menus;

type
  TForm2 = class(TForm)
    RichEdit1: TRichEdit;
    ComboBox1: TComboBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    PopupMenu1: TPopupMenu;
    sSze141: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sSze141Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
richedit1.Color:=clblue;
richedit1.Clear;
end;

procedure TForm2.RadioButton1Click(Sender: TObject);
begin
richedit1.Color:=clblue;
end;

procedure TForm2.RadioButton2Click(Sender: TObject);
begin
richedit1.color:=clwhite;
end;

procedure TForm2.RadioButton3Click(Sender: TObject);
begin
richedit1.color:=clblack;
end;

procedure TForm2.RadioButton4Click(Sender: TObject);
begin
richedit1.color:=clgreen;
end;

procedure TForm2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=119) and (ssShift in Shift) and (ssAlt in Shift) then begin
form2.Visible:=false;
form3.visible:=true end;
end;

procedure TForm2.sSze141Click(Sender: TObject);
begin
richedit1.Font.Size:=14;
end;

end.
