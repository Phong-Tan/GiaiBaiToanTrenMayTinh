var   d,i,j,t:longint;s:ansistring;
        a:array[1..10000]of ansistring;
{======================}
procedure Q_sort(l,h:longint);
var x,y:longint;k,tg:string;
begin
        x:=l;
        y:=h;
        k:=a[(x+y)div 2];
repeat
        while a[x]<k do inc(x);
        while a[y]>k do dec(y);
        if x<=y then
        begin
                tg:=a[x];
                a[x]:=a[y];
                a[y]:=tg;
                inc(x);dec(y);
        end;
until x>y;
if x<h then Q_sort(x,h);
if y>l then Q_sort(l,y);
end;
{=====================}
procedure  xuly;
 var  kq:longint;
begin
write('nhap xau s  ');readln(s);
kq:=0;
for i:=1 to length(s) do
        begin
        d:=1;
        for j:=i to length(s) do
                begin
                  a[d]:=copy(s,j-i+1,i);
                  inc(d);
                end;
        Q_sort(1,d-1); a[d+1]:=' ';
        for t:=1 to d-1 do
           if a[t]<>a[t+1] then inc(kq);
        end;
 write(kq);
end;
{=============}
begin
  xuly;
  readln ;
end.
