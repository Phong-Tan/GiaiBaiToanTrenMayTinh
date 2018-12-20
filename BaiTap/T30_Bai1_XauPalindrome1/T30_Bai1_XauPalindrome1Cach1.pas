{Cho xâu s có độ dài không vượt quá 106. Kiểm tra xâu s có phải là xâu Palindrome không?}
program T30_Bai1_XauPalindrome1Cach1;
var
	s: String;

procedure Nhap();
begin
	writeln('Nhap xau s: '); readln(s);
end;

{ Kiem tra doi xung }
function KiemTraDoiXung(): Boolean;
var
	i: Integer;
	check: Boolean;
begin
	check := true;
	for i := 1 to length(s) div 2 do
	begin
		if(s[i] <> s[length(s) - i + 1]) then
		begin
			check := false;
			break;
		end;
	end;
	KiemTraDoiXung := check;
end;
BEGIN
	Nhap();
	writeln(KiemTraDoiXung());
	readln
END.
