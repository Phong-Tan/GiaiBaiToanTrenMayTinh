{Tìm các số tự nhiên là có ba chữ số. Ba chữ số này theo thứ tự trái qua phải tạo thành mộtt cấp số cộng.}
Program CapCong;
uses crt;
const
ChuSoLe: array [1..5] of integer = (1,3,5,7,9);
var s:array [1..25] of integer;
var n: integer;
(****
Phat sinh cac so dang
105a+6c; a,c = 1,3,5,7,9
****)
function Tim:integer;
var a,c,d,x: integer;
begin
	d:=0;
	for a:=1 to 5 do
	begin
		x:=105*ChuSoLe[a];
		for c:=1 to 5 do
		begin
			inc(d); s[d] := x + 6*ChuSoLe[c];
		end;
	end;
	Tim:=d;
end;
(**** Hien thi ket qua ****)
procedure Xem(n: integer);
var
	i: Integer;
begin
	for i:=1 to n do
	begin
		write(s[i], '  ');
		if( n mod 20 = 0) then writeln;
	end;
end;

BEGIN
	n:=tim;
	Xem(n);
	writeln;
	writeln('Tong cong: ',n,' so');
	readln;
END.






