Program laba6;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  System;

Const
  n=10;
  k=100;
Type
  Tmass=array[1..n,1..n] of integer;
  TRow=array[1..k] of integer;
Var
  Mas:Tmass;
  Ways:Tmass;
  indexI,indexJ:Trow;
  i,j,c,steps,direction,size:integer;
  freeway,deadend,input:boolean;

Begin

  size:=5;
  begin
  Randomize;
    i:=1;
    While i<=n do
    begin
      j:=1;
      while j<=n do
      begin
        mas[i,j]:=random(2);
        inc(j);
      end;
      inc(i);
    end;
  end ;

  begin
    i:=1;
    while i<=n do
    begin
      j:=1;
      while j<=n do
      begin
        write(mas[i,j]:4);
        inc(j);
      end;
      inc(I);
      writeln;
      writeln;
     end;
  end;

   ways:=mas;
   input:=false;
   deadend:=false;
   steps:=1;
   repeat
     write('Enter the initial coordinates [i,j] of the traveler,');
     writeln('place it in any zero cell of the maze' );
     readln(i,j);
     if mas[i,j]=0 then
       input:=true;
   until input;

   begin
     if (i=1) or (i=n) or (j=1) or  (j=n) then
       deadend:= true
   end;

   if not (deadend) then
   begin
     repeat

        begin
          c:=0;
          if ways[i-1,j]=0 then inc(c);
          if ways[i+1,j]=0 then inc(c);
          if ways[i,j+1]=0 then inc(c);
          if ways[i,j-1]=0 then inc(c);
          if c>0 then freeway:=true
          else
            freeway:=false;
        end;

        if freeway then
          begin
            direction:=random(4);
            case direction of
            0:
            begin
              if ways[i-1,j]=0 then
              begin
                ways[i,j]:=8;
                begin
                  indexI[steps]:=i;
                  indexJ[steps]:=j;
                  inc(steps);
                end;
                dec(i);
              end;
              begin
                if (i=1) or (i=n) or (j=1) or(j=n) then
                  deadend:=true;
              end;
            end;
            1:
            begin
              if ways[i+1,j]=0 then
              begin
                ways[i,j]:=8;
                begin
                  indexI[steps]:=i;
                  indexJ[steps]:=j;
                  inc(steps);
                end;
                inc(i);
              end;
              begin
                if (i=1) or (i=n) or (j=1) or(j=n) then
                  deadend:=true;
              end;
            end;
            2:
             begin
              if ways[i,j-1]=0 then
              begin
                ways[i,j]:=8;
                begin
                  indexI[steps]:=i;
                  indexJ[steps]:=j ;
                  inc(steps);
                end;
                dec(j);
              end;
              begin
                if (i=1) or (i=n) or (j=1) or(j=n) then
                  deadend:=true;
              end;
            end;
            3:
             begin
               if ways[i,j+1]=0 then
               begin
                 ways[i,j]:=8;
                 begin
                   indexI[steps]:=i;
                   indexJ[steps]:=j;
                   inc(steps);
                 end;
                 inc(j);
               end;
               begin
                 if (i=1) or (i=n) or (j=1) or(j=n) then
                   deadend:=true;
               end;
             end;
             end ;
             end
         else
           repeat
             begin
               Dec(steps);
               Ways[i,j]:=1;
               i:=indexI[steps];
               j:=indexJ[steps];
               begin
                 c:=0;
                 if ways[i-1,j]=0 then inc(c);
                 if ways[i+1,j]=0 then inc(c);
                 if ways[i,j+1]=0 then inc(c);
                 if ways[i,j-1]=0 then inc(c);
                 if c>0 then freeway:=true
                 else freeway:=false;
               end;
               if steps<1 then
               begin
                 deadend:=true;
                 freeway:=true;
               end;
             end;
           until freeway;
     until deadend;
     writeln('The position of exit: ',i,' ',j);
   end;

   if steps>0 then
   begin
     ways[i,j]:=8;
     for i:=1 to n do
     begin
       for j:=1 to n do
       begin
         if ways[i,j]=8 then mas[i,j]:=8;
       end;
     end;
     begin
       i:=1;
       while i<=n do
       begin
       j:=1;
       while j<= n do
       begin
         write(mas[i,j]:4);
         inc(j);
       end;
       inc(i);
       writeln  ;
       writeln;
       end;
     end;
   end
   else
   begin
     write('The position from which your traveler starts has no possible exit options.');
     writeln('Enter the starting position again');
   end;
   readln;
   End.

























