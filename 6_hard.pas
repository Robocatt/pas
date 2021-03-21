var r,o,a,b,c,i:Integer;
s,g,m: string; 
ch,ch2:char;
flag: boolean;
begin 
flag:=true;
writeln('Введите выражение в строчку'); 
readln(s);
  while length(s) <>0 do 
   begin
     for i:=1 to length(s) do 
       begin 
    if (not (s[i] in ['0'..'9'])) and flag then
      begin
      g:=copy(s,1,i-1);
      val(g,a,r);
      ch:=s[i];
      delete(s,1,i);
      flag:=false;
      break;
      end;
     if (not (s[i] in ['0'..'9']) and not flag) then begin 
      m:=copy(s,1,i-1);
      val(m,b,r);
      ch2:=s[i];
      delete(s,1,i);
      break;
     end;
    if i = length(s) then
      begin 
    val(s,c,r);
    delete(s,1,length(s));
    end;
    end;
    end;
   Case ch of 
'*':
begin 
if ch2='*' 
 then o:=a*b*c 
else 
  if ch2='+' 
  then o:=a*b+c 
  else o:=a*b-c;
 end;
'+': 
begin 
if ch2 <>'*' then 
  begin 
  o:=a+b; 
  if ch2='+' then 
    o:=o+c
  else o:=o-c
  end
 else 
   o:=b*c+a;
end;
'-':
begin 
if ch2 <>'*' then 
  begin 
  o:=a-b; 
  if ch2='+' then 
    o:=o+c
  else 
    o:=o-c
  end
 else 
   o:=-b*c+a;
end;
   end;
  writeln(o);
end.