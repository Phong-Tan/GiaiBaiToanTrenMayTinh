program T30_Bai3_XauPalindrome3;
var  
	L: array[0..100,0..100] of Byte;
    kq: array[1..100] of Boolean;
    m: Integer; 
    s1,s2: String;
{==========}
procedure DocDuLieu();
var 
	i: Integer;
	f: Text;
begin
    assign(f,'xau_dx.inp');
    reset(f);
	readln(f, s1);
	m := length(s1);
	s2 := '';
  	for i := m downto 1 do s2 := s2 + s1[i];
	close(f);
end;
{==========}
function max(x,y:integer):integer;
begin
   if x>y then max:=x else max:=y;
end;
{===========}
procedure XuLy();
var 
	i , j: Integer;
begin
  fillchar(L, sizeof(L), 0);
  for i := 1 to m do
    for j := 1 to m do
      if s1[i] = s2[j] then L[i, j] := L[i-1, j-1] + 1
      else L[i, j] := max(L[i-1, j], L[i, j-1]);
end;
{====================}
procedure GhiDuLieu();
var 
	i, j, d: Integer;
	f: Text;
begin
    assign(f,'xau_dx.out');
    rewrite(f);
    writeln(f, m - L[m, m]);
    fillchar(kq, sizeof(kq), false);

    i := m; j := m;
    while (i > 0) and (j > 0) do
        if s1[i] = s2[j] then
            begin
              kq[i] := true;
              dec(i); 
              dec(j);
            end
        else
            if L[i, j] = L[i, j-1] then dec(j)
            else dec(i);

    for i := 1 to m do
       if kq[i] = false then write(f,s1[i],' ');
    close(f);
end;
{====================}
BEGIN
	DocDuLieu();
	XuLy();
	GhiDuLieu();
end.
