var i,j,s,ax: Integer;
f: text;
a:array of integer;
temp:array of integer;
с: array of array of integer;
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
  setlength(с,i);
  for j:=0 to i-1 do
  SetLength(с[j],2);
  for j:=0 to length(a)-1 do begin
    s:=0;
    ax:=a[j];
    while ax > 0 do
      begin
        s := s + ax mod 10;
        ax := ax div 10;
      end;
    с[j,0]:=s;
    с[j,1]:=j;
    end;
  
      for j:=0 to length(a)-1 do begin
       for i:=0 to length(a)-2 do begin
      if с[i,0] > с[i+1,0] then begin
        temp:=с[i];
        с[i]:=с[i+1];
        с[i+1]:=temp;
      end;
     end;
     end;
  close(f);
  assign(f,'output_5.txt');
  rewrite(f);
   for i:=0 to length(a)-1 do 
      writeln(f,a[с[i,1]]);
     close(f);
  end.