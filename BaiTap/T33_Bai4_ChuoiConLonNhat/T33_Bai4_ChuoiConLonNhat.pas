program T33_Bai4_ChuoiConLonNhat;
var 
	L:array[0..100,0..100] of integer;
	x,y,kq:string;max:integer;
{============}
procedure doc;
var 
	f:text;
begin
    assign(f,'ChuoiCon.INP');
    reset(f);  
    readln(f,x);  
    readln(f,y);  
    close(f);
end;
{==============}
procedure  xuli1;
var i,j,m,n:byte;
begin
  m:=length(x);n:=length(y);
  for i:=1 to m do
  for j:=1 to n do
     if x[i]=y[j] then L[i,j]:=L[i-1,j-1]+1
     else
        if L[i-1,j]>L[i,j-1] then L[i,j]:=L[i-1,j] else L[i,j]:=L[i,j-1];
  max:=L[m,n]; 
  // writeln(max);
end;
{=============}
procedure in_kq;
 var 
 	i,j,iss,js,so:byte; 
 	ch:char;
 	f: text;
begin
  	iss:=length(x);Js:=length(y);so:=0;
    repeat
        for ch:='9' downto '0' do
        begin
            i:=iss; j:=js;
            while (x[i]<>ch) and(i>0) do dec(i);
            while (y[j]<>ch) and(j>0) do dec(j);
            if L[i,j]=max-so then
            begin      
            	kq:=ch+kq;      
            	iss:=i; 
            	Js:=j;   
            	break;              
            end;
        end;
        inc(so);
    until max=so;
   assign(f, 'ChuoiCon.OUT');
   rewrite(f);
   writeln(f, kq);
   close(f);
end;
{=================}
begin   
	doc;   
	kq:=' '; 
	xuli1; 
	in_kq; 
	readln; 
end.
