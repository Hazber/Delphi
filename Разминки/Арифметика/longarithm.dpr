program longarithm;



{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  con1=50;
  con2=51;
var
  a: array [1..con1] of integer;
  b: array [1..con1] of integer;
  a1: array [1..con1] of integer;
  b1: array [1..con1] of integer;
  c: array [1..con2] of integer;
  d: array [1..con1] of integer;
  d1: array [1..con1] of integer;
  mult: array [1..con1*2] of integer;
  dn1: array [1..con1] of integer;
  n,j,i,num1,num2,div1,mod1: integer;
  l,k,m,z,count: integer;
  o,y,p,p2,o1,x,ind,ind1,ind2,j1,k1,n1,y1,q,q1: integer;
  g,f: string;
  sign: char;
  f1,f2: boolean;
  //digits: set of '0'..'9';
label
  Sl,Vc,Um,Del,endofprogram, endofprogram2, babam;


begin
//digits:= ['0'..'9'];
  writeln('input your first number');
  readln(g);
  writeln('Enter the symbol of what you want to do:');
  writeln('+, -, *, /');
  readln(sign);
  writeln('Input your second number');
  readln(f);
  writeln('Choose system');
  readln(ind);
  ind1:=ind-1;
  ind2:=ind;


//Инициализация первого числа
  n:=length(g);
  j:=con1;
  i:=n;
  if ord(g[1])=45 then
  num1:=2
  else num1:=1;
  while i>=num1 do
  begin
  //Системы от 11 до 36
    case ind of
    11..36:
    begin
      case ord(g[i]) of
      48..57:
      a[j]:=strtoint(g[i]);
      65..90:
      a[j]:=ord(g[i])-55;
      97..122:
      a[j]:=ord(g[i])-87;
      else
      begin
        writeln('You have entered the wrong symbol!');
        readln;
        exit;
      end;
      end;//case
      if a[j]<ind then
      begin
        j:=j-1;
        i:=i-1;
      end
      else
      begin
        writeln('Your symbol is not compitible with chosen system!');
        readln;
        exit;
      end;
    end;

  //Системы от 2 до 10
  2..10:
  begin
    case ord(g[i]) of
    48..57:
    a[j]:=strtoint(g[i]);
    else
    begin
     writeln('You have entered the wrong symbol!');
     readln;
     exit;
    end;
  end;//case
  if a[j]<ind then
  begin
    j:=j-1;
    i:=i-1;
  end
  else
  begin
    writeln('Your symbol is not compitable with chosen system!');
    readln;
    exit;
  end;
  end//low systems
  else
  begin
    writeln('You entered an incorrect system');
    readln;
    exit;
  end;
  end;//exeptions
  end;//while

  //Инициализация второго числа
  l:=length(f);
  k:=con1;
  m:=l;
  if ord(f[1])=45 then
   num1:=2
  else num1:=1;
  while m>=num1 do
  begin
    case ind of
    11..36:
    begin
      case ord(f[m]) of
      48..57:
      b[k]:=strtoint(f[m]);
      65..90:
      b[k]:=ord(f[m])-55;
      97..122:
      b[k]:=ord(f[m])-87;
      else
      begin
        writeln('You have entered the wrong symbol!');
        readln;
        exit;
      end;
      end;//case
      if b[k]<ind then
      begin
        k:=k-1;
        m:=m-1;
      end
  else
  begin
    writeln('Your symbol is not compitable with chosen system!');
    readln;
    exit;
  end;
  end;


  2..10:
  begin
    case ord(f[m]) of
    48..57:
    b[k]:=strtoint(f[m]);
    else
    begin
      writeln('You have entered the wrong symbol!');
      readln;
      exit;
    end;
  end;//case
  if b[k]<ind then
  begin
    k:=k-1;
    m:=m-1;
  end
  else
  begin
    writeln('Your symbol is not compitable with chosen system!');
    readln;
    exit;
  end;
  end//low systems
  else
  begin
    writeln('What,what is your number system?I don''t know it!');
    readln;
    exit;
  end;
  end;//exeptions
  end;//while

  if l>n then y:=l
  else y:=n;
  if (n=1) and (l=1) and (g[1]='0') and (f[1]='0') then
  begin
  write('your answer is: 0');
  readln;
  exit;
  end;
  case sign of
  '+': goto Sl;
  '-': goto Vc;
  '*': goto Um;
  '/': goto Del;
  else
  begin
    writeln('I can''t produce this operation(');
    readln;
    exit;
  end;
  end;
//Сложение
  Sl:
  o:=con2;
  j:=con1;
  p:=0;
  repeat
  begin
    c[o]:= (a[j])+(b[j])+p;
    if c[o]>ind1 then
    begin
      c[o]:=c[o]-ind2;
      p:=1;
      j:=j-1;
      o:=o-1;
    end
    else
    begin
      p:=0;
      j:=j-1;
      o:=o-1;
    end;
  end;
  until o<con2-y;
  if c[o]=0 then
  begin
    repeat
    o:=o+1;
    until (c[o]>0) and (o<con2+1);
    if (c[con2]=0) and (c[o]=0) then
    write('0');
  end;
  writeln('your answer is: ');
  while o<con2+1 do
  begin //Вывод в больших чем 10
    if c[o]>9 then
    begin
      write(char(c[o]+55));
      o:=o+1;
    end
  else
  begin //Вывод в младших
    write(c[o]);
    o:=o+1;
  end;
  end;
  goto babam;


//вычитание
 Vc:
  writeln('your answer is: ');
  p:=0;
  o1:=con1;
  j:=con1-y;
//Проверка какое из чисел больше
  if (a[j]=b[j])  then
  begin
    repeat
    begin
      j:=j+1;
      //k:=k+1;
    end;
    until (a[j]> b[j]) or (a[j]< b[j]) or (j=con2);
  end;
  if (a[j]< b[j]) or (n<l) or (a[con1-y]<b[con1-y])then
  begin
    j:=con1;
    repeat
    begin
      x:=b[j];
      b1[j]:=a[j];
      a1[j]:=x;
      d[o1]:= (a1[j])-(b1[j])-p;
      if d[o1]<0 then
      begin
        d[o1]:=d[o1]+ind2;
        p:=1;
        j:=j-1;
        o1:=o1-1;
      end
      else
      begin
         p:=0;
         j:=j-1;
         o1:=o1-1;
      end;
    end;
    until o1<con2-y;
    write('-');
  end

 else
 begin
   j:=con1;
   repeat
   begin
     d[o1]:= (a[j])-(b[j])-p;
     if d[o1]<0 then
     begin
       d[o1]:=d[o1]+ind2;
       p:=1;
       j:=j-1;
       o1:=o1-1;
     end
     else
     begin
       p:=0;
       j:=j-1;
       o1:=o1-1;
     end;
   end;
   until o1<con2-y;
   end;


  if d[o1]=0 then
  begin
    repeat
    o1:=o1+1;
    until (d[o1]>0) or (o1=con1);
    if (d[con1]=0) and (d[o1]=0)then
    write('0');
  end;

  while o1<con2 do
  begin
    if d[o1]>9 then
    begin
      write(char(d[o1]+55));
      o1:=o1+1;
    end
  else
  begin
    write(d[o1]);
    o1:=o1+1;
  end;
 end;
 goto babam;


//умножение
  Um:
  z:=2*con1;
  j:=con1;
  k:=con1;
  p:=0;
  count:=0;
  while k>=con2-l do
  begin
    repeat
    begin
      div1:=(a[j]*b[k]) div ind2;
      mod1:=(a[j]*b[k]) mod ind2;
      mult[z]:=mult[z]+mod1+p;
      p:=div1;
      z:=z-1;
      j:=j-1;
    end;
    until j<con1-n;
    inc(count);
    j:=con1;
    z:=2*con1;
    z:=z-count;
    k:=k-1;
  end;
  j:=con1;
// k:=con1;
 z:=2*con1;
 p:=0;
 p2:=0;
 repeat
 begin
   div1:=mult[z] div ind2;
   mod1:=mult[z] mod ind2;
   mult[z]:=mod1+p+p2;
   p2:=0;
   p:=div1;
   if mult[z]>ind1 then
   begin
     div1:=mult[z] div ind2;
     mod1:=mult[z] mod ind2;
     mult[z]:=mod1;
     p2:=div1;
  end;
  j:=j-1;
// k:=k-1;
  z:=z-1
 end;
 until j=con1-2*n-1;
 if mult[z]=0 then
 begin
   repeat
   z:=z+1;
{until (mult[z]>0) or (z=con1*2);
if (mult[con1*2]=0) and (mult[z]=0)then
write('0');
end;}
    until (mult[z]>0) or (z=con1*2);
{if mult[2*con1]=0 then
write('0'); }
    end;
    writeln('your answer is: ');
    while z<2*con1+1 do
    begin
      if mult[z]>9 then
      begin
        write(char(mult[z]+55));
        z:=z+1;
      end
    else
    begin
      write(mult[z]);
      z:=z+1;
    end;
  end;
{begin
write(mult[z]);
z:=z+1;
end;}
  goto babam;



//Деление
  del:
  writeln('your answer is: ');
  if (l=1) and (f[1]='0') then
  begin
    write('you can''t do that!');
    goto babam;
  end;
  n1:=0;
  count:=0;
  p:=0;
//o1:=y;
  j:=con1;
  k:=con1;
  q:=con1;
  for o:=y downto 1 do
  begin
    c[o]:=a[j];
    a[j]:=0;
    j:=j-1;
  end;
  for k1:=y downto 1 do
  begin
    b[k1]:=b[k];
    b[k]:=0;
    k:=k-1;
  end;
//Проверка какое из чисел больше
  repeat
  o:=0;
  k1:=0;
  if (c[o]=b[k1]) then
  begin
    repeat
    o:=o+1;
    k1:=k1+1;
    until (c[o]> b[k1]) or (c[o]< b[k1]) or ((o=y) and (k1=y));
  end;
//Делитель меньше делимого на первом шаге
  if (c[o]<b[k1]) and (count=0) then
  begin
    write('0.');
    f1:= true;
    goto endofprogram;
  end;

//Делитель меньше делимого но не на первом шаге
  if (c[o]<b[k1]) and (count>0) then
  begin
    q:=con1;
    q1:=1;
    p:=0;
    begin
      if dn1[q1]=0 then
      begin
        repeat
        q1:=q1+1;
        until (dn1[q1]>0) or (q1=con1);
      end;
     while q1<con2 do
     begin
       if dn1[q1]>9 then
 begin
   write(char(dn1[q1]+55));
   q1:=q1+1;
 end
 else
 begin
   write(dn1[q1]);
   q1:=q1+1;
 end;
 end;
 f1:=true;
 write('.');
 goto endofprogram;
 end;
 end;

//Делитель больше делимого или они равны но не на первом шаге
 if (c[o]> b[k1]) or ((o=y) and (k1=y){ and (count>0)})  then
//Вычитание
 begin
   o:=y;
   k1:=y;
 repeat
   c[o]:= (c[o])-(b[k1])-p;
   if c[o]<0
   then
   begin
     c[o]:=c[o]+ind2;
     p:=1;
     k1:=k1-1;
     o:=o-1;
   end
  else
  begin
    p:=0;
    k1:=k1-1;
    o:=o-1;
  end;
  until o<1;
//Наращивание результата суммой
//sl:
  f2:=false;
  q1:=con1;
  p:=0;
  repeat
    dn1[q1]:= dn1[q1]+1+p;
    if dn1[q1]>ind1 then
    begin
      dn1[q1]:=dn1[q1]-ind2;
      p:=0;
      q1:=q1-1;
    end
   else
   begin
     p:=0;
     f2:=true;
     q1:=q1-1;
   end;
  until (q1<con2-y) or f2;
  end;


  count:=count+1;
  until f1;
  endofprogram:
//Конец программы по определению знаков до запятой

//Цифры после запятой
  count:=0;
  repeat
  n1:=0;
  y1:=y+1;
  for k1:=y downto 1 do
  begin
    b[y1]:=b[k1];
    b[k1]:=0;
    y1:=y1-1;
  end;
  y1:=y+1;
  y:=y1;
  for q1:=1 to con1 do
  dn1[q1]:=0;

//Проверка какое из чисел больше
  repeat
  o:=0;
  k1:=0;
  if (c[o]=b[k1]) then
  begin
    repeat
    o:=o+1;
    k1:=k1+1;
  until (c[o]> b[k1]) or (c[o]< b[k1]) or ((o=y) and (k1=y));
  end;

//Делитель меньше делимого но не на первом шаге
  if (c[o]<b[k1]) then
  begin
  q1:=1;
  if dn1[q1]=0 then
  begin
    repeat
    q1:=q1+1;
    until (dn1[q1]>0) or (q1=con1);
  end;

  while q1<con2 do
  begin
    if dn1[q1]>9
    then
    begin
      write(char(dn1[q1]+55));
      q1:=q1+1;
    end
    else
    begin
      write(dn1[q1]);
      q1:=q1+1;
    end;
    end;
 goto endofprogram2;
end;

//Делитель больше делимого или они равны но не на первом шаге
if (c[o]> b[k1]) or ((o=y) and (k1=y))   then
//Вычитание
begin
 o:=y;
 k1:=y;
repeat
c[o]:= (c[o])-(b[k1])-p;
if c[o]<0
then
begin
c[o]:=c[o]+ind2;
p:=1;
k1:=k1-1;
o:=o-1;
end
else
begin
p:=0;
k1:=k1-1;
o:=o-1;
end;
until o<1;
//Наращивание результата суммой
f2:=false;
q1:=con1;
p:=0;
repeat
dn1[q1]:= dn1[q1]+1+p;
if dn1[q1]>ind1 then
begin
dn1[q1]:=dn1[q1]-ind2;
p:=0;
q1:=q1-1;
end
else
begin
p:=0;
f2:=true;
q1:=q1-1;
end;
until (q1<con2-y) or f2;

end;
endofprogram2:
until (c[o]<b[k1]) ;
count:=count+1;
until count=5;
babam:
readln;
 end.




