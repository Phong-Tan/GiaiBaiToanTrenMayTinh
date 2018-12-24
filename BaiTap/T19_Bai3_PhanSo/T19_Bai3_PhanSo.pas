program T19_Bai3_PhanSo;
var 
    n: Longint;

procedure Nhap();
begin
    write('Nhap so n: '); readln(n);
end;

function UCLN(x, y: Longint): Longint;
begin
  while x <> y do
    if x > y then x := x - y
    else y := y - x;
    UCLN := x;
end;

procedure XuLy(n: Longint);
var p, dem, max, min: Longint;
begin
    dem := 0; max := 0; min := 10000001;
    write('Cac phan so dung va toi gian: ');
    for p := 1 to (n div 2) do
    begin
        if UCLN(p, n - p)=1 then
        begin
            write(p,'/', n - p,' ');
            inc(dem);
            if max < p then max := p;
            if min > n - p then min := n - p;
        end;
    end;
    writeln;
    writeln('So luong cac phan so dung va phan so toi gian p/q ', n ,' la: ' , dem);
    writeln('Phan so dung va toi gian lon nhat: ', max, '/', min);
end;
begin
    Nhap();
    XuLy(n);
    readln;
end.
