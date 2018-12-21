program T8_Bai1_3_SoCapNhan;
var
	n: Integer;
	cd: array[1..9] of Integer = (3, 2, 1, 1, 1, 1, 1, 1, 1);
	s: array[1..100] of Integer;

function Tim(): Integer;
var
	a, d, dem: Integer;
begin
	dem := 0;
	for a := 1 to 9 do
		for d := 1 to cd[a] do
		begin
			inc(dem);
			s[dem] := a * (100 + 10 * d + d * d);
		end;
	Tim := dem;
end;

procedure Xem(n: Integer);
var
	i: Integer;
begin
	for i := 1 to n do
	begin
		write(s[i], '   ');
	end;
	writeln();
end;

BEGIN
	n := Tim();
	Xem(n);
	writeln('Tong cong co ', n, ' so');
	readln
END.
