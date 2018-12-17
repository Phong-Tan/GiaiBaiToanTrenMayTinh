Program T22_BT03;
// Khai báo chương trình
Uses crt;
Type mang = array[1..1000] of Integer;
Var m,n:Integer; 
	a,b,c:mang;
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
			if(m[i] > m[j]) then
				begin
					tg := m[i];
					m[i] := m[j];
					m[j] := tg; 
				end;	
end;

// Thu tuc ghep 2 mang a, b thanh c
Procedure GhepMang(a,b:mang; Var c:mang; m,n:Integer);
Var i:Integer;
begin
 	for i := 1 to m do 
 	begin
 		c[i] := a[i];
 	end; 
 	for i := 1 to n do 
 	begin
 		c[m+i] := b[i];
 	end; 
end; 

// Chuong trinh chinh
begin
	writeln('NHAP MANG A');
	NhapMang(a,m);
	SapXep(a,m);
	writeln('NHAP MANG B');
	NhapMang(b,n); 
	SapXep(b,n);
	writeln('Danh sach mang A da sap xep'); 
	HienThiMang(a,m); 
	writeln('Danh sach mang B da sap xep');
	HienThiMang(b,n); 
	GhepMang(a,b,c,m,n);
	writeln('Danh sach mang C ghep tu A va B');
	HienThiMang(c,m+n);
	SapXep(c,m+n); 
	writeln('Danh sach mang C da sap xep');
	HienThiMang(c,m+n);
	readln();
end.