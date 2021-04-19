var c,x,temp,cou:integer;
f:text;
flag:boolean;
begin
  flag:=true; 
  assign(f,'data_5.txt');
  reset(f);
  while not eof(f) do begin // цикл пока не кончится файл
  readln(f,x);
    if flag then begin //исключение для первого числа
    temp:= x; // temp - хранилище для числа повторяющегося большее количество раз
    cou:=1; 
    flag:=false;
    end
  else begin      
  if x = temp then // для остальных чисел. Проверяем одинаково ли число с предыдущим 
    cou:=cou+1 // если да, то увеличиваем щетчик 
  else begin // число другое, тогда 
    if cou > c then // c- общий щетчик количества появлений цифры, если соответственно наше число повторилось больше чем предыдущее, то обновляем его
    c:=cou;
    temp:=x; // и меняем наше число для сравнения со следующим
    cou:=1;
  end;
  end;
  end;
  if cou > c then // проверяем количество повторений последнего числа 
    c:=cou;
  close(f); // стандартное завершение 
  assign(f,'output_5.txt');
  rewrite(f);
  writeln(f,'Длинна самой длинной цепочки ', c);
  close(f);
end.
