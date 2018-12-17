Program T22_BT04;
Uses crt;
Type Mang = array[1..1000] of Integer;
var n,k:Integer;
	a:Mang;

// Thu tuc thuc hien nhap mang
Procedure NhapMang(Var m:mang; Var dodai:Integer);
var i:Integer;
begin
	write('Nhap vao do dai mang: ');
	readln(dodai);
	for i := 1 to dodai do
	begin
		write('Moi nhap phan tu thu ',i,' : ');
		readln(m[i]);
	end;
end;

// Thu tuc hien thi mang
Procedure HienThiMang(m:mang; dodai:Integer);
var i:Integer;
begin
	for i := 1 to dodai do
	begin
		write(m[i],' ');
	end;
	writeln();
end;

//Thu tuc sap xep mang
Procedure SapXep(Var m:mang; dodai:Integer);
Var i,j,tg:Integer;
begin
	for i := 1 to dodai - 1 do
		for j := i+1 to dodai do
			if(m[i] < m[j]) then
				begin
					tg := m[i];
					m[i] := m[j];
					m[j] := tg; 
				end;	
end;

// Thu tuc chen phan tu moi vao mang
Procedure ChenMang(var m:mang; var dodai:Integer; var k:Integer); 
var i,j:Integer;
begin
	write('Nhap vao phan tu can chen: ');
	readln(k);
	// Tim vi tri chen vao
	for i := 1 to dodai do
		if (m[i] <= k) then
			break;
	//Thuc hien thao tac chen
	for j := dodai+1 downto i do 
		m[j] := m[j-1]; 
		
		m[i] := k;
		dodai := dodai+1;
end;

begin
	writeln('NHAP MANG');
	NhapMang(a,n);
	SapXep(a,n);
	HienThiMang(a,n);
	ChenMang(a,n,k);
	writeln('MANG SAU KHI CHEN');
	HienThiMang(a,n);
	readln();
end.