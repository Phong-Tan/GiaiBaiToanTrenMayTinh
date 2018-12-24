program T32_Bai3_ChiecNonKyDieu;
var 
	s1,s2,s: ansistring;
    f,g:text;
    dem,n,i,x: longint;
begin
    assign(f,'CNDK.INP'); reset(f);
    assign(g,'CNDK.OUT'); rewrite(g);
  readln(f,N);
  s:='';
  FOR i:=1 to n do
   begin
     read(f,x);
     str(x,s1);
     s:=s+s1;
   end;
  dem:=0;
  delete(s,length(s),1);
  for i:=1 to length(s) do
    begin
     s2:=s;
     s1:=copy(s2,1,i);
     while (pos(s1,s2)<>0) and (length(s2)<>0) do delete(s2,1,i);
     if length(s2)=0 then
          begin
           dem:=i; write(dem);
           break;
          end;
        end;
  writeln(g,dem);
  close(f); close(g);
  readln;
end.
