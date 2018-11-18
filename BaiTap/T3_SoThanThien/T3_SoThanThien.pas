{Tim tat ca cac so tu nhien co 2 chu so ma khi dao trat tu cua hai chu so do
se thu duoc mot so nguyen to cung nhau voi so da cho}
program T3_SoThanThien;

var
	s: array[1..90] of Integer;
	n: Integer;
{Tim UCLN cua hai so}
function UCLN(a, b: Integer): Integer;
var
	r: Integer;
begin
	while b <> 0 do
	begin
		r := a mod b; a := b; b := r;
	end;
	UCLN:= a;
end;

{Dao nguoc mot so}
function SoDao(x: Integer): Integer;
var
	y: Integer;
begin
	y := 0;
	while x <> 0 do
	begin
		y := 10 * y + (x mod 10);
		x := x div 10;
	end;
	SoDao := y;
end;

{Tim cac so thoa man dieu kien de bai ghi vao mang s
Output: So luong cac so tim duoc}
function Tim(): Integer;
var
	dem, x: Integer;
begin
	dem := 0;
	for x := 10 to 99 do
	begin
		if UCLN(x, SoDao(x)) = 1 then
		begin
			inc(dem);
			s[dem] := x;
		end;
	end;
	Tim := dem;
end;

{Xem ket qua cac so thoa man de bai}
procedure Xem(n: Integer);
var
	i: Integer;
begin
	for i := 1 to n do write(s[i]: 4);
	writeln();
end;
{Chuong trinh chinh}
BEGIN
	n := Tim();
	Xem(n);
	writeln('Tong cong co ', n, ' so');
	readln
END.
