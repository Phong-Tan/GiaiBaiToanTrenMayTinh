program T16_Bai2_RutGonPhanSo;
var
	a, b: Integer;

procedure Nhap();
begin
	write('Nhap a: '); readln(a);
	write('Nhap b: '); readln(b);
end;

function UCLN(a, b: Integer): Integer;
begin
	while a <> b do
		if a > b then a := a - b
		else b := b - a;
	UCLN := a;
end;

procedure RutGonPhanSo();
var
	dau, c, d: Integer;
begin
	if a < 0 then dau := -1
	else dau := 1;
	a := abs(a);
	c := a div UCLN(a, b);
	d := b div UCLN(a, b);
	writeln(dau * c, '/', d);
end;

begin
	Nhap();
	RutGonPhanSo();
	readln
end.
