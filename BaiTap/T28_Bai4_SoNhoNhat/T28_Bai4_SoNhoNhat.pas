{ Một số nguyên n rất lớn có thể được cho bởi P (P <= 20) số nguyên dương A và P xâu ký tự s1, s2,..., sp 
(độ dài các xâu không vượt quá 255) chỉ gồm các số thập phân bằng cách 
viết s1 liên tiếp A1 lần rồi viết s2 liên tiếp A2 lần,..., viết sp liên tiếp Ap lần. 
Giả sử với số n được cho như trên và cho trước số nguyên dương k nhỏ hơn số chữ số của n. 
Hãy tìm cách gạch đi k chữ số của n để nhận được một số có giá trị nhỏ nhất. }
var
	f: Text;
	s: String;
	A: array[1..1000] of Integer;
	B: array[1..1000] of String;
	p, k, i, j: Integer;

{Doc du lieu tu file}
procedure DocDuLieu();
var
	sb: String;
begin
	assign(f, 'DL.INP');
	reset(f);
	//Doc hang thu nhat (p, k)
	while not eoln(f) do
	begin
		read(f, p); read(f, k);
	end;
	readln(f);
	//Doc hang thu 2 (ai)
	i := 1;
	while not eoln(f) do
	begin
		read(f, A[i]);
		inc(i);
	end;
	readln(f);
	//Doc hang thu 3 (si)
	j := 1;
	readln(f, sb);
	for i := 1 to length(sb) do
		if sb[i] <> ' ' then B[j] += sb[i]
		else inc(j);
	close(f);
end;

{ In du lieu dau vao ra man hinh}
procedure InDuLieuDauVao();
begin
	writeln('Du lieu dau vao:');
	writeln('p = ', p, '; k = ', k);
	for i := 1 to p do write('a', i, ' = ', A[i], '; ');
	writeln();
	for i := 1 to p do write('s', i, ' = ', B[i], '; ');
	writeln(); writeln();
end;

{ Tao chuoi s }
procedure TaoChuoi();
begin
	s := '';
	for i := 1 to p do
		for j := 1 to A[i] do
			s := s + B[i];
	writeln('So nguyen n = ', s);
end;

{ Xu ly }
procedure XuLy();
var
	l, m: Byte;
	ketqua, code: Longint;
begin
	m := length(s) - k;
	for i := 1 to m do
	begin
		l := i;
		for j := i to length(s) + i - m do
		begin
			if s[l] > s[j] then l:=j;
		end;
		if(l > i) then delete(s, i, l-i);
	end;
	
	val(copy(s, 1, m), ketqua, code);
	if code = 0 then writeln('So nho nhat sau khi xoa ', k, ' chu so cua n: ', ketqua);
end;

BEGIN
	DocDuLieu();
	InDuLieuDauVao();
	TaoChuoi();
	XuLy();
	readln
END.
