{ Chia mảng tỉ lệ 1:1 Tìm cách chia dãy số nguyên không âm a1, a2,...,an với n > 1 cho trước thành hai đoạn có tổng 
các phần tử trong mỗi đoạn bằng nhau}
program T9_Bai1_5_ChiaMang11;
uses crt;
const 
    MN = 500; esc = #27;
var 
    a : array [1..MN] of integer;
    n : integer;

procedure Sinhmang(m:integer);
var i, d, t : integer;
begin
    randomize;
    n := m;
    if random(2) = 0 then 
    begin
        for i := 1 to n do a[i] := random(m);
        exit;
    end;

    d := random(n div 2) + 1;
    t := 0;
    for i := 1 to d do 
    begin
        a[i] := random(n);
        t := t + a[i];
    end;

    for i := d + 1 to n - 1 do 
    begin 
        a[i] := random(t);
        t := t - a[i];
    end;
    a[n] := t;
end;

procedure Xem;
var i:integer;
begin
    writeln;
    for i := 1 to n do write(a[i], '   ');
    writeln;
end;

function Chia:integer;
var 
    i, t, t2, tr: integer;
begin
    Chia := -1;
    t := 0;
    for i := 1 to n do t := t + a[i];
    if odd(t) then exit;

    t2 := t div 2; 
    tr := 0;
    for i:=1 to n do
    begin
        tr := tr + a[i];
        if tr > t2 then exit;
        if tr = t2 then 
        begin
            Chia := i;
            exit;
        end;
    end;
end;

procedure Test;
var i:integer;
begin
    repeat
        Sinhmang(10); Xem; 
        i := Chia;

        if i = -1 then writeln('Khong chia duoc') 
        else 
        begin
            writeln('Doan thu nhat: a[1..',i,']');
            writeln('Doan thu hai: a[',i+1,'..',n,']');
        end;
    until ReadKey = esc;
end;

BEGIN
    Test;
END.
    