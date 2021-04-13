var c,x,temp,cou:integer;
f:text;
flag:boolean;
begin
  flag:=true;
  assign(f,'data_5.txt');
  reset(f);
  while not eof(f) do begin 
  readln(f,x);
    if flag then begin 
    temp:= x;
    cou:=1;
    flag:=false;
    end
  else begin     
  if x = temp then 
    cou:=cou+1
  else begin
    if cou > c then 
    c:=cou;
    temp:=x;
    cou:=1;
  end;
  end;
  end;
  if cou > c then 
    c:=cou;
  close(f);
  assign(f,'output_5.txt');
  rewrite(f);
  writeln(f,'Длинна самой длинной цепочки ', c);
  close(f);
end.