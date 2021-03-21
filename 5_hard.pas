var ans,a,i,r:Integer;
s,s2: string; 
symbol:char;
flag:boolean;
begin
flag:=true; 
writeln('Введите выражение в строчку'); 
readln(s);  
  while length(s) <> 0 do begin 
  if flag then begin 
  for i:=1 to length(s) do begin
   if not (s[i]  in ['0'..'9']) then begin
    s2:= copy(s,1,i-1);
    val(s2,a,r);
    ans:=a;
     delete(s,1,i-1);
   flag:=false;
  break;
end;
end;
end
    else 
    begin
     symbol:=s[1];
     delete(s,1,1);
     for i:=1 to length(s) do 
     begin
   if not (s[i]  in ['0'..'9']) then 
   begin
   s2:= copy(s,1,i-1);
   val(s2,a,r); 
 if symbol = '+' then 
  ans:= ans + a 
  else 
  ans:= ans -a; 
   delete(s,1,i-1);
  break;
  end;
  if i = length(s) then 
  begin
  s2:= copy(s,1,length(s));
  val(s2,a,r); 
  if symbol = '+' then 
  ans:= ans + a 
  else 
  ans:= ans -a;
  delete(s,1,i);
end;
end;
end;
end;
  writeln(ans);
end.