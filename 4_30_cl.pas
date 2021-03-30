var i,max,min:integer;
f:text;
flag:boolean;
begin
  flag:=true;
  assign(f,'data.txt');
  reset(f);
  while not eof(f) do begin 
  readln(f,i);
  if i mod 2 = 0 then begin
    if flag then begin
    max:=i;
    min:=i;
    flag:=false;
    end
   else begin 
      if i > max then 
        max:=i;
       if i < min then 
         min:=i;
    end;
    i:=0;
    end;
  end;
  close(f);
  assign(f,'output_4.txt');
  rewrite(f);
  writeln(f,'Максимальное четное = ', max);
  writeln(f,'Минимальное четное = ', min);
  close(f);
end.