program SapXepTang;
Type arr = array[0..100] of Integer;
var
	f: text;
	s: string;
	mang: array[0..9] of Integer;
	i, j, dem, chiso: Integer;
	so: arr;

procedure Nhap();
begin
	assign(f, 'SXT.INP');
	reset(f);
	read(f, s);
	close(f);
end;

function KiemTraKyTuLaSo(ch: Char): Boolean;
begin
	KiemTraKyTuLaSo := ((ord(ch) - 48 >= 0) and (ord(ch) - 48 <= 9));
end;

function DemChuSo(): Integer;
begin
	for i := 1 to Length(s) do
	begin
		if(KiemTraKyTuLaSo(s[i])) then
		mang[ord(s[i]) - 48] := 1;
	end;

	for i := 0 to 9 do
		if (mang[i] = 1) then 
			inc(dem);

	DemChuSo := dem;
end;

function SapXepTang(mang: arr; n: Integer): arr;
var
	temp: Integer;
begin
	for i := 0 to n - 1 do
		for j := i + 1 to n do
		begin
			if mang[i] > mang[j] then
			begin
				temp := mang[i];
				mang[i] := mang[j];
				mang[j] := temp;
			end;
		end;
	SapXepTang := mang;
end;

function DaoNguocChuoi(str: String): String;
var
	s1: String;
begin
	s1 := '';
	for i := Length(str) downto 1 do
	begin
		s1 += str[i];
	end;
	DaoNguocChuoi := s1;
end;

function IntegerToString(n: Integer): String;
var
	s2: String;
	a : Integer;
	ch: Char;
begin
	s2 := '';
	if(n = 0) then begin s2 += '0'; IntegerToString := s2; end;
	while n <> 0 do
	begin
		a := n mod 10;
		ch := chr(a + 48);
		s2 += ch;
		n := n div 10;
	end;
	s2 := DaoNguocChuoi(s2);
	IntegerToString := s2;
end;

BEGIN
	Nhap();
	writeln(DemChuSo());
	writeln('s truoc: ', s);
	i := 1; chiso := 0;
	while i <= Length(s) do
	begin
		j := i;
		while KiemTraKyTuLaSo(s[j]) do
		begin
			so[chiso] := so[chiso] * 10 + ord(s[j]) - 48;
			inc(j);
		end;
		if(KiemTraKyTuLaSo(s[i])) then 
		begin 
			inc(chiso);
			delete(s, i, j - i);
			insert('*', s, i);
		end;
		inc(i);
	end;

	// for i := 0 to chiso - 1do
	// begin
	// 	writeln(so[i]);
	// end;

	so := SapXepTang(so, chiso - 1);
	// writeln('sau');

	// for i := 0 to chiso -1 do
	// begin
	// 	writeln(so[i]);
	// end;
	
	
	// writeln('s = ',s);

	chiso := 0;
	while pos('*', s) <> 0 do
	begin
		insert(IntegerToString(so[chiso]), s, pos('*', s) + 1);
		delete(s, pos('*', s), 1);
		inc(chiso);
	end;
	writeln('ketqua = ', s);
END.
