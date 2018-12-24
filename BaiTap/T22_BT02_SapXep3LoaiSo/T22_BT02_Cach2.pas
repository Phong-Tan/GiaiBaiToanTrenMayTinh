program T22_BT02_Cach2;
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
procedure ChiaMang();
var
	dau, cuoi, temp: Integer;
begin
	{ Chia het cho 3 + le ben trai, ben phai la phan con lai}
	dau := 1; cuoi := n;
	while dau <> cuoi do
	begin
		if (A[dau] mod 3 = 0) and (A[dau] mod 2 <> 0) then inc(dau)
		else
		begin
			temp := A[dau]; A[dau] := A[cuoi]; A[cuoi] := temp;
			dec(cuoi);
		end;
	end;
	vitri := dau;
	if (A[dau] mod 3 = 0) and (A[dau] mod 2 <> 0) then vitri := vitri + 1;

	dau := vitri; cuoi := n;
	while dau <> cuoi do
	begin
		if A[dau] mod 3 <> 0 then inc(dau)
		else
		begin
			temp := A[dau]; A[dau] := A[cuoi]; A[cuoi] := temp;
			dec(cuoi);
		end;
	end;
end;

procedure Main();
begin
	NhapMang();
	writeln('Mang vua nhap:');
	XuatMang();
	ChiaMang();
	writeln('Mang da chia:');
	XuatMang();
	readln
end;
begin
	Main();
end.
