program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  programm=record
    name:string;
    author:string;
    size:integer;
    popularity:integer;
  end;

 Tarray=array[1..4] of programm;

var
  Mass:Tarray;
  f:textfile;
  max,vivod: programm;

procedure vvod(var fi:textfile;var Masss:Tarray);
var
  i:integer;
begin
  AssignFile(f,'input.txt');
  reset(f);
  for i:=1 to 4 do
  begin
    with Mass[i] do
    begin
      readln(f,name);
      readln(f,author);
      readln(f,size);
      readln(f,popularity);

    end;
  end;
    closefile(f);
end;

procedure solve(var maxx,vivods:programm;var masss:Tarray);
var
  i:integer;
begin
  max.popularity:=mass[1].popularity;
  vivods:=mass[1];
  for i:=1 to 4 do
  begin
    if ((Masss[i].size<1024) and (Maxx.popularity<masss[i].popularity)) then
    begin
      vivods:=masss[i];
    end;
  end;
end;

begin
  vvod(f,mass);
  solve(max,vivod,mass);
  writeln(vivod.name);
  readln;
end.

