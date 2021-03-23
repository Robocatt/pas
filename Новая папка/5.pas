var c:char;
name: array of string;
z,j,i,x,goal:integer;
s,g:string;
begin
readln(x);
setlength(name,x);
  for i:=1 to x do begin
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
  if goal >0 then 
    name[i-1]:=s;
  end;

s:='';
 for i:=0 to x-1 do
        for j:=0 to x-2 do 
            if name[j][1] > name[j+1][1] then begin
                s := name[j];
                name[j] := name[j+1];
                name[j+1] := s;
            end;
 

for i:=0 to x-1 do 
  writeln(name[i]);



end.