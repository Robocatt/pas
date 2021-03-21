var c,b,r,ans,a,i:Integer;
s,g,g2: string; 
ch,ch2:char;
flag,f: boolean;
begin 
  writeln('Введите строку'); 
  readln(s);
  flag:=true;
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
      g2:=copy(s,1,i-1);
      val(g2,b,r);
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
'*': if ch2='*' then ans:=a*b*c else if ch2='+' then ans:=a*b+c else ans:=a*b-c; 
'+': 
begin 
if ch2 <>'*' then 
  begin 
  ans:=a+b; 
  if ch2='+' then 
    ans:=ans+c
  else ans:=ans-c
  end
 else 
   ans:=b*c+a;
end;
'-':
begin 
if ch2 <>'*' then 
  begin 
  ans:=a-b; 
  if ch2='+' then 
    ans:=ans+c
  else 
    ans:=ans-c
  end
 else 
   ans:=-b*c+a;
end;
   end;
  writeln(ans);
end.