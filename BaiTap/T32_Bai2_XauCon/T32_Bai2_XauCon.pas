{Cho trước hai xâu kí tự s1 và s2. Viết chương trình tính số lần lặp lại của xâu s1 trong xâu s2.
Dữ liệu vào: tệp XAU.INP gồm:
Dòng 1: chứa xâu s1.
Dòng 2: chứa xâu s2.
Dữ liệu ra: XAU.OUT}
program T32_Bai2_XauCon;
var
	s1, s2: String;

procedure DocDuLieu();
var
	f: Text;
begin
	assign(f, 'XAU.INP');
	reset(f);
	readln(f, s1);
	readln(f, s2);
	close(f);
end;

function DemSoLanLapLai(): Integer;
var
	dem: Integer;
begin
	dem := 0;
	while (pos(s1, s2) <> 0) and (length(s2) <> 0) do
	begin
		inc(dem);
		delete(s2, pos(s1, s2), 1);
	end;
	DemSoLanLapLai := dem;
end;

procedure GhiDuLieu();
var
	f: Text;
begin
	assign(f, 'XAU.OUT');
	rewrite(f);
	writeln(f, DemSoLanLapLai());
	close(f);
end;
begin
	DocDuLieu();
	GhiDuLieu();
	readln
end.
