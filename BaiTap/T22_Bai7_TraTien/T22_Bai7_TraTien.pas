program T22_Bai7_TraTien;
(*----------------------------------
    n – so luong cac loai tien
    v – so tien can tra lai
    vt – gia tri tam thoi
    m[1..n] – cac menh gia
    s[1..n] – so luong to tien
    c[1..n] – so luong can chon
------------------------------------*)
var
    n, v, vt: Integer;
    m, s, c: array[0..100] of Integer;
    f, g: Text;

procedure Doc();
var i: Integer;
begin
    assign(f,'TRATIEN.INP'); reset(f); readln(f,n,v);
    for i := 1 to n do read(f,m[i]);
    for i := 1 to n do read(f,s[i]);
    close(f);
end;

function Min(a,b: integer): Integer;
begin
    if a > b then Min := b
    else Min := a;
end;

function Next: Boolean;
var i: Integer;
begin
    Next := false;
    i := n;
    while c[i] = s[i] do
    begin
        vt := vt - c[i] * m[i];
        c[i] := 0;
        i := i - 1;
    end;
    if i = 0 then exit();
    c[i] := c[i] + 1;
    vt := vt + m[i];
    Next := true;
end;

function Duyet: Boolean;
var i: Integer;
begin
    { Khoi tri }
    for i := 1 to n do
    begin
        s[i] := min(s[i],v div m[i]);
        c[i] := 0;
    end;
    c[0] := -1;  vt := 0; { tong gia tri cua 1 phuong an }
    Duyet := true;
    repeat
        if (vt = v) then exit;
    until not Next;
    Duyet := false;
end;

procedure Run;
var i: Integer;
begin
    Doc;  
    assign(g,'TRATIEN.OUT');  
    rewrite(g);
    if (Duyet) then
        for i := 1 to n do write(g,c[i],#32)
    else writeln(g, 0);
    close(g);
end;

BEGIN
  Run;
END.
