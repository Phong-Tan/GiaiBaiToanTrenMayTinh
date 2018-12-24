program T15_Bai1_PhanTichRaThuaSoNguyenTo;
var
	n: Integer;

procedure Nhap();
begin
	write('Nhap n: '); readln(n);
end;

function KiemTraNguyenTo(n: Integer): Boolean;
var
	i: Integer;
	ketqua: Boolean;
begin
	ketqua:= true;
	if(n = 2) then ketqua:= true
	else if(n mod 2 = 0) then ketqua := false
	else
	begin
		i := 3;
		while i <= trunc(sqrt(n)) do
		begin
			if n mod i = 0 then
			begin
				ketqua := false; break;
			end;
			inc(i, 2);
		end;
	end;
	KiemTraNguyenTo := ketqua;
end;

procedure XuLy();
var
	m, p: Integer;
begin
	if KiemTraNguyenTo(n) then writeln(n)
	else
	begin
		m := n;
		for p := 2 to n div 2 do
			if KiemTraNguyenTo(p) then
			begin
				while m mod p = 0 do
				begin
					m := m div p;
					if m > 1 then write(p,'.')
					else write(p);
				end;
			end;
	end;
end;

begin
	Nhap();
	write(n, ' = ');
	XuLy();
	readln
end.
