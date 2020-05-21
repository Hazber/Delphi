program laba3;
// ѕрограмма находит числа вида (n*n-1), где n Ц натуральное число
//»з них выбираютс€ те числа, которые €вл€ютс€ произведением
//k различных простых множителей, k<7. Ќаходит и выводит S первых таких чисел, S<15.
//(ћножители не превышают 1000, а числа вида (n*n-1) <2000000000).

{$APPTYPE CONSOLE}

uses
  SysUtils;

       // maxdivisor- максимальный делитель чисел
       //maxnumber- максимальное число
const //ќбъ€вление целочисленных констант
         MaxDivisor=1000;
         MaxNumber=44721;
         var
         //Number- количество чисел вида n*n-1
         //n-множитель числа,m-число вида n*n-1,k-количество делителей числа,i-инкремент
         //j-натуральный множитель числа,CopyInc-копи€ инкремента,divisor-делитель
         // flag-
         Number,n,m,k,i,j,CopyInc,divisor:integer;
         Flag:Boolean;
         Begin
          // Ќахождение простых множителей чисел вида n*n-1,нахождение
          // их простых множителей и вывод этих чисел,если они соотвествуют условию входа в цикл
            K:=0;
            divisor:=0;
            i:=2;
            Number:=0;
            n:=2;
            While ((i<MaxNumber) and (Number<>15)) do
          // нахождение чисел вида n*n-1 .Ќачало цикла ј1
          Begin
            m:=n*n-1;

             //Ќахождение простых множителей чисел вида n*n-1
            repeat
              Flag:=False;

              //отсеивание чисел,не €вл€ющихс€ делител€ми числа
              // нахождение делителей числа
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

                   // нахождение простых множителей числа
                   //отсеивание повтор€ющихс€ множителей
                   if CopyInc = i then
                     Flag:=True
                   else
                     Flag:=False;
                   if flag=true then
                   begin
                     m:=m div i;
                     if (i<>divisor) then

                     // накполение количества простых множителей числа
                     Begin
                       K:=k+1;
                       divisor:=i;
                     end;

                   end;

                end;
               i:=i+1;
              until ((i<MaxDivisor) and ((k=7) or (m=1))or(m<i));

                // подготовка к следующему циклу ј1
                i:=2;
                k:=0  ;
                divisor :=0;
                  if m =1 then

                  // вывод найденного числа
                  begin
                    m:=n*n-1;
                    write(m,' ');
                    Number:=Number+1;

                  end;
                  n:=n+1;
                end;

                readln;
                end.



