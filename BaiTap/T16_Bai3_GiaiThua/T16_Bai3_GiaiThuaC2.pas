{ Cho số tự nhiên n. P = n!. Hỏi:
a. Có bao nhiêu chữ số 0 tận cùng.
b. Số khác 0 tận cùng của P là chữ số nào. }
program T16_Bai3_GiaiThuaC2;
var
    n: Integer;

{ Nhap }
procedure Nhap();
begin
    writeln('Nhap n: '); readln(n);
end;

{ Dem chu so 0 tan cung cua n! }
function DemSo0(n: Integer): Integer;
var m, k, s5: Integer;
begin
    s5 := 0;
    m := 5;
    while m <= n do
    begin
        k := m;
        while k mod 5 = 0 do 
        begin
            inc(s5);
            k := k div 5;
        end;
        m += 5;
    end;
    
   DemSo0 := s5;
end;


{ Tim so khac 0 tan cung cua p }
function SoKhac0(n: Integer): Integer;
var
    s2, s5, p, m, k: Integer;
begin
    s2 := 0; s5 := 0; p := 1;
    for m := 2 to n do
    begin
        k := m;
        while k mod 2 = 0 do
        begin
            inc(s2); k := k div 2;
        end;
        while k mod 5 = 0 do
        begin
            inc(s2); k := k div 5;
        end;

        p := p * k mod 10;
    end;

    for m := 0 to s2 - s5 do
        p := p * 2 mod 10;
        
    SoKhac0 := p;
end;

BEGIN
    Nhap();
    writeln('So chu so 0 tan cung la: ', DemSo0(n));
    writeln('So khac 0 tan cung cua P la: ', SoKhac0(n));
    readln
END.