{ 1. Cac khai bao cho chuong trinh    } 
Program BT01; 
Uses crt; 
Type Mang = array[1..100] of Integer; 
Var N:Integer; 
A:Mang; 
{ 2. Thu tuc nhap mang A voi N la so phan tu  } 
Procedure NhapMang(Var A:Mang ; Var N:Integer); 
Var i: Integer; 
Begin 
    Write('Nhap so luong phan tu:' );            
    Readln(N); 
    For i:=1 to N do 
    Begin 
        Write('Nhap phan tu thu ',i,' : ' );      
        Readln(A[i]); 
    End; 
End;

{ 3. Thu tuc hien thi mang A voi N la so phan tu  } 
Procedure HienThiMang(Var A : Mang; N :Integer ); 
Var i:Integer; 
Begin 
For  i := 1 to N do 
    Write( A[i]:2 ); 
    Writeln; 
End;

{ 4. Chuong trinh con dua chan le ve hai dau  }
Function ChiaChanLe (Var A : Mang; N:Integer):Integer;
var l,r,tg:Integer;
begin
    l:=1;
    r:=N;
    while (l<r) do
    begin
        while (l<r) and (A[l] mod 2 <> 0)  do  
            l := l+1;       
        while (r>l) and (A[r] mod 2 = 0)  do  
            r := r-1; 
        if (l<r) then
        begin
            tg := A[l];
            A[l] := A[r];
            A[r] := tg; 
        end;  
    end;
    ChiaChanLe := l;
end; 

{ 5. Sap xep lai mang   }
procedure SapXepLe(Var A:Mang; vitri:Integer);
var i,j,tg:Integer;
begin
    for i := 1 to vitri -1 do
        for j := i+1 to vitri do 
        begin
            if (A[i] > A[j]) then
            begin
                tg := A[i];
                A[i] := A[j];
                A[j] := tg;
            end;
        end;
end;

procedure SapXepChan(Var A:Mang; vitri:Integer; N:Integer);
var i,j,tg:Integer;
begin
    for i := vitri to N-1 do
        for j := i+1 to N do 
        begin
            if (A[i] < A[j]) then
            begin
                tg := A[i];
                A[i] := A[j];
                A[j] := tg;
            end;
        end;
end;

{ 6. Than chuong trinh chinh   }

BEGIN 
    NhapMang(A, N);  
    Write('Mang da nhap vao: ');
    HienThiMang(A, N); 
    ChiaChanLe(A, N);
    Write('Mang da chia chan - le: ');
    HienThiMang(A, N);
    Write('Mang da sap xep: ');
    SapXepLe(A, ChiaChanLe(A, N)-1);
    SapXepChan(A, ChiaChanLe(A, N), N);
    HienThiMang(A, N);
    Readln; 
END.
