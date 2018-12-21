program T21_Bai3_BaoNhieuDiem;
var
	n, i, j: Integer;
	A: array[1..1000] of Integer;

{ Doc du lieu tu file }
procedure DocDuLieu();
var
	f: Text;
begin
	assign(f, 'INPUT.INP');
	reset(f);
	readln(f, n);
	for i := 1 to n do
		read(f, A[i]);
	close(f);
end;

{ Sap xep giam dan }
procedure SapXepGiamDan();
var
	temp: Integer;
begin
	for i := 1 to n - 1 do
		for j := i + 1 to n do
			if A[i] > A[j] then
			begin
				temp := A[i]; A[i] := A[j]; A[j] := temp;
			end;
end;
BEGIN
	DocDuLieu();
	SapXepGiamDan();
	i := 1;
	while A[i] = A[i + 1] do inc(i);
	inc(i);
	while A[i] = A[i + 1] do inc(i);

	writeln(A[i+1]);
	readln
END.
