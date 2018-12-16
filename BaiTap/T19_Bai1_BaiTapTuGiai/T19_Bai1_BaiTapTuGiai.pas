{ Cho so tu nhien n. Phan tich n = A + B sao cho UCLN(A, B) la lon nhat }
program T19_Bai1_BaiTapTuGiai;
var n, a, b, max, i: longint;
function UCLN(x,y: longint): longint;
    begin
        while x <> y do
            if x > y then x := x-y
            else y := y-x;
        UCLN := x;
    end;
BEGIN
    write('Nhap so tu nhien n >= 2 : '); readln(n);
    if n < 2 then writeln('So khong hop le')
    else
        if n mod 2 = 0 then writeln(n, ' = ', round(n/2),'+ ', round(n/2))
        else
            begin
                max := UCLN(1, n-1); a:=1; b:=n-1;
                for i:= 2 to (n div 2) do
                if max < UCLN(i, n-i) then
                    begin
                        max:=UCLN(i,n-i);
                        a:=i; b:=n-i;
                    end;
                writeln(n, ' = ',a,' + ',b);
            end;
    readln
END.