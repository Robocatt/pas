var x,ans,a,i,r:Integer;
s,l:string;
begin
  writeln('Введите строку'); 
  readln(s);
  i:=pos('+',s,1); 
  l:= copy(s,1,i-1);
  val(l,a,r);
  ans:=a;
  delete(s,1,i);
  i:=pos('+',s,1); 
  l:= copy(s,1,i-1);
  val(l,a,r);
  ans:=ans+a;
  delete(s,1,i);
  val(s,a,r);
  ans:=ans+a;
   writeln(ans);
  
  
  
end.