{ Cho xâu S có độ dài không vượt quá 1000 ký tự. Tìm xâu palindrome con dài nhất là xâu con của S }
program T30_Bai2_XauPalindrome2;
var
	s: String;

{ Nhap xau s }
procedure Nhap();
begin
	writeln('Nhap xau s: '); readln(s);
end;

{ Tim xau con dai nhat }
function XauConDaiNhat(): String;
var
	truoc, sau, max, start, i: Integer;
begin
	//Truong hop xau s rong
	if length(s) = 0 then 
	begin 
		XauConDaiNhat := ''; 
		exit(); 
	end;

	//Truong hop xau s chi gom 1 ky tu
	if length(s) = 1 then
	begin
		XauConDaiNhat := s; 
		exit(); 
	end;

	//Truong hop xau s co do dai >= 2
	max := 1;
	for i := 2 to length(s) do
	begin
		//Xet xau con co so luong chan
		truoc := i - 1;
		sau := i;
		while (truoc >= 1) and (sau <= length(s)) and (s[truoc] = s[sau]) do
		begin
			if sau - truoc + 1 > max then
			begin
				start := truoc;
				max := sau - truoc + 1;
			end;
			dec(truoc);
			inc(sau);
		end;

		//Xet xau con co so luong le (tam tai s[i])
		truoc := i - 1;
		sau := i + 1;
		while (truoc >= 1) and (sau <= length(s)) and (s[truoc] = s[sau]) do
		begin
			if sau - truoc + 1 > max then
			begin
				start := truoc;
				max := sau - truoc + 1;
			end;
			dec(truoc);
			inc(sau);
		end;
	end;

	XauConDaiNhat := copy(s, start, max);
end;

BEGIN
	Nhap();
	writeln('Xau con dai nhat: ', XauConDaiNhat());
	readln
END.