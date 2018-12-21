{ Cho dãy n số nguyên dương a1, a2,.., an. Hãy tìm hai số ai và ạ sao cho ai != aj và ai + aj là lớn nhất }
program T20_Bai2_TongMax;
var
	n, i: Integer;
	A: array[1..1000] of Integer;

{ Doc du lieu tu file }
procedure DocDuLieu();
var
	f: Text;
begin
	assign(f, 'INPUT.INP');
	reset(f);
	readln(f, n);
	for i := 1 to n do
		read(f, A[i]);
	close(f);
end;

{ Tim tong lon nhat bang cach tim so lon nhat va so lon nhi }
function Xuly(): Integer;
var
	max1, max2: Integer;
begin
	if A[1] > A[2] then 
	begin
		max1 := A[1]; max2 := A[2];
	end
	else
	begin
		max1 := A[2]; max2 := A[1];
	end;

	for i := 3 to n do
	begin
		if A[i] >= max1 then
		begin
			max2 := max1;
			max1 := A[i];
		end
		else if A[i] >= max2 then max2 := A[i];
	end;
	
	Xuly := max1 + max2;
end;

BEGIN
	DocDuLieu();
	writeln(Xuly());
	readln
END.