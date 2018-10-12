unit Main_Complex;

interface

Type

   TComplex = class private
   FIm, FRe : Double;
   public
     constructor Create(aRe, aIm : Double);
     function Add(a, b : TComplex):TComplex;
     function Subtract(a, b : TComplex) : TComplex;
     function Equal(a, b : TComplex) : Boolean;
     property Im : Double read FIm write FIm;
     property Re : Double read FRe write FRe;
   end;


implementation

constructor TComplex.Create(aRe, aIm : Double);
begin
  inherited Create;
  FRe:=aRe;
  FIm:=aIm;
end;

function TComplex.Add(a, b : TComplex) : TComplex;
begin
   Result := TComplex.Create(a.Re + b.Re, a.Im + b.Im);
end;

function TComplex.Subtract(a, b : TComplex) : TComplex;
begin
   Result := TComplex.Create(a.Re - b.Re, a.Im - b.Im);
end;

function TComplex.Equal(a, b : TComplex) : Boolean;
begin
  Result := (a.Re = b.Re) and (a.Im = b.Im);
end;

end.