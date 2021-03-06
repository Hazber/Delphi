Program laba8;
{
  �� ������� ����� �������� ��� ������ ����������
  ��������� ����.����:
<�����_���������>::=True|False|(<��������>(<��������>))
  <��������> ::= Not|And|Or
  <��������>::=<�������>[,<�������>]
  <�������>::=<�����_���������>
  ������ ��������� � ��������� ��� ��������.
*��������, ����������� ��������� Not(False) ����� True.
}

//���������� ����������
{$APPTYPE CONSOLE}

//����������� ������(����������)
uses
  SysUtils;

//���������� ��������
Const
  AllSymb = ['N','O','A','T','F'];

//���������� ����������
var
  Expr:TextFile;
  myExpr:string;
{
  Expr - ����, � ������� �������� ���������
  myExpr - ������, � ������� �������� ���������
}

//������� ���������
function CalcLog(var myExpr:string; i:integer):boolean;
var
  inter:boolean;
begin
  case myExpr[i] of
    'T':
    begin
      Result:=True;
      if myExpr[i+1] = ',' then
        Delete(myExpr, i, 2)
      else
        Delete(myExpr, i, 1);
    end;
    'F':
    begin
      Result:=False;
      if myExpr[i+1] = ',' then
        Delete(myExpr, i, 2)
      else
        Delete(myExpr, i, 1);
    end;
    'N':
    begin
      Result:=Not(CalcLog(myExpr, i+2));
      if myExpr[i+3] = ',' then
        Delete(myExpr, i, 4)
      else
        Delete(myExpr, i, 3);
    end;
    'O':
    begin
      Result:=CalcLog(myExpr,i+2);
      repeat
        inter:=CalcLog(myExpr,i+2);
        Result:=Result or inter;
      until not (myExpr[i+2] in AllSymb);
      if myExpr[i+3] = ',' then
        Delete(myExpr, i, 4)
      else
        Delete(myExpr, i, 3);
    end;
    'A':
    begin
      Result:=CalcLog(myExpr,i+2);
      repeat
        inter:=CalcLog(myExpr,i+2);
        Result:=Result and inter;
      until not (myExpr[i+2] in AllSymb);
      if myExpr[i+3] = ',' then
        Delete(myExpr, i, 4)
      else
        Delete(myExpr, i, 3);
    end;
  end;
end;

//�������������� ��������� � ������
procedure FileToStr(var MyFile:TextFile; var myExpr:String);
var
  mylet:char;
begin
  myExpr:='';
  ReSet(MyFile);
  while not (EOF(MyFile)) do
  begin
    Read(MyFile, mylet);
    myExpr:=myExpr+mylet;
  end;
  Close(MyFile);
  writeln(myExpr);
  myExpr:=StringReplace(myExpr, 'False', 'F', [rfReplaceAll, rfIgnoreCase]);
  myExpr:=StringReplace(myExpr, 'True', 'T', [rfReplaceAll, rfIgnoreCase]);
  myExpr:=StringReplace(myExpr, 'Not', 'N', [rfReplaceAll, rfIgnoreCase]);
  myExpr:=StringReplace(myExpr, 'And', 'A', [rfReplaceAll, rfIgnoreCase]);
  myExpr:=StringReplace(myExpr, 'Or', 'O', [rfReplaceAll, rfIgnoreCase]);
end;

Begin
  //���������� ����� � ������
  AssignFile(Expr, 'LogExpr.txt');

  //�������������� ����� � ������
  FileToStr(Expr,myExpr);

  //������� � ����� ����������
  writeln('Result = ',CalcLog(myExpr, 1));
  readln;
End.

