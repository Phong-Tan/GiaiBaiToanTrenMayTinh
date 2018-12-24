program DoiCoSo;
var
	n: Integer;

procedure Nhap();
begin
	write('Nhap n: '); readln(n);
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
	writeln('Doi so ', n, ' tu he co so 10 sang 16: ', DoiCoSo10_16(n));
	readln
end;

begin
	Main();
end.
