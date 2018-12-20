{Vị giám đốc công ty XYZ cần gửi một văn bản quan trọng tới một đối tác của mình. Văn bản là một xâu S các chữ cái la tinh 
in thường. Để bảo mật nội dung văn bản, ông giám đốc gửi 2 bức thư. Bức thư thứ nhất là phần đầu Sb của xâu S, bức thư thứ 2 
à phần cuối Se của S. Hai bức thư Se và Sb đảm bảo đầy đủ nội dung của S, tuy nhiên có thể một phần cuối của Sb có thể được 
iết lặp lại trong phần đầu của Se, song số ký tự được viết lại không biết trước.
Yêu cầu: Cho xâu Sb và Se, hãy xác định độ dài xâu S có thể là nội dung của bức thư sao cho độ dài của xâu S là ngắn nhất.
Đầu vào: Dòng đầu chứa xâu Sb, dòng 2 chứa xâu Se. Đầu ra: Ghi ra độ dài xâu của S tìm được.}
program T29_Bai4_GuiThu;
var
	sb, se: String;
	max: Integer;
	f: Text;

{ Doc du lieu }
procedure DocDuLieu();
begin
	assign(f, 'T29_Bai4_GuiThu.INP');
	reset(f);
	readln(f, sb);
	readln(f, se);
	close(f);
end;

{ Xu Ly }
function TinhDoDaiXauConChungDaiNhat(): Integer;
var
	gioihan, ketqua, i: Integer;
	s1, s2: String;
begin
	if(length(sb) > length(se)) then gioihan := length(se)
	else gioihan := length(sb);

	i := 1; ketqua := 0;
	while i <= gioihan do
	begin
		s1 := copy(sb, length(sb) - i + 1, i);
		s2 := copy(se, 1, i);
		if(s1 = s2) then ketqua := length(s1);
		inc(i);
	end;
	TinhDoDaiXauConChungDaiNhat := ketqua;
end;

BEGIN
	DocDuLieu();
	max := TinhDoDaiXauConChungDaiNhat();
	writeln(length(sb) - max + length(se));
	readln	
END.
