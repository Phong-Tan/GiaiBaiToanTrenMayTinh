program T22_BT02;
uses crt;
type mang = array[1..1000] of Integer;
var a:mang;
	n,i:Integer;
// Thu tuc nhap mang
procedure NhapMang(var a:mang; var n:Integer); 
begin
	write('Nhap vao so luong phan tu cho mang: ');
	readln(n);
	for i := 1 to n do
	begin
		write('Phan tu thu ',i,' : ');
		readln(a[i]);
	end; 
end;
// Thu tuc sap xep loai 1 (chia het cho 3, le)
function SapXepLoai1():Integer;
var i,tg,tam:Integer;
begin
	tam := 1;
	for i := 1 to n do 
	begin
		if((a[i] mod 3 = 0) and (a[i] mod 2 <> 0)) then 
		begin
			if (tam <> i) then
			begin
				tg := a[tam];
				a[tam] := a[i];
				a[i] := tg;
			end;  
			tam := tam + 1;
		end; 
	end;
	SapXepLoai1 := tam-1;
end;
// Thu tuc sap xep loai 2 3
procedure SapXepLoai23();
Var l,r,vt,tg:Integer;
begin
	l := SapXepLoai1(); 
	r := n;
	vt := n;
	while (r>l) do 
	begin
		if ((a[r] mod 3 = 0) and (a[r] mod 2 = 0))  then
		begin
			if (vt <> r) then
			begin
				tg := a[r];
				a[r] := a[vt];
				a[vt] := tg;	
			end; 
			vt := vt -1;
		end;
		r := r-1;
	end; 
end; 
// Thu tuc hien thi mang
procedure HienThiMang();
begin
	for i := 1 to n do
		write(a[i],' '); 
	writeln();
end;

begin
	NhapMang(a,n);
	clrscr;
	HienThiMang();
	SapXepLoai1();
	SapXepLoai23();
	HienThiMang();
	readln();
end.