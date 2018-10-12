unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Main_Complex;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a,b,c:TComplex;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
   a:=TComplex.Create(StrToFloat(Edit1.Text),StrToFloat(Edit2.Text));
   b:=TComplex.Create(StrToFloat(Edit3.Text),StrToFloat(Edit4.Text));
   c:=TComplex.Create(1,1);
   c.Add(a,b);

   Edit5.Text:=FloatToStr(c.Im);
   Edit6.Text:=FloatToStr(c.Re);
end;

end.
