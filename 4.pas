var i,j,temp: Integer;
f: text;
a:array of integer;
begin
  assign(f,'input.txt');
  reset(f);
  i:=0;
  setlength(a,100); 
  while ((not eof(f)) and (i < 100)) do begin 
    readln(f,a[i]);
    inc(i);
  end;
  for i:= 1 to length(a) do 
    if a[i] = 0 then 
      break;
  setlength(a,i);
  for j:=0 to length(a)-1 do begin
    for i:=0 to length(a)-2 do begin
      if a[i] mod 10 < a[i+1] mod 10 then begin 
        temp:= a[i];
        a[i]:=a[i+1];
        a[i+1]:=temp;
      end;
   end;
    end; 
  close(f);
  assign(f,'output_4.txt');
  rewrite(f);
  for i:=0 to length(a)-1 do 
    writeln(f,a[i]);
   close(f);
  
  
  
 end.