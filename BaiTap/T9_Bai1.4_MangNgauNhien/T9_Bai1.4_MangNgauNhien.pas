{ Sinh ngẫu nhiên n số nguyên không âm cho mảng nguyên A }
program T9_Bai1_4_MangNgauNhien;
var
	n: Integer;
	A: array[1..500] of Integer;

procedure SinhMang(m: Integer);
var
	i: Integer;
begin
	randomize;
	n := m;
	for i := 1 to n do
		A[i] := random(m);
end;

procedure Xem();
var
	i: Integer;
begin
	for i := 1 to n do
		write(A[i], '  ');
end;
BEGIN
	SinhMang(200);
	Xem();
	readln
END.
