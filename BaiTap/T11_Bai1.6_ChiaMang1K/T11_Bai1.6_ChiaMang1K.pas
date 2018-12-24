program ChiaMang1k;
uses crt;
const
      esc = #27; bl = #32; nl = #13#10;

var A: array [1..500] of Integer;
    n: Integer;

procedure SinhMang(m, k: Integer);
var i, d: Integer; 
    t : Longint; 
begin
    n := m;
    t := 0;
    if random(2)=0 then 
    begin
        for i := 1 to n do A[i] := random(n);
        exit;
    end;

    d := random(n div 2) + 1;
    for i := 1 to d do 
    begin
        A[i] := random(n); t := t + A[i];
    end;

    if random(2) = 0 then A[d] := A[d] + (k - 1) * t
    else t := k * t;

    for i := d + 1 to n - 1 do 
    begin
        A[i] := random(t);
        t := t - A[i];
    end;

    A[n]:=t;
end;

procedure Xem ;
var i: Integer;
begin
    writeln;
    for i := 1 to n do write(A[i]:4);
    writeln;
end;

function Chia (n, k:Integer): Integer;
var i, t, t2, tr: Integer;
begin
    Chia := -1; t := 0;
    for i := 1 to n do t := t + A[i];
    if odd(t) then exit;

    t2 := t div 2; 
    tr := 0;
    for i := 1 to n do
    begin
        tr := tr + A[i];
        if tr > t2 then exit;
        if tr = t2 then 
        begin
            Chia := i;
            exit;
        end;
    end;
end;

procedure Test;
var j, i, k: Integer;
    t: Longint;
begin
    randomize; 
    repeat
        n := 10 + random(10);
        k := random(5) + 1;
        writeln(nl,'n=',n,' k=',k);
        SinhMang(n,k);
        Xem;
        i := Chia(n,k);
        if i<0 then writeln('khong chia duoc')
        else 
        begin
            t := 0;
            for j := 1 to i do t := t + A[i];
            write('Doan 1: a[1..', i,'].');
            writeln('Tong =', t); t:=0;
            for j := i + 1 to n do t := t + A[j];
            write('Doan 2: a[', i+1,'..', n,'].');
            writeln('Tong=', t);
        end;
    until ReadKey=esc;
end;
begin
    Test;
end.
    

