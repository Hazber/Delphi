program laba3;
// ��������� ������� ����� ���� (n*n-1), ��� n � ����������� �����
//�� ��� ���������� �� �����, ������� �������� �������������
//k ��������� ������� ����������, k<7. ������� � ������� S ������ ����� �����, S<15.
//(��������� �� ��������� 1000, � ����� ���� (n*n-1) <2000000000).

{$APPTYPE CONSOLE}

uses
  SysUtils;

       // maxdivisor- ������������ �������� �����
       //maxnumber- ������������ �����
const //���������� ������������� ��������
         MaxDivisor=1000;
         MaxNumber=44721;
         var
         //Number- ���������� ����� ���� n*n-1
         //n-��������� �����,m-����� ���� n*n-1,k-���������� ��������� �����,i-���������
         //j-����������� ��������� �����,CopyInc-����� ����������,divisor-��������
         // flag-
         Number,n,m,k,i,j,CopyInc,divisor:integer;
         Flag:Boolean;
         Begin
          // ���������� ������� ���������� ����� ���� n*n-1,����������
          // �� ������� ���������� � ����� ���� �����,���� ��� ������������ ������� ����� � ����
            K:=0;
            divisor:=0;
            i:=2;
            Number:=0;
            n:=2;
            While ((i<MaxNumber) and (Number<>15)) do
          // ���������� ����� ���� n*n-1 .������ ����� �1
          Begin
            m:=n*n-1;

             //���������� ������� ���������� ����� ���� n*n-1
            repeat
              Flag:=False;

              //���������� �����,�� ���������� ���������� �����
              // ���������� ��������� �����
              if (m mod i=0) then
                Begin
                   CopyInc:=i;
                   j:=2;
                While j<CopyInc do
                   Begin
                     if (CopyInc mod j=0) then
                       CopyInc:=CopyInc div j;
                       j:=j+1;
                   end;

                   // ���������� ������� ���������� �����
                   //���������� ������������� ����������
                   if CopyInc = i then
                     Flag:=True
                   else
                     Flag:=False;
                   if flag=true then
                   begin
                     m:=m div i;
                     if (i<>divisor) then

                     // ���������� ���������� ������� ���������� �����
                     Begin
                       K:=k+1;
                       divisor:=i;
                     end;

                   end;

                end;
               i:=i+1;
              until ((i<MaxDivisor) and ((k=7) or (m=1))or(m<i));

                // ���������� � ���������� ����� �1
                i:=2;
                k:=0  ;
                divisor :=0;
                  if m =1 then

                  // ����� ���������� �����
                  begin
                    m:=n*n-1;
                    write(m,' ');
                    Number:=Number+1;

                  end;
                  n:=n+1;
                end;

                readln;
                end.



