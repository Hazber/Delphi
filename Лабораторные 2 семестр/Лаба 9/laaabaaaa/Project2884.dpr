program Project2884;

{$APPTYPE CONSOLE}

uses
  SysUtils;
type
  TOrderRec=record
    OderNum:integer;
    TableNum:integer;
    Naming:string[15];
    Pors:integer;
    Indexing:integer;
  end;
  TMenuRec = record
    Name:string[15];
	  Descr:string[100];
	  Price:real;
    Index:Integer;
  end;
  TMenuRec1 = record
    Name:string[15];
	  Descr:string[100];
	  Price:real;
    Index:Integer;
    Pop:integer;
  end;
var

  i,j,str4:integer;
  str1,str2:string;
  f:file of TOrderRec;
  f1:file of TMenuRec;
  f2:file of TMenuRec1;
  st1:TMenuRec;
  st2:TMenuRec1;
  str3:real;
  fl:textfile;
  k:boolean;

begin
{  AssignFile(F1,'Menu1.dat');
  Reset(F1);
  AssignFile(F2,'Menu.dat');
  Rewrite(F2);
  for i:=0 to 9 do
  begin
    Seek(F1,i);
    Read(f1,st1);
    with st2 do
    begin
      Name:=st1.Name;
      Descr:=st1.Descr;
      Price:=st1.Price;
      Index:=st1.Index;
      pop:=0;
    end;
    seek(f2,i);
    write(f2,St2);
  end;
  closefile(f1);
  closefile(f2); }
  assignfile(f,'Orders.dat');
  rewrite(F);
  closefile(f);
  readln;
  readln;
end.

{with Stat do
    begin
      writeln(NSurnGr);
      writeln(PrSmpBeg);
      writeln(NounBeg);
      writeln(VerbInt);
      writeln(AdjInt);
      writeln(QuestionsExp);
      writeln(PastSmpExp);
      writeln(Total);
    end;}
