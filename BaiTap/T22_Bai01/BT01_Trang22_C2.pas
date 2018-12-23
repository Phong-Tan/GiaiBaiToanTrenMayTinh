program BT01_Trang22_C2;
var
	A: array[1..1000] of Integer;
	n, vitri: Integer;

{ Nhap mang tu ban phim }
procedure NhapMang();
var
	i: Integer;
begin
	write('Nhap so phan tu cua mang: n = '); readln(n);
	for i := 1 to n do
	begin
		write('A[', i, '] = '); readln(A[i]);
	end;
end;

{ Xuat mang ra man hinh }
procedure XuatMang();
var
	i: Integer;
begin
	for i := 1 to n do
	begin
		write(A[i], '   ');
	end;
	writeln();
end;

{ Dua cac phan tu le ve ben trai va phan tu chan ve ben phai }
procedure ChiaChanLe();
var
	dau, cuoi, temp: Integer;
begin
	dau := 1; cuoi := n;
	while dau <> cuoi do
	begin
		if A[dau] mod 2 <> 0 then inc(dau)
		else
		begin
			temp := A[dau]; A[dau] := A[cuoi]; A[cuoi] := temp;
			dec(cuoi);
		end;
	end;
	vitri := dau;
	if A[vitri] mod 2 = 0 then vitri := vitri - 1;
end;

{ Sap xep phan le tang dan va phan chan giam dan }
procedure SapXep();
var
	i, j, temp: Integer;
begin
	{ Sap xep tang phan le }
	for i := 1 to vitri - 1 do
		for j := i + 1 to vitri do
		begin
			if A[i] > A[j] then
			begin
				temp := A[i]; A[i] := A[j]; A[j] := temp;
			end;
		end;

	{ Sap xep giam phan chan }
	for i := vitri + 1 to n - 1 do
		for j := i + 1 to n do
		begin
			if A[i] < A[j] then
			begin
				temp := A[i]; A[i] := A[j]; A[j] := temp;
			end;
		end;
end;

procedure Main();
begin
	NhapMang();
	writeln('Mang vua nhap:');
	XuatMang();
	ChiaChanLe();
	writeln('Mang da chia le - chan:');
	XuatMang();
	SapXep();
	writeln('Mang sau khi sap xep:');
	XuatMang();
	readln
end;

begin
	Main();
end.
