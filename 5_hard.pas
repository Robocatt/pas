var r,ans,a,i:Integer;
s,g: string; 
ch:char;
f:boolean;
begin 
  writeln('Введите строку'); 
  readln(s);
  f:=true;
  while length(s) <>0 do 
   begin 
   if f then
    begin 
    for i:=1 to length(s) do 
     begin
      if not (s[i]  in ['0'..'9']) then 
        begin
        g:= copy(s,1,i-1);
        val(g,a,r);
        ans:=a;
        delete(s,1,i-1);
        f:=false;
        break;
        end;
     end;
    end
    else 
    begin
     ch:=s[1];
     delete(s,1,1);
     for i:=1 to length(s) do 
     begin
      if not (s[i]  in ['0'..'9']) then 
       begin
       g:= copy(s,1,i-1);
       val(g,a,r); 
        if ch = '+' then 
         ans:= ans + a 
        else 
         ans:= ans -a; 
        delete(s,1,i-1);
        break;
        end;
       if i = length(s) then 
        begin
         g:= copy(s,1,length(s));
         val(g,a,r); 
         if ch = '+' then 
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