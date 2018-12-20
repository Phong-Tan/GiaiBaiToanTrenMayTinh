Program T22_BT05;
uses crt;
Type mang = array[1..1000] of Integer; 
Var n,x:Integer; 
	a:Mang; 
// Nhap mang
Procedure NhapMang(Var a:Mang ; Var n:Integer); 
Var i: Integer; 
Begin 
    Write('Nhap so luong phan tu: ');            
    Readln(n); 
    For i:=1 to n do 
    Begin 
        Write('Nhap phan tu thu ',i,' : ' );      
        Readln(a[i]); 
    End; 
End;

// Hien thi mang
Procedure HienThiMang(a : mang; n :Integer ); 
Var i:Integer; 
Begin 
For  i := 1 to N do 
    Write(a[i],' '); 
    Writeln; 
End;

// Thu tuc loai bpo phan tu X
Procedure LoaiBoX(Var a:mang; var n:Integer; var x:Integer);
var i,j:Integer;
begin
	Write('Nhap vao phan tu can loai bo: ');
	Readln(x); 
	for i:=1 to n do
		while (a[i] = x) do
		begin
			for j := i to n do
				a[j] := a[j+1]; 
			n:=n-1;
		end;
	end;

begin
	NhapMang(a,n);
	Writeln('MANG DA DUOC NHAP VAO');
	HienThiMang(a,n);
	LoaiBoX(a,n,x);
	Writeln('MANG SAU KHI LOAI BO');
	HienThiMang(a,n);
	Readln();
end.