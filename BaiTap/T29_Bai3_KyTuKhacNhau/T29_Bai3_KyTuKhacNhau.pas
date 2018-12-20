{Cho xâu s (có độ dài không vượt quá 106) chỉ gồm các ký tự từ 'a' đến 'z'. 
Cho biết có bao nhiêu loại ký tự xuất hiện trong s và đưa ra một ký tự xuất hiện nhiều nhất cùng với 
số lần xuất hiện của ký tự đó}
program T29_Bai3_KyTuKhacNhau;
var
	s: String[106];
	i, kq: Integer;
	B: array['a'..'z'] of Byte;
	ch: Char;

{ Nhap }
procedure Nhap();
begin
	writeln('Nhap xau s: '); readln(s);
end;

{ Xu ly }
procedure Xuly();
begin
	for i := 1 to length(s) do
		inc(B[s[i]]);
end;

function DemKyTu(): Integer;
var
	dem: Integer;
begin
	dem := 0;
	for ch := 'a' to 'z' do
		if(B[ch] <> 0) then inc(dem);
	DemKyTu := dem;
end;

function SoLanXuatHienNhieuNhat(): Integer;
var
	solan: Integer;
begin
	solan := 0;
	for ch := 'a' to 'z' do
		if(B[ch] > solan) then solan := B[ch];
	SoLanXuatHienNhieuNhat := solan;
end;

BEGIN
	Nhap();
	Xuly();
	writeln('So ky tu xuat hien trong s: ', DemKyTu());
	kq := SoLanXuatHienNhieuNhat();
	write('Ky tu xuat hien nhieu lan nhat: ');
	for ch := 'a' to 'z' do
		if(B[ch] = kq) then write(ch, '  ');
	writeln();
	writeln('So lan xuat hien: ',kq);
	readln
END.
