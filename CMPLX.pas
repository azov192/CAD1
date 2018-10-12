unit CMPLX;

interface

type
  TComplex = record
    x,y : real;
  end;

Function AddC(x,y: TComplex):TComplex;
Function SubC(x,y: TComplex):TComplex;
Function MulC(x,y: TComplex):TComplex;
Function DivC(x,y: TComplex):TComplex;

Const
  c : TComplex = (x : 0.1; y : -1);
var
  Comp: TComplex;

implementation

Function AddC(x,y: TComplex):TComplex;
begin
  Result.x := x.x + y.x;
  Result.y := x.y + y.y;
end;

Function SubC(x,y: TComplex):TComplex;
begin
  Result.x := x.x - y.x;
  Result.y := x.y - y.y;
end;

Function MulC(x,y: TComplex):TComplex;
begin
  Result.x := x.x * y.x - x.y * y.y;
  Result.y := x.x * y.y + x.y * y.x;
end;

Function DivC(x,y: TComplex):TComplex;
var
  z : real;
begin
  z := sqr(y.x) + sqr(y.y);
  try
    Result.x := (x.x * y.x + x.y * y.y)/z;
    Result.y := (x.x * y.y - x.y * y.x)/z;
  except
    Result.x := 1.1e309;
    Result.y := 1.1e309;
  end;
end;

end.
 