Var  A               :array[1..20] of longint;
     S               :array[1..20] of string;
     st,kq           :string;
     k,i,p,m,j      :longint;
{==============}
Procedure  nhap;
Begin
    st:='';
      Write('Nhap p '); Readln(p);
      Write('Nhap k ');Readln(k);
      For i:=1 to p do 
      Begin 
      Write('Nhap phan tu thu ',i,' mang a: ' );      
      Readln(A[i]); 
      End; 
      for i:=1 to p do 
      Begin 
      Write('Nhap phan tu thu ',i,' mang s: ' );      
      Readln(S[i]); 
      End; 
      for i:=1 to p do
        For j:=1 to A[i] do
             st:=st+S[i];
      writeln(st);
End;
{===============}
Procedure   xuly;
var m:longint; sm:string; code:integer;
    Begin
     j:=0;
     m:=length(st)-k;
      Repeat
         sm:='9';
         dec(m);
             For i:=j+1 to length(st)-m do
                If sm>st[i] then
                  Begin
                     sm:=st[i];
                     j:=i;
                  End;
          kq:=kq+sm;
      Until m=0;
     Val(kq,m,code);
     Write(m);
    End;
{===============}
BEGIN
   nhap;
   xuly;
   Readln;
END.
