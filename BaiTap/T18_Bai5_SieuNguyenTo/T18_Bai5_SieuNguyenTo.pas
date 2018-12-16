{Số P gọi là siêu nguyên tố nếu nó nguyên tố và khi ta bỏ lần lượt các chữ số ở hàng đơn vị từ trái qua phải thì
số mới nhận được vẫn là một số nguyên tố}
program T18_Bai5_SieuNguyenTo;
var
	n, soluong, sochuso, tg, k, g: Integer;
	A, B, C: array[1..1000] of Integer;

function KiemTraNguyenTo(n: Integer): Boolean;
var
	i: Integer;
	ketqua: Boolean;
begin
	ketqua:= true;
	if(n = 2) then ketqua:= true
	else if(n mod 2 = 0) then ketqua := false
	else
	begin
		i := 3;
		while i <= trunc(sqrt(n)) do
		begin
			if n mod i = 0 then
			begin
				ketqua := false; break;
			end;
			inc(i, 2);
		end;
	end;
	KiemTraNguyenTo := ketqua;
end;
begin
	writeln('Nhap n: '); readln(n);
	if(n = 1) then
	begin
		A[1] := 2; A[2] := 3; A[3] := 5; A[4] := 7; soluong := 4;
	end;
	if n > 1 then
	begin
		A[1] := 2; A[2] := 3; A[3] := 5; A[4] := 7; soluong := 4;
		C[1] := 1; C[2] := 3; C[3] := 7; C[4] := 9; sochuso := 1;
		repeat
			inc(sochuso); tg := 0; fillchar(B, sizeof(B), 0);
			for k := 1 to soluong do
				for g := 1 to 4 do
				begin
					
					if(KiemTraNguyenTo(A[k] * 10 + C[g])) then
					begin
						writeln(A[k] * 10 + C[g]);
						inc(tg); b[tg]:= A[k] * 10 + C[g];
					end;
				end;
			A := B; soluong := tg; tg := 0;
		until sochuso = n;
	end;
	writeln('Tong so sieu nguyen to co ',n, ' chu so: ', soluong);
	// readln
end.
