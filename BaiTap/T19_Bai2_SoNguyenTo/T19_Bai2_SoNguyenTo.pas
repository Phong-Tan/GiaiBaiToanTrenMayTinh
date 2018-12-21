{ Cho một số tự nhiên n > 1. Tìm số k nguyên tố không vượt quá n trong các trường hợp sau:
a. k lớn nhất.
b. k có tổng các chữ số lớn nhất.
c. k là số đối xứng lớn nhất.
Input: Tệp IN.INP gồm một dòng duy nhất ghi số nguyên n (1 < n < 1000001).
Output: Ghi vào tệp NT.OUT gồm 1 dòng ghi 3 số tương ứng cách nhau bởi dấu cách là đáp án của câu a, b, c. Câu nào không 
tìm được kết quả thì ghi số 0 vào file.}
program T19_Bai2_SoNguyenTo;
var
	n, i, j: Longint;
	NT: array[2..1000001] of Boolean;

procedure DocDuLieu();
var
	f: Text;
begin
	assign(f, 'NT.INP');
	reset(f);
	read(f, n);
	close(f);
end;

{ Tao mang: NT[i] = true thi i la so nguyen to }
procedure SangNguyenTo();
begin
	fillchar(NT, sizeof(Nt), true);
	for i := 2 to n do
		if NT[i] then
		begin
			j := i + i;
			while j <= n do
			begin
				NT[j] := false;
				j := j + i;
			end;
		end;
end;

{ Tim so nguyen to k lon nhat khong vuot qua n }
function SoNguyenToLonNhat(): Longint;
begin
	for i := n downto 2 do
	begin
		if NT[i] = true then
		begin
			SoNguyenToLonNhat := i;
			exit();
		end;
	end;
end;

{ Tinh tong cac chu so cua so a }
function TongChuSo(a: Longint): Longint;
var
	sum: Longint;
begin
	sum := 0;
	while a > 0 do
	begin
		sum := sum + (a mod 10);
		a := a div 10;
	end;
	TongChuSo := sum;
end;

{ Tim so nguyen to co tong cac chu so la lon nhat }
function NguyenToCoTongChuSoLonNhat(): Longint;
var
	max, kq: Longint;
begin
	max := 0;
	for i := 2 to n do
		if NT[i] and (max < TongChuSo(i)) then
		begin
			max := TongChuSo(i);
			kq := i;
		end;
	NguyenToCoTongChuSoLonNhat := kq;
end;

{ Tim so dao nguoc cua a }
function SoDaoNguoc(a: Longint): Longint;
var
	sodao: Longint;
begin
	sodao := 0;
	while a > 0 do
	begin
		sodao := sodao * 10 + (a mod 10);
		a := a div 10;
	end;
	SoDaoNguoc := sodao;
end;

{ Tim so doi xung lon nhat }
function SoNguyenToDoiXungLonNhat(): Longint;
begin
	for i := n downto 2 do
		if NT[i] and (i = SoDaoNguoc(i)) then
		begin
			SoNguyenToDoiXungLonNhat := i;
			exit();
		end;
end;

{ Ghi ket qua vao file NT.OUT }
procedure GhiDuLieu(a, b, c: Longint);
var
	f: Text;
begin
	assign(f, 'NT.OUT');
	rewrite(f);
	write(f, a, ' ', b, ' ', c);
	close(f);
end;

BEGIN
	DocDuLieu();
	if (n <= 1) or (n > 1000001) then GhiDuLieu(0, 0, 0)
	else
	begin
		SangNguyenTo();
		GhiDuLieu(SoNguyenToLonNhat(), NguyenToCoTongChuSoLonNhat(), SoNguyenToDoiXungLonNhat());
	end;
	readln
END.
