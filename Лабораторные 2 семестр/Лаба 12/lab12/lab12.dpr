program lab12;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  SysUtils,
  UnitList in 'UnitList.pas';

const
  dataFileName = 'list.data';

var
  list: TList;
  command: string;
  itemTmp, itemTmp1, itemTmp2, itemTmp3: PData;
  indexTmp: Integer;
  n, i, Right: Integer;

begin
  try
    { ! ¬с€ работа со списками
      ! помещена в модуть UnitList.pas
      ! “ут расположен код дл€ демонстрации }

    randomize;
    list := TList.create(dataFileName);

    repeat
      writeln(#13#10 + '1 Item append');
      writeln('2 Random remove');
      writeln('3 Check: is this list correct to conditions.');
      writeln('4 List output');
      writeln('0 Exit');
      write('Command: ');
      n := (list.count+1) div 2;
      readln(command);

      if command = '1' then // append
      begin
        new(itemTmp);
        Readln(itemTmp^.number);
        list.appendItem(itemTmp);
        writeln(itemTmp^.number,' is added');
      end
      else if command = '2' then // remove
        if (list.count) = 0 then
          writeln('List is empty')
        else
        begin
          indexTmp := random(list.count);
          writeln('Removing #', indexTmp+1);
          list.removeItemByIndex(indexTmp);
        end
      else if command = '3' then // expression
        if list.count = 0 then
          writeln('List is empty')
        else
        begin
          Right:=0;
          for i := 0 to (n-1) do
          begin
            itemTmp1 := list[i];
            itemTmp2 := list[n-1-i];
            itemTmp3 := list[2*n-1-i];
            if itemTmp1^.number = (2*itemTmp2^.number) + itemTmp3^.number then
              Inc(Right);
          end;
          if Right = n then
            writeln(' Correct.')
          else
            Writeln(' Not Correct.');
        end
      else if command = '4' then // list output
        list.consoleOutput()
      else if command <> '0' then
        writeln('Error');
    until command = '0';

    list.destroy;
  except
    on E: Exception do
      writeln(E.ClassName, ': ', E.Message);
  end;

end.
