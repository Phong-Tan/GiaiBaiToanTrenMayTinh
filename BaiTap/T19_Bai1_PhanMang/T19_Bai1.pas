program T19_Bai1;
var
	Mang: array[0..99] of Integer;
	a, b, c, d, i, n, tong: Integer;
	f: text;
BEGIN
	{ Mo tep va gan gia tri cho n}
	assign(f, 'FIBO.INP');
	reset(f);
	read(f, n);
	close(f);
	{ 2 so dau tien cua day fibonacci la 1 nen gan san A[1] := 1 }
	Mang[1] := 1;

	if(n = 1) or (n = 2) then writeln('1',#13#10,'1')
	else
	begin
		{ Tim day theo yeu cau de bai}
		a := 1; b := 1; d := 2;
		repeat
			inc(d);
			c := (a + b) mod 100;
			a := b;
			b := c;
			{ Doi co neu gia tri c chua xuat hien }
			if(Mang[c] = 0) then Mang[c] := 1;
		until d = n;
		{ Dem cac gia tri khac nhau trong day }
		tong := 0;
		for i := 0 to 99 do
		begin
			tong += Mang[i];
		end;
		{ in ra man hinh ket qua }
		writeln(c, #13#10, tong);
	end;
	readln
END.
