var ans,a,i,r:Integer;
s,l:string;
begin
  writeln('Введите строку'); 
  readln(s);
  for i:= 1 to length(s) do 
    begin 
  if not (s[i]  in ['0'..'9']) then 
        begin
        l:= copy(s,1,i-1);
        val(l,a,r);
        ans:=a;
        delete(s,1,i);
        val(s,a,r);
        ans:=ans-a;
        break;
        end;
        
     end;
   writeln(ans);
  
  
  
end.