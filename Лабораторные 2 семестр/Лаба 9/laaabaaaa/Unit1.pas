{Главное окно}
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMain = class(TForm)
    MenuBtn: TButton;
    OrderBtn: TButton;
    Exit: TButton;
    procedure MenuBtnClick(Sender: TObject);
    procedure OrderBtnClick(Sender: TObject);
    procedure ExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

uses Unit3, Unit4;

{$R *.dfm}



procedure TMain.MenuBtnClick(Sender: TObject);
begin
  Main.Visible:=False;
  MenuFm.Show;
  
end;


procedure TMain.OrderBtnClick(Sender: TObject);
begin
  Main.Visible:=False;
  Oders.Show;
end;

procedure TMain.ExitClick(Sender: TObject);
begin
  Main.Close;
end;

end.
