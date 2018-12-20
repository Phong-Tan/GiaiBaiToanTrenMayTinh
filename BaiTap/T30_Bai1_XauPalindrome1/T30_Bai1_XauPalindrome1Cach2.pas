{Cho xâu s có độ dài không vượt quá 106. Kiểm tra xâu s có phải là xâu Palindrome không?}
{ Dao nguoc xau s duoc s1. so sanh xau s va s1 => ket luan }
program T30_Bai1_XauPalindrome1Cach2;
var
	s: String[106];

procedure Nhap();
begin
	writeln('Nhap xau s: '); readln(s);
end;

{ Kiem tra doi xung }
function KiemTraDoiXung(): Boolean;
var
	i: Integer;
	s1: String;
begin
	s1 := '';
	for i := length(s) downto 1 do
	begin
		s1 += s[i];
	end;
	KiemTraDoiXung := s = s1;
end;
BEGIN
	Nhap();
	writeln(KiemTraDoiXung());
	readln
END.
