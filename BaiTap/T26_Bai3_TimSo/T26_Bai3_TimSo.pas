{Cho trước một xâu ký tự, trong đó có ít nhất 5 chữ số. 
Hãy loại bỏ một số ký tự ra khỏi xâu sao cho 5 ký tự cuối cùng còn lại theo thứ tự đó tạo thành số lớn nhất. 
Dữ liệu đầu vào: tệp DL.INP. Kết quả in ra màn hình}

program T26_Bai3_TimSo;
var
	f: Text;
	s: String;

{Nhap}
procedure Nhap();
begin
	assign(f, 'DL.INP');
	reset(f);
	read(f, s);
	close(f);
end;

{ Xu ly }
procedure XuLy();
var
	i,j,k: Byte;
begin
	i := 1;
	repeat
		if s[i] in ['0'..'9'] then inc(i)
		else delete(s, i, 1);
	until i > length(s);
	for i := 1 to 5 do
	begin
		k := i;
		for j := i to length(s) + i - 5 do
		begin
			if s[k] < s[j] then k := j;
 		end;
 		if k > i then delete(s, i, k - i);
	end;
	writeln(copy(s, 1, 5));
end;

BEGIN
	Nhap();
	writeln(s);
	XuLy();
	readln
END.
