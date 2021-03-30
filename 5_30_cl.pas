var c,i,temp,cou:integer;
f:text;
flag:boolean;
begin
  flag:=true;
  assign(f,'data_5.txt');
  reset(f);
  while not eof(f) do begin 
  readln(f,i);
    if flag then begin 
    temp:= i;
    cou:=1;
    flag:=false;
    end
  else begin     
  if i = temp then 
    cou:=cou+1
  else begin
    if cou > c then 
    c:=cou;
    
    temp:=i;
    cou:=1;
  end;
  end;
  end;
  
  
  close(f);
  assign(f,'output_5.txt');
  rewrite(f);
  writeln(f,'Длинна самой длинной цепочки ', c);
  close(f);
end.