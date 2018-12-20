program T17_Bai4_TinhTongChuSo;
var
	A: array[0..9] of Integer;
	n, i: Integer;

procedure Nhap();
begin
	writeln('Nhap so trang sach n = '); readln(n);
end;

{ Tong cua mot chu so}
function TongCS(cs: Integer): Integer;
var
	tong: Integer;
begin
	tong := 0;
	while cs <> 0 do
	begin
		tong += cs mod 10;
		cs := cs div 10;
	end;
	TongCS := tong;
end;

{ Tong cua toan bo so trang sach}
function TinhTongChuSo(): Integer;
var
	k, sum: Integer;
begin
	sum := 0;
	for i := 1 to n do
	begin
		k := i;
		sum += TongCS(i);
		while k <> 0 do
		begin
			inc(A[k mod 10]);
			k := k div 10;
		end;
	end;
	TinhTongChuSo := sum;
end;

procedure InKetQua();
begin
	writeln('Tong chu so da ghi tren trang sach: ', TinhTongChuSo());
	for i := 0 to 9 do
	begin
		if A[i] <> 0 then writeln('Chu so ', i, ' xuat hien: ', A[i], ' lan');
	end;
end;
BEGIN
	Nhap();
	InKetQua();
END.
