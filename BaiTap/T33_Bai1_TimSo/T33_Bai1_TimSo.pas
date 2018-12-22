program T33_Bai1_TimSo;
var
	s: String;
	A: array[1..1000] of String;
	n, chiso, kequa: Integer;

{ Doc du lieu }
procedure DocDulieu();
var
	f: Text;
begin
	assign(f, 'INPUT.INP');
	reset(f);
	read(f,s);
	close(f);
end;

{ Kiem tra mot so n co phai la so nguyen to }
function KiemTraNguyenTo(n: Integer): Boolean;
var
	i: Integer;
begin
	if n = 2 then
	begin
		KiemTraNguyenTo := true; exit();
	end;

	if (n = 1) or (n mod 2 = 0) then
	begin
		KiemTraNguyenTo := false; exit();
	end;

	i := 3;
	while i <= trunc(sqrt(n)) do
	begin
		if n mod i = 0 then
		begin
			KiemTraNguyenTo := false; exit();
		end;
		inc(i, 2);
	end;
	KiemTraNguyenTo := true;
end;

{ Tao mang luu cac gia tri la cac so co trong chuoi s }
procedure TaoMang();
var
	dem, i, j: Integer;
	s1: String;
begin
	i := 1; dem := 0; n := 0;
	while i <= length(s) do
	begin
		if s[i] in ['0'..'9'] then
		begin
			dem := 1; s1 := s[i];
			for j := i + 1 to i + 6 do
			begin
				if s[j] in ['0'..'9'] then
				begin
					s1 += s[j];
					inc(dem);
				end
				else
				begin
					inc(n);
					A[n] := s1;
					break;
				end;
			end;
		end;
		i := i + 1 + dem;
		dem := 0;
	end;
end;

{ Tim so nguyen to lon nhat cua so m }
function TimSoNguyenToLonNhat(m: String): Integer;
var
	so, code, max, i, j: Integer;
begin
	max := 0;
	for i := 1 to length(m) do
	begin
		for j := i to length(m) do
		begin
			val(copy(m, i, j - i + 1), so, code);
			if KiemTraNguyenTo(so) and (max < so) then
			begin
				max := so;
			end;
		end;
	end;
	TimSoNguyenToLonNhat := max;
end;

procedure Main();
begin
	DocDulieu();
	TaoMang();
	kequa := 0;
	for chiso := 1 to n do
	begin
		if kequa < TimSoNguyenToLonNhat(A[chiso]) then
		begin
			kequa := TimSoNguyenToLonNhat(A[chiso]);
		end;
	end;
	writeln(kequa);
	readln
end;

BEGIN
	Main();
END.