Program laba7;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Const
  checkstring=['a'..'z',',',' ','.'];
Var
  S:string ;
  i,check,spacecounter,counter1,counter2,counterpoint,counterspace:integer;

  copys:char;
Begin

    Writeln('Enter the start string');
    readln(s);
    writeln('Your string: ');
    writeln(s);
    {sm:=0;}
    i:=1;
    while (i <= length(s)) do
    begin
      {check:=true;}
      while (not(s[i] in checkstring)) do
      begin
        {if not(s[i] in checkstring) then
        begin}
          {check:=false;}
          writeln('Incorrect symbol');
          writeln('Please, try again');
          writeln('Enter the LATIN symbol');
          readln(s[i]);
        {end;}
      end;
      inc(i);
    end;

      counterpoint:=pos('.',s);
      while counterpoint=0 do
      begin
        writeln('You entered a string without a point, repeat the input');
        readln(s);
        counterpoint:=pos('.',s);
      end;

      begin
        delete(s,pos('.',s)+1,length(S)-pos('.',s));
        insert(' ',s,pos('.',s));
      end;

      counterspace:=pos('   ',s);
      while counterspace>0 do
      begin
        delete(s,pos('  ',s),1);
        counterspace:=pos('  ',s);
      end;

      i:=1;
      spacecounter:=0;
      while i<=length(s) do
      begin
        if s[i]=' ' then
          inc(spacecounter);
          inc(i);
      end;

      if spacecounter =1 then
      begin
        writeln('Enter more words,please');
        readln(s);
      end;

      if spacecounter>50 then
      begin
        writeln('Too much words,please, enter again');
        readln(s);
      end;

      check:=1;
      counter1:=0;
      while counter1<= length(s) do
      {for counter1:=0 to length(s) do}
      begin
        inc(check);
        if (s[counter1+1]=' ') then
        begin
          if check mod 2 <>0 then
          begin
            check:=0;
            {insert(' ',s,counter1+1);}
            copys:=s[trunc((counter1)/2)+1];
            for counter2:=1 to length(s) do
            begin
              if (s[counter2]=copys) then
              begin
                delete(s,counter2,1);
                inc(counter1);
              end;
            end;
          end;
        end;
        inc(counter1);
      end;
      writeln('Result string: ');
      writeln(s);
  { TODO -oUser -cConsole Main : Insert code here }
  readln;
end.



