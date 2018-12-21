{ Cho dãy n số nguyên dương a1, a2,.., an. Hãy tìm hai số ai và ạ sao cho ai != aj và ai + aj là lớn nhất }
program T20_Bai2_TongMax_DocFile;

{ Doc du lieu tu file va tim tong lon nhat ngay khi doc file}
procedure DocDuLieu();
var
	f: Text;
	a, b, c, n, i, max1, max2: Integer;
begin
	assign(f, 'INPUT.INP');
	reset(f);
	readln(f, n);
	read(f, a, b);
	if a > b then 
	begin
		max1 := a; max2 := b;
	end
	else
	begin
		max1 := b; max2 := a;
	end;

	for i := 3 to n do
	begin
		read(f, c);
		if c >= max1 then
		begin
			max2 := max1; max1 := c;
		end
		else if c >= max2 then max2 := c;
	end;
	writeln(max1 + max2);
	close(f);
end;

BEGIN
	DocDuLieu();
	readln
END.