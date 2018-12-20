{ Cho một xâu S chỉ gồm các ký tự in thường với độ dài tối đa 250 ký tự. 
Em hãy viết chương trình để tạo ra xâu SG từ xâu S bằng cách xóa các ký tự liên tiếp giống nhau trong xâu S và 
chỉ để lại một ký tự đại diện trong đoạn đó.
Dữ liệu vào: Đọc từ file XAUGON.INP chứa xâu S chỉ gồm các chữ cái in thường.
Ghi ra file XAUGON.OUT là xâu SG tìm được. }
program T28_Bai1_RutGonXau;
var
	s, sg: String;
	f: Text;

{ Doc du lieu tu file }
procedure DocDuLieu();
begin
	assign(f, 'XAUGON.INP');
	reset(f);
	readln(f, s);
	close(f);
	writeln('Du lieu vao: s = ', s);
end;

{ Ghi du lieu ra file }
procedure GhiDuLieu();
begin
	assign(f, 'XAUGON.OUT');
	rewrite(f);
	writeln(f, sg);
	close(f);
	writeln('Du lieu ra: sg = ', sg);
end;

{ Rut gon xau }
function RutGonXau(str: String): String;
var
	i: Byte;
begin
	i := 1;
	while i < length(str) do
	begin
		if str[i] = str[i + 1] then delete(str, i, 1)
		else inc(i);
	end;
	RutGonXau := str;
end;

BEGIN
	DocDuLieu();
	sg := RutGonXau(s);
	GhiDuLieu();
	readln
END.
