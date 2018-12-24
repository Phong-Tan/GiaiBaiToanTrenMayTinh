program DoiCoSo;
var
	n, m: Integer;

procedure Nhap();
begin
	write('Nhap n: '); readln(n);
end;

function DoiCoSo10_BatKyDuoi10(n, coso: Integer): String;
var
	A: array[0..9] of Char = ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');
	B: array[0..1000] of Integer;
	i, dem: Integer;
	kq: String;
begin
	dem := 0;
	while n <> 0 do
	begin
		B[dem] := n mod coso;
		n := n div coso;
		inc(dem);
	end;
	kq := '';
	for i := dem - 1 downto 0 do kq := kq + A[B[i]];
	DoiCoSo10_BatKyDuoi10 := kq;
end;

function DoiCoSo10_16(n: Integer): String;
var
	A: array[0..15] of Char = ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F');
	B: array[0..1000] of Integer;
	i, dem: Integer;
	kq: String;
begin
	dem := 0;
	while n <> 0 do
	begin
		B[dem] := n mod 16;
		n := n div 16;
		inc(dem);
	end;
	kq := '';
	for i := dem - 1 downto 0 do kq := kq + A[B[i]];
	DoiCoSo10_16 := kq;
end;

procedure Main();
begin
	Nhap();
	writeln('Doi so ', n, ' tu he co so 10 sang');
	writeln('he co so 16: ', DoiCoSo10_16(n));
	for m := 2 to 9 do
	begin
		writeln('he co so ', m, ': ', DoiCoSo10_BatKyDuoi10(n, m));
	end;
	readln
end;

begin
	Main();
end.
