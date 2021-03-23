var c:char;
z,i,n,goal:integer;
s,g:string;
name: array[1..5] of string;
number: array[1..5] of integer;
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
  
  name[i]:=s;
  number[i]:=goal;
  end;
  z:=1;
  for i:=1 to 5 do begin 
    if number[i] > z then 
      z:= i;
  end;
  
  writeln(name[z] + number[z]);
  
  
end.