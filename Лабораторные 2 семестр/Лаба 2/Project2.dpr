program Laba2;

{$APPTYPE CONSOLE}

uses
  SysUtils,Math;
const
  Size_mass: array[1..7] of integer=(100,200,300,500,1000,2000,3000);
Type
  Tmass=array of integer;
var
  Size_mass_counter,size{,special_counter,prev_size},Massive_fil_counter:integer;
  comparison_barrier,comparison_binary:integer;
  mass:Tmass;
  c1,c2:real;

Procedure RandomFillMAssive(size_of_massive:integer;var Massive:Tmass);
var
  i:integer;
begin
  Randomize;
  for i:=1 to size_of_massive do
  begin
    Massive[i]:=Random(100);
  end;
end;

Procedure SortInsertWithBarier(size_of_massive:integer;var Massive_for_barrier:Tmass);
var
 i,j:integer;
begin
  Comparison_barrier:=0;
  for i:=2 to size_of_massive do
  begin
    inc(Comparison_barrier);
    Massive_for_Barrier[0]:=massive_for_barrier[i];
    j:=i-1;
    While Massive_for_barrier[j]>massive_for_barrier[0] do
    begin
      inc(Comparison_barrier);
      Massive_for_barrier[j+1]:=Massive_for_barrier[j];
      dec(j);
    end;
    Massive_for_barrier[j+1]:=massive_for_barrier[0];
  end;
end;

Procedure BinaryInsertSort(size_of_massive:integer;var Massive:Tmass,c2:real);
var
  i,j,x,left,right,center:integer;
begin
  i:=2;
  While i<= size_of_massive do
  begin
    inc(c2);
    X:=Massive[i];
    Left:=1;
    Right:=i;
    While Left<Right do
    begin
      inc(comparison_binary);
      center:=(Left+Right) div 2;
      if Massive[center]<=x then
      begin
        Left:=Center+1;
      end
      else
      begin
        Right:=center;
      end;
      inc(comparison_binary);
    end;
    j:=i;
    While j>=Right+1 do
    begin
      inc(comparison_binary);
      Massive[j]:=Massive[j-1];
      j:=j-1;
    end;
    Massive[Right]:=x;
    i:=i+1;
  end;
end;

Procedure MassiveOutput(size_of_massive:integer;var Massive:Tmass);
var
  i:integer;
begin
  For i:=1 to size do
  begin
    Write(mass[i],' ');
  end;
end;

procedure FillSortedMassive(size_of_massive:integer;var Massive:TMass);
var
  i:integer;
begin
  i:=1;
  While i <= size_of_massive do
  begin
    Massive[i]:=i;
    inc(i)
  end;
  Massive[i]:=0;
end;

procedure FillInvertedMassive(size_of_massive:integer;var Massive:TMass);
var
  i:integer;
begin
  i:=1;
  While i <= size_of_massive do
  begin
    Massive[i]:=size_of_massive-i;
    inc(i)
  end;
  Massive[i]:=0;
end;

begin

  Size_mass_counter:=1;
  //special_counter:=0;
  //prev_size:=0;
  While size<3000 do
  Begin
    //inc(special_counter);
    size:=Size_mass[Size_mass_counter];
    for Massive_fil_counter:=1 to 3 do
    begin
      case Massive_fil_counter of
      1:
      begin
        Setlength(Mass,Size);
        RandomFillMassive(Size,Mass);
      end;
      2:
      begin
        FillSortedMassive(Size,Mass);
      end;
      3:
      begin
        FillInvertedMassive(Size,Mass);
      end;
      end;

      SortInsertWithBarier(Size,Mass);
      writeln('Barrier:');
      write(comparison_barrier);
      c1:=(size*size+size-4)/4;
      //c1:=size*( log2(size)-log2(exp(1)+0.5));
      writeln('A dolshno bit:  ',c1:0:0);
      //Next sort

      BinaryInsertSort(Size,Mass);
      writeln('Binary');
      writeln(comparison_binary);
    end;

    {case special_counter of
    1,4,5:
      prev_size:=size;
      size:=size+size;
    2,3:
      size:=size+prev_size
    end;}
    inc(Size_mass_counter);

  end;
      readln;







  { TODO -oUser -cConsole Main : Insert code here }
end.
