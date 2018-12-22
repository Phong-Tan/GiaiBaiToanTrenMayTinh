{ Cho hai số nguyên lớn có độ dài không quá 200 chữ số. Hãy đưa ra tổng và hiệu của hai số nguyên đó. }
program T23_Bai1_CongTru2SoNguyenLon;
var
	s1, s2: String;

procedure Nhap();
begin
	write('Nhap s1: '); readln(s1);
	write('Nhap s2: '); readln(s2);
end;
{ Cong hai so nguyen lon }
function Add(s1, s2: String): String;
var
	i, nho, x, y, z: Integer;
	s: String;
begin
	while length(s1) < length(s2) do s1 := '0' + s1;
	while length(s2) < length(s1) do s2 := '0' + s2;

	i := length(s1); nho := 0; s := '';
	while i >= 1 do
	begin
		x := ord(s1[i]) - 48;
		y := ord(s2[i]) - 48;
		z := x + y + nho;
		s := chr(z mod 10 + 48) + s;
		nho := z div 10;
		dec(i);
	end;
	
	if nho > 0 then s := '1' + s;
	Add := s;
end;

{ Tru hai so nguyen lon }
function Sub1(s1, s2: String): String;
var
	i, nho, x, y, z: Integer;
	s: String;
begin
	while length(s1) < length(s2) do s1 := '0' + s1;
	while length(s2) < length(s1) do s2 := '0' + s2;

	i := length(s1); nho := 0; s := '';
	while i >= 1 do
	begin
		x := ord(s1[i]) - 48;
		y := ord(s2[i]) - 48;
		z := x - y - nho;
		if z < 0 then
		begin
			z := 10 + z;
			nho := 1;
		end
		else nho := 0;
		s := chr(z + 48) + s;
		dec(i);
	end;
	Sub1 := s;
end;

function Sub(s1, s2: String): String;
begin
	if length(s1) > length(s2) then Sub := Sub1(s1, s2)
	else if length(s2) > length(s1) then Sub := '-' + Sub1(s2, s1)
	else if s1 >= s2 then Sub := Sub1(s1, s2)
	else Sub := '-' + Sub1(s2, s1);
end;

procedure Main();
begin
	Nhap();
	writeln('s1 + s2 = ', Add(s1, s2));
	writeln('s1 - s2 = ', Sub(s1, s2));
	readln
end;

begin
	Main();
end.