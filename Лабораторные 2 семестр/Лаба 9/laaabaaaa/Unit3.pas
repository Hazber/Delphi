{Модуль с оформлением заказа}
unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TOders = class(TForm)
    FoodList: TComboBox;
    ToMenuBtn: TButton;
    ToMainBtn: TButton;
    PriceLb: TLabel;
    Label1: TLabel;
    PorsEd: TEdit;
    Label2: TLabel;
    OkBtn: TButton;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    TbEd: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    procedure ToMenuBtnClick(Sender: TObject);
    procedure ToMainBtnClick(Sender: TObject);
    procedure PorsEdChange(Sender: TObject);
    procedure FoodListChange(Sender: TObject);
    procedure OkBtnClick(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Oders: TOders;

implementation

uses Unit4, Unit1;

{$R *.dfm}

{Проверка на верность
данных для кол-ва порций}
Function Check(const str:string):boolean;
const
  Digit=['0'..'9'];
var
  i:integer;
begin
  Result:=True;
  i:=1;
  if str='' then
    Result:=False;
  while (i<=length(str)) and (Result) do
  begin
    if not(str[i] in Digit) then
      Result:=False
    else
      inc(i);
  end;
end;

{Изменение свойства Enabled
у компонента}
Procedure Change(var Lb1,Lb2,Lb3,Lb4,Lb5,Lb6,Lb7,Lb8,Lb9,Lb10,
                 Lb11,Lb12,Lb13,Lb14,Lb15,Lb16,Lb17,Lb18,Lb19,Lb20:TLabel);
var
  f:file of TOrderRec;
  Rec:TOrderRec;
  i:integer;
begin
  AssignFile(F,'Orders.dat');
  Reset(F);
  for i:=0 to FileSize(F)-1 do
  begin
    Seek(F,i);
    Read(f,Rec);
    case Rec.TableNum of
      1:
        Lb1.Enabled:=False;
      2:
        Lb2.Enabled:=False;
      3:
        Lb3.Enabled:=False;
      4:
        Lb4.Enabled:=False;
      5:
        Lb5.Enabled:=False;
      6:
        Lb6.Enabled:=False;
      7:
        Lb7.Enabled:=False;
      8:
        Lb8.Enabled:=False;
      9:
        Lb9.Enabled:=False;
      10:
        Lb10.Enabled:=False;
      11:
        Lb11.Enabled:=False;
      12:
        Lb12.Enabled:=False;
      13:
        Lb13.Enabled:=False;
      14:
        Lb14.Enabled:=False;
      15:
        Lb15.Enabled:=False;
      16:
        Lb16.Enabled:=False;
      17:
        Lb17.Enabled:=False;
      18:
        Lb18.Enabled:=False;
      19:
        Lb19.Enabled:=False;
      20:
        Lb20.Enabled:=False;
    end;
  end;
  CloseFile(f);
end;

procedure TOders.ToMenuBtnClick(Sender: TObject);
begin
  Oders.Close;
  MenuFm.Show;
end;

procedure TOders.ToMainBtnClick(Sender: TObject);
begin
  Oders.Close;
  Main.Visible:=True;
end;

procedure TOders.PorsEdChange(Sender: TObject);
var
  i:integer;
  Flag:Boolean;
  tot1:real;
begin
  Flag:=Check(PorsEd.Text);
  {Вывод стоимости заказа}
  if Flag then
  begin
    i:=StrToInt(PorsEd.Text);
    tot1:=tot*i;
    PriceLb.Caption:='Стоимость заказа:'+#13+#10+FloatToStr(tot1);
  end
end;

procedure TOders.FoodListChange(Sender: TObject);
var
  i:integer;
  ind1:string;
  tot1:real;
  Flag:boolean;
begin
  ind1:=IntToStr(FoodList.ItemIndex+1);
  for i:=1 to MenuFm.Stat.RowCount-1 do
    if ind1=MenuFm.Stat.Cells[3,i] then
      tot:=StrToFloat(MenuFm.Stat.Cells[2,i]);
  Flag:=Check(PorsEd.Text);
  {Вывод стоимости заказа}
  if Flag then
  begin
    i:=StrToInt(PorsEd.Text);
    tot1:=tot*i;
    PriceLb.Caption:='Стоимость заказа:'+#13+#10+FloatToStr(tot1);
  end;
end;

procedure TOders.OkBtnClick(Sender: TObject);
const
  Range=[0..20];
var
  f:file of TOrderRec;
  f1: file of TMenuRec;
  PrevRec:TMenuRec;
  i,Q_O:integer;
  Flag_O,Flag0,Flag1:Boolean;
  Order1:TOrderRec;
begin
  Flag0:=Check(PorsEd.Text);
  Flag1:=Check(TbEd.Text);
  if (Flag1) and (not(StrToInt(TbEd.Text) in Range)) then
    Flag1:=False;
  if (Flag0) and (Flag1) and (FoodList.ItemIndex<>-1)  then
  begin
    randomize;
    Q_O:=random(1000)+1;
    i:=0;
    {Генерирование номера заказа
    без повторений с предыдущими}
    while not(Flag_O) do
    begin
      while (i<=FileSize(f)-2) and (Flag_O) do
      begin
        Seek(f,i+1);
        Read(f,Order1);
        if  Order1.TableNum=Q_O then
          Flag_O:=False
        else
        inc(i);
      end;
      if not(Flag_O) then
        Q_O:=random(1000)+1;
    end;
    {Запись заказа
    в файл}
    AssignFile(F,'Orders.dat');
    Reset(F);
    with Order1 do
    begin
      OderNum:=Q_O;
      TableNum:=StrToInt(TbEd.Text);
      Naming:=FoodList.Text;
      Pors:=StrToInt(PorsEd.Text);
      Indexing:=FoodList.ItemIndex+1;
    end;
    i:=FileSize(F);
    Seek(F,i);
    Write(F,Order1);
    CloseFile(F);
    AssignFile(F1,'Menu.dat');
    Reset(F1);
    Seek(F1,FoodList.ItemIndex);
    Read(F1,PrevRec);
    PrevRec.Pop:=PrevRec.Pop+1;
    Seek(F1,FoodList.ItemIndex);
    Write(F1,PrevRec);
    CloseFile(F1);
    ShowMessage('Номер вашего заказа: '+IntToStr(Q_O)+' и его стоимость: '+PriceLb.Caption);
    Change(Label3,Label4,Label5,Label6,Label7,Label8,Label9,Label10,
           Label11,Label12,Label13,Label14,Label15,Label16,Label17,
           Label18,Label19,Label20,Label21,Label22);
    TbEd.Text:='';
  end
  else
  begin
    if not(Flag1) then
      ShowMessage('Введите номер столика.')
    else
     ShowMessage('Введите номер количество порций.')
  end;
end;



procedure TOders.Label3Click(Sender: TObject);

var
  Lb:TLabel;
begin
  Lb:=(Sender as TLabel);
  TbEd.Text:=IntToStr(Lb.Tag);
end;

procedure TOders.FormCreate(Sender: TObject);
begin
  Change(Label3,Label4,Label5,Label6,Label7,Label8,Label9,Label10,
         Label11,Label12,Label13,Label14,Label15,Label16,Label17,
         Label18,Label19,Label20,Label21,Label22);
end;

end.
