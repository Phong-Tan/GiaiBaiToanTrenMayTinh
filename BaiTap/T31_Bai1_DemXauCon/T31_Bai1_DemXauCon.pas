program T31_Bai1_DemXauCon;
var
	s: ansistring;
	A: array[1..1000] of String;
	n: Integer;
procedure Nhap();
begin
	write('Nhap s: '); readln(s);
end;

procedure TaoMang();
var
	i, j: Integer;
begin
	n := 0;
	for i := 1 to length(s) do
	begin
		for j := i to length(s) do
		begin
			inc(n);
			A[n] := copy(s, i, j - i + 1);
		end;
	end;
end;

procedure SapXep();
var
	i, j: Integer;
	temp: ansistring;
begin
	for i := 1 to n - 1 do
		for j := i + 1 to n do
			if A[i] > A[j] then
			begin
				temp := A[i]; A[i] := A[j]; A[j] := temp;
			end;
end;

function DemXauCon(): Integer;
var
	i, dem: Integer;
begin
	if n = 1 then
	begin
		DemXauCon := 1; exit();
	end;

	dem := 1;
	for i := 1 to n - 1 do
	begin
		if A[i] <> A[i + 1] then inc(dem);
	end;
	DemXauCon := dem;
end;
BEGIN
	Nhap();
	TaoMang();
	SapXep();
	writeln('So xau con: ',DemXauCon());
	readln
END.
