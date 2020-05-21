Program FloppyDisk1;
{��������� ������������ ����� ������, ��������� �� �����������, ����� ������������ ���������� ������, �������, ������, ������� ����� ������ � ������ ���������� ���������� ������, � ����� "����������" � �� ������������. ������� ���������� �������� ������. ������� ���������� ������������� �����. ����� ���������� ��������}

//���������� ����������
{$APPTYPE CONSOLE}

//����� ���������� ������
uses
  SysUtils;

//���������� ������������ ��������
Const
  floppycost :real = 11.5;  // floppycost-���� �������
  costofboxes :real = 114.5;// costofboxes-���� �������
  costofchest:real = 1255;  // costofchest-���� �����

Var
  ns:string;
  N,Boxe,Chest,k,n1:Integer;
  FirstSt,SecondSt,e:real;
//ns-���������� ������, ��������� ��� ������,
//boxe-���������� ������, chest- ���������� ������ 
//n-���������� ������,k-����� ��� ��������
//�������� ������ � �����,n1-����������
//������, FirstSt-��������� ������
//SecondSt-�������� ���������2, e-�������� ���������1

Begin

//���� ����� 
//�������� ����� �����
  Write('Enter the NATURAL number of the floppy disk: ');
  Readln(ns);
  Val(ns,n,k);
  while (k<>0) or (n<=0) do
   begin
     Val(ns,n,k);
     if (k<>0) or (n<=0) then
       begin
         Writeln('Incorrect input');
         Writeln('Try again');
         Writeln('Enter the NATURAL POSITIVE number of the floppy disk: ');
         Readln(ns);
       end
     else
       k:=0;
   end;

//���������� ��������� ������,
//��������� �� �����������
//����� ���������� ��������
   FirstSt:=N*floppycost;                                                            
   WriteLn('1)When buying floppies separately, their cost will be: ' +
   Floattostr(FirstSt) + ' rub');
   WriteLn;

//���������� ���������� �������, ������, 
//���������� ������
//���������� ������ ���������, ��������� ������, 
//������, �������
//���������� ���������� ������
   n1:=n;
   Chest := N div 144;                 
   N:= N mod 144;                      
   boxe:= N div 12;                    
   N:= N mod 12;         
   e:=floppycost*N+costofboxes*boxe+costofchest*chest;

//����� ���������� ������������� �������
//� ��������� ������������� �������
   Writeln('2)We can bought:');  
   Writeln('  Chest - ' + inttostr(chest));
   Writeln('  Boxe - ' + inttostr(boxe));
   Writeln('  Floppy disk - ' + inttostr(N));
   Writeln('----------------');
   Writeln('Cost: '+floattostr(e)+' rub ');
   WriteLn;

//���� ������� ������ �������, ������� �������,
//������ ������
   if N*floppycost >= costofboxes then 
   begin
     N:=0;
     boxe:=boxe+1;
    end;

 //���� ������� ������ ����, ������� �����,
 //������ ������ � �������
  if boxe*costofboxes >= costofchest then //���� ������� ������ ���� � �������� ������� � �������
    begin
      boxe:=0;
      N:=0;
      chest:=chest+1;
    end;

//������� ��������������� ��������
//���� ������ ����� ������ ������, �� ����� ����������
//��������
//������� �������� ������
SecondSt:=floppycost*N+costofboxes*boxe+costofchest*chest;
if e>secondst then
     begin
       Writeln('For most economy you can bought: ');                                     
       Writeln('  Chest - ' + inttostr(chest));
       Writeln('  Boxe - ' + inttostr(boxe));
       Writeln('  Floppy disk - ' + inttostr(N));
       Writeln('----------------');
       Writeln('3)Cost: '+ floattostr(SecondSt)+' rub');
       WriteLn;
       Writeln('And you have ',abs(n1-   (boxe*12+(chest*12*12))),' floppy disk as bonus');
     end
   else writeln ('3)No other variants ');
     Writeln;
     Writeln('When using the most advantageous option, you will save: ' + floattostr(FirstSt-SecondSt) + ' rub');

     Readln;
  

End.









