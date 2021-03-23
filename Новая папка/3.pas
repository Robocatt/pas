
var c:char;
z,i,n,goal:integer;
s,g:string;
ans: array[1..5] of string;
begin
  readln(n);
  for i:=1 to n do begin
    s:='';
    for z:=1 to 2 do begin 
   repeat read(c);
   s:=s+c;
   until c= ' ';
  end; 

   repeat read(c);
   until c = ' ';
  
  readln(g);
  val(g,goal,z);
  
  if goal > 2 then 
  ans[i]:= s;
  end;
  
  for i:=1 to 5 do 
    if ans[i]<>'' then 
      writeln(ans[i]);
  
  
  
end.