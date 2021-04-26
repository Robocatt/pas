type person = record
  surname : string[50];
  name : string[50];
  year : integer;
  height : integer;
  weight : integer;
end;
var f: text;
i,j: integer;
s: string;
midh,midw : double;
cla : array of person;
begin
  assign(f,'input.txt');
  reset(f);
  setlength(cla,100);
  while (not eof(f)) do begin
    readln(f,cla[j].surname);
    readln(f,cla[j].name);
    readln(f,cla[j].year);
    readln(f,cla[j].height);
    readln(f,cla[j].weight);
    inc(j);
  end;
  for j:=0 to 100 do begin 
    if cla[j].year = 0 then 
      break;
  end;
  setlength(cla,j);
  writeln(cla);
  dec(j);
  for i:=0 to j do begin 
    midh:= midh + cla[i].height;
    midw:= midw + cla[i].weight;
  end;
  midh:=midh / (j+1);
  midw:=midw / (j+1);
  close(f);
  assign(f,'rost.txt');
  rewrite(f);
  for i:=0 to j do begin 
     if cla[i].height > midh then begin
     str(2021 - cla[i].year,s);
       writeln(f, cla[i].surname + ' ' + cla[i].name +' '+ s);
     end;
   end;
  close(f);
  assign(f,'ves.txt');
  rewrite(f);
  for i:=0 to j do begin 
     if cla[i].weight < midw then begin
     str(2021 - cla[i].year,s);
       writeln(f, cla[i].surname + ' ' + cla[i].name +' '+ s);
     end;
   end;
   close(f);
end.


