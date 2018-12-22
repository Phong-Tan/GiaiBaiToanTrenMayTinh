{Nhập vào một hoặc nhiều dòng. Mỗi dòng ghi một dãy ký tự. Số dòng không vượt quá 100. Mỗi dòng ghi từ 1 đến 100 ký tự số. 
Bảo đảm rằng có ít nhất một dòng mà ký tự số đầu tiên khác 0. Ghi ra màn hình số lớn nhất có thể có khi ghép toàn bộ 
các số vừa mới nhập vào.}
program T25_Bai2_GhepSoLon;
var
	S: array[1..1000] of String;
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
	i, j, a, b, code: Integer;
	temp: String;
begin
	for i := 1 to n - 1 do
		for j := i + 1 to n do
		begin
			val(s[i] + s[j], a, code);
			val(s[j] + s[i], b, code);
			if a < b then
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
