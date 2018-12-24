program T25_Bai2_GhepSoLon;
var
	S: array[0..1000] of String;
	n: Integer;

{ Nhap du lieu }
procedure Nhap();
begin
	n := 0;
	while S[n] <> ' ' do
	begin
		inc(n);
		readln(S[n]);
	end;
	n := n - 1;
end;

{ Sap xep mang theo thu tu tang dan theo tieu chi la: 
phan tu s[i] dung truoc phan tu s[j] neu s[i] ghep voi s[j] > s[j] ghep voi s[i]}
procedure SapXep();
var
	i, j: Integer;
	temp, s1, s2: String;
begin
	for i := 1 to n - 1 do
		for j := i + 1 to n do
		begin
			s1 := s[i]; s2 := s[j];
			while length(s1) < length(s2) do s1 += '0';
			while length(s2) < length(s1) do s2 += '0';
			
			if (s1 < s2) or ((s1 = s2) and (length(s[i]) > length(s[j])))then
			begin
				temp := s[i]; s[i] := s[j]; s[j] := temp;
			end;
		end;
end;

{ Ghep toan bo cac chuoi cua mang S thanh mot so }
function GhepSoLon(): String;
var
	kq: String;
	i: Integer;
begin
	kq := '';
	for i := 0 to n do
	begin
		kq := kq + s[i];
	end;
	GhepSoLon := kq;
end;

procedure Main();
begin
	Nhap();
	SapXep();
	writeln(GhepSoLon());
	readln
end;

BEGIN
	Main();
END.