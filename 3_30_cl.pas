var i,s:integer;
f:text;
begin
  assign(f,'data.txt');
  reset(f);
  while not eof(f) do begin 
  readln(f,i);
  if i mod 2 = 0 then 
    s:=s+i;
    i:=0;
  end;
  close(f);
  assign(f,'output_3.txt');
  rewrite(f);
  writeln(f,'Сумма четных чисел = ', s);
  close(f);
end.