{������ � ������� �����}
unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls;

type
  TMenuFm = class(TForm)
    Stat: TStringGrid;
    BackBtn: TButton;
    SortBtn: TButton;
    Crit: TRadioGroup;
    OderingBtn: TButton;
    IndEdit: TEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BackBtnClick(Sender: TObject);
    procedure SortBtnClick(Sender: TObject);
    procedure OderingBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
type
  TMenuRec = record
    Name:string[15];
	  Descr:string[100];
	  Price:real;
    Index:Integer;
    Pop:Integer;
  end;
  TOrderRec=record
    OderNum:integer;
    TableNum:integer;
    Naming:string[15];
    Pors:integer;
    Indexing:integer;
  end;

var
  MenuFm: TMenuFm;
  tot:real;

implementation

uses Unit1, Unit3;

{$R *.dfm}
{���������� ������� ��
������� �����}
procedure Sort_0;
  var
    i,j:integer;
    PrevRec,NextRec:TMenuRec;
    F:file of TMenuRec;
  begin
    AssignFile(F,'Menu.dat');
    Reset(F);
    for i:=0 to FileSize(F)-2 do
      for j:=FileSize(F)-2 downto i do
      begin
        Seek(F,j);
        Read(F,PrevRec);
        Seek(F,j+1);
        Read(F,NextRec);
        if PrevRec.Index>NextRec.Index then
        begin
          Seek(F,j);
          Write(F,NextRec);
          Seek(F,j+1);
          Write(F,PrevRec);
        end;
      end;
    CloseFile(F);
end;

{���������� ������� ��
������������ �����}
Procedure Sort_big(St:TStringGrid);
  var
    i,j:integer;
    PrevRec,NextRec:TMenuRec;
    F:file of TMenuRec;
  begin
    AssignFile(F,'Menu.dat');
    Reset(F);
    for i:=0 to FileSize(F)-2 do
      for j:=FileSize(F)-2 downto i do
      begin
        Seek(F,j);
        Read(F,PrevRec);
        Seek(F,j+1);
        Read(F,NextRec);
        if PrevRec.Pop<NextRec.Pop then
        begin
          Seek(F,j);
          Write(F,NextRec);
          Seek(F,j+1);
          Write(F,PrevRec);
        end;
      end;
    CloseFile(F);
End;

{���������� ������� ��
����������� ���� �����}
procedure Sort;
  var
    i,j:integer;
    PrevRec,NextRec:TMenuRec;
    F:file of TMenuRec;
  begin
    AssignFile(F,'Menu.dat');
    Reset(F);
    for i:=0 to FileSize(F)-2 do
      for j:=FileSize(F)-2 downto i do
      begin
        Seek(F,j);
        Read(F,PrevRec);
        Seek(F,j+1);
        Read(F,NextRec);
        if PrevRec.Price>NextRec.Price then
        begin
          Seek(F,j);
          Write(F,NextRec);
          Seek(F,j+1);
          Write(F,PrevRec);
        end;
      end;
    CloseFile(F);
end;

{���������� ������
� �������}
procedure TabCng(var St:TStringGrid);
var
  i:integer;
  f:file of TMenuRec;
  Temp0:TMenuRec;
begin
  AssignFile(F,'Menu.dat');
  Reset(F);
  for i:=1 to St.RowCount-1 do
  begin
    Seek(F,i-1);
    Read(F,Temp0);
    St.Cells[0,i]:=Temp0.Name+IntToStr(Temp0.Pop);
    St.Cells[1,i]:=Temp0.Descr;
    St.Cells[2,i]:=FloatToStr(Temp0.Price);
    St.Cells[3,i]:=IntToStr(Temp0.Index);
  end;
end;


procedure TMenuFm.FormCreate(Sender: TObject);
type
  MyArr=array [1..3] of string;
const
  CaptionCol:MyArr= ('�����������','����','����� �����');
var
  i:integer;
begin
  for i:=1 to Stat.ColCount-1 do
    Stat.Cells[i,0]:=CaptionCol[i];
  Sort_0;
  TabCng(Stat);
end;


procedure TMenuFm.BackBtnClick(Sender: TObject);
begin
  MenuFm.Close;
  Main.Visible:=True;
end;

procedure TMenuFm.SortBtnClick(Sender: TObject);
begin
  if Crit.ItemIndex=0 then
    Sort    
  else
    Sort_Big(Stat);
  TabCng(Stat);
end;



procedure TMenuFm.OderingBtnClick(Sender: TObject);
const
  Digits=['0'..'9'];
  Range=[1..10];
var
  i:integer;
  Flag:Boolean;
  num:String;
begin
  Flag:=True;
  Num:=IndEdit.Text;
  i:=1;
  {�������� �� �����
  ��������� ����� �����}
  if Num='' then
    Flag:=False;
  while (i<=Length(Num)) and (Flag) do
  begin
    if (not(num[i] in digits)) then
      Flag:=False
    else
      inc(i);
  end;
  if not(StrToInt(Num) in Range) then
    Flag:=False;

  if Flag then
  begin
    Oders.FoodList.ItemIndex:=StrToInt(Num)-1;
    for i:=1 to Stat.RowCount-1 do
      if Num=Stat.Cells[3,i] then
        tot:=StrToFloat(Stat.Cells[2,i]);
    Sort_0;
    MenuFm.Close;
    Oders.Show;
  end
  else
    ShowMessage('��������� ��������� �����. ����� � ����� ������� �� ����������.');
end;

end.
