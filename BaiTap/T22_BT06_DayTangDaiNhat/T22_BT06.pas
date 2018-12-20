program bt;{day con tang lien tiep dai nhat}
uses crt;
var a: array[1..1000] of integer;
	n,dodai,dau :integer;
	tepdoc, tepghi: text; 
// Doc du lieu tu tepdoc
Procedure DocDuLieu(var a:array of integer);
var i:integer;
begin
	assign(tepdoc,'MDOAN.INP');
	reset(tepdoc); 
	readln(tepdoc,n);  
	i := 1;
	while not eof(tepdoc) do 
	begin  
		read(tepdoc,a[i]); 
	  	i := i+1; 
	end; 
	close(tepdoc);  
end;

// Kiem tra day giam
Procedure KiemTraDayGiam(var a:array of integer);
var i,tam,cuoi,dem:integer;
begin
	dem := 1; 
	tam := 1;
	cuoi := 1;
	// Tang them 1 gia tri cho mang de kiem tra den n
	n := n+1;
	a[n] := a[n-1] -1; 
	for i:= 1 to n do
	begin
		if (a[i] <= a[i+1]) then 
			dem := dem +1
		else
			begin
				if (tam < dem) then
				begin
					tam := dem;
					cuoi := i;
				end; 
				dem := 1; 
			end;
	end;
	// Gan lai gia tri do dai va diem dau cho bien toan cuc
	dau := (cuoi - tam) + 1; 
	dodai := tam;
end; 

// Thu tuc ghi ket qua ra file
Procedure GhiKetQua(var tepghi:text);
begin
	assign(tepghi, 'MDOAN.OUT');
	rewrite(tepghi);
		write(tepghi, dau,' ');
		write(tepghi, dodai);
	close(tepghi);
	writeln('Ghi thanh cong gia tri diem dau = ',dau,' do dai = ',dodai,'  vao tep MDOAN.OUT!'); 
end;

begin
	DocDuLieu(a);
	KiemTraDayGiam(a); 
	GhiKetQua(tepghi);
	readln();
end.