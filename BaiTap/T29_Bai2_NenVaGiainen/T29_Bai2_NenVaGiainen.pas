program T29_Bai2_NenVaGiainen;
var
	s1, s2, kqnen, kqgiainen: String;
	f: Text;
	i: Integer;

{ Doc du lieu tu file }
procedure DocDuLieu();
begin
	assign(f, 'string.INP');
	reset(f);
	readln(f, s1);
	readln(f, s2);
	close(f);
end;

{ Doc du lieu tu file }
procedure GhiDuLieu();
begin
	assign(f, 'string.OUT');
	rewrite(f);
	writeln(f, kqnen);
	writeln(f, kqgiainen);
	close(f);
end;

{ Nen file }
function Nen(): String;
var
	dem: Integer;
	strDem: String;
begin
	kqnen := '';
	dem := 1;
	for i := 1 to length(s1) - 1 do
		if s1[i] = s1[i + 1] then 
		begin
			inc(dem);
			if i + 1 = length(s1) then
			begin
				str(dem, strDem);
				kqnen += strDem + s1[i];
			end;
		end
		else
		begin
			str(dem, strDem);
			if dem = 1 then kqnen += s1[i]
			else kqnen += strDem + s1[i];
			dem := 1;
			if i + 1 = length(s1) then kqnen += s1[i + 1];
		end;
	Nen:= kqnen;
end;

{ Giai nen}
function GiaiNen(): String;
var
	s: String;
	n, code, j: Integer;
begin
	kqgiainen := '';
	i := 1;
	while i <= length(s2) do
	begin
		s := '0';
		while s2[i] in ['0'..'9'] do
		begin
			s += s2[i];
			inc(i);
		end;

		val(s, n, code);

		if code = 0 then
		begin
			if n = 0 then kqgiainen += s2[i]
			else for j := 1 to n do kqgiainen += s2[i];
		end;
		inc(i);
	end;
	GiaiNen := kqgiainen;
end;

begin
	DocDuLieu();
	writeln('Chuoi truoc khi nen: ', s1);
	kqnen := Nen();
	writeln('Chuoi sau khi nen: ', kqnen);
	writeln('Chuoi truoc khi giai nen: ', s2);
	kqgiainen := GiaiNen();	
	writeln('Chuoi sau khi giai nen: ', kqgiainen);
	GhiDuLieu();
	readln
end.
