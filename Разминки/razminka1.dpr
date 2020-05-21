program razminka1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var


  x,max,distancia,distanciamin,epsilon,distance:real;
  i,j,point:integer;
  a:array[1..2,1..10] of integer;
  procedure calcdistance(distance:real;j:integer; var distancia,point:real);
  begin
  for j:=1 to 10 do
    begin
      distance:=sqrt(abs((a[1,j]-x)*a[2,j]));
      if distance>distancia then
        begin
          distancia:=distance;
          point:=a[1,j];
        end;
    end;
    end;
begin

  for i:=1 to 10 do
  begin
    for j:=1 to 2 do
    begin
      writeln(' ');
      readln(a[i,j]);
    end;
  end;

  readln(epsilon);
  x:=0;
  max:=0;

  for i:=1 to 10 do
  begin
  if a[1,i]>max then
    max:=a[1,i];
  end;
  distancia:=0;
  distanciamin:=0;
  while x<=max do
  begin
     distancia:=0;
  //count distance
    calcdistance;

    if distancia<distanciamin then
      distanciamin:=distancia;

    x:=x+epsilon;
   end;
   writeln('tochka:0,',point);
   readln;


  { TODO -oUser -cConsole Main : Insert code here }
end.
