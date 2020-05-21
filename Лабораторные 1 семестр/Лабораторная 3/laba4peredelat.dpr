program laba4peredelat;
{ѕрограмма проводит вычислени€ суммы
элементов р€да, при заданных точност€х (10-3 ,10-4,10-5)  "по определению"
с использованием циклов с постуслови€ми (|yk-yn|<=eps-условие выхода из цикла)}

//
{$APPTYPE CONSOLE}

//
uses
  SysUtils,
  math;

var
  yk,yn,eps,x,numerator,composition_x:real;
  denominator,yk1,yk2,eps1,eps2,row_element:real;
  k,k1,k2,c :integer ;
begin
  x:=-0.9;
  write('  x    |','    y    |','    eps    |',' n   |');
  write('     x    |','    y     |','    eps    |',' n   |');
  writeln('      x   |','     y     |','    eps     |',' n   |');
  repeat

    eps:=0.001;
    k:=0;
    c:=-1;
    yn:=0;
    composition_x:=1;
    row_element:=eps+0.1;
    while abs(row_element)>=eps do
    begin
      Numerator:=c*composition_x;
      denominator:=(4*k+1)*(4*k+3);
      row_element:=numerator/denominator;
      yk:=yn+row_element;
      yn:=yk;
      k:=k+1;
      c:=c*(-1);
      composition_x:=composition_x*x;
    end;
    if (x>(-0.1+1/10000)) and (x<(0)) then
    begin
      x:=abs(x);
    end;
    k:=k-1;


    eps1:=0.0001;
    k1:=0;
    c:=-1;
    yn:=0;
    composition_x:=1;
    row_element:=eps+0.1;
    while abs(row_element)>=eps1  do
    begin
      Numerator:=c*composition_x;
      denominator:=(4*k1+1)*(4*k1+3);
      row_element:=numerator/denominator;
      yk1:=yn+row_element;
      yn:=yk1;
      k1:=k1+1;
      c:=c*(-1);
      composition_x:=composition_x*x;
    end;

    if (x>(-0.1+1/10000)) and (x<(0)) then
    begin
      x:=abs(x);
    end;
    k1:=k1-1;

    eps2:=0.00001;
    k2:=0;
    c:=-1;
    yn:=0;
    composition_x:=1;
    row_element:=eps+0.1;
    while abs(row_element)>=eps2 do
    begin
      Numerator:=c*composition_x;
      denominator:=(4*k2+1)*(4*k2+3);
      row_element:=numerator/denominator;
      yk2:=yn+row_element;
      yn:=yk2;
      k2:=k2+1;
      c:=c*(-1);
      composition_x:=composition_x*x;
    end;
    k2:=k2-1;

    write('x=',x:5:2,'| ','y=',yk:6:3,'| ','eps=',eps:6:3,'| ','n=',k:2,'|   ');
    write('x=',x:5:2,'| ','y=',yk1:6:4,'| ','eps=',eps1:6:4,'| ','n=',k1:2,'|   ');
    writeln('x=',x:5:2,'| ','y=',yk2:6:5,'| ','eps=',eps2:6:5,'| ','n=',k2:2,'|');

  x:=x+0.1;
until x>=0.9+1/10000;
readln;
end.













