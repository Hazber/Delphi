unit UnitList;

interface

type
  TData = packed record
    number: integer;
  end;
  PData = ^TData;

  TListNode = class
  private
    item: PData;
    next: TListNode;
    prev: TListNode;
    constructor create(const aItem: PData);
  end;

  TList = class
  private
    head: TListNode;
    tail: TListNode;
    fileName: string;
    fCount: integer;
    function getNodeByIndex(const i: integer): TListNode;
    procedure removeNode(const node: TListNode);
  public
    constructor create(const aFileName: string); overload;
    destructor destroy();
    procedure appendItem(const item: PData);
    procedure removeItemByIndex(const i: integer);
    function getItemByIndex(const i: integer): PData;
    property items[const i: integer]: PData read getItemByIndex; default;
    property count: integer read fCount;

    procedure consoleOutput(); // для демонстрации;
  end;

implementation

uses
  SysUtils;

constructor TListNode.create(const aItem: PData);
begin
  inherited create();
  item := aItem;
end;

constructor TList.create(const aFileName: string);
var
  f: file of TData;
  itemTmp: PData;
begin
  create();
  fileName := aFileName;
  assignFile(f, fileName);
  if not fileExists(filename) then
    rewrite(f)
  else
  begin
    reset(f);
    while not eof(f) do
    begin
      new(itemTmp);
      read(f, itemTmp^);
      appendItem(itemTmp);
    end;
  end;
  closeFile(f);
end;

destructor TList.destroy();
var
  f: File of TData;
  nodeCurr: TListNode;
begin
  if fileName <> '' then
  begin
    assignFile(f, fileName);
    rewrite(f);
    nodeCurr := head;
    while nodeCurr <> nil do
    begin
      write(f, nodeCurr.item^);
      nodeCurr := nodeCurr.next;
    end;
    closeFile(f);
  end;
  inherited destroy();
end;

function TList.getNodeByIndex(const i: integer): TListNode;
var
  j: integer;
begin
  if i > fCount - 1 then
    raise exception.create('Index out of range');

  result := head;
  for j := 1 to i do
    result := result.next;
end;

procedure TList.removeNode(const node: TListNode);
begin
  if node.prev <> nil then
  begin
    (node.prev).next := node.next;
    if node.next = nil then
      tail := node.prev
    else
      (node.next).prev := node.prev;
  end
  else
  begin
    head := node.next;
    if head = nil then
      tail := nil
    else
      (self.head).prev := nil
  end;
  dispose(node.item);
  node.destroy();
  dec(fCount);
end;

procedure TList.appendItem(const item: PData);
var
  newNode: TListNode;
begin
  newNode := TListNode.create(item);
  if head = nil then
  begin
    head := newNode;
    tail := newNode;
  end
  else
  begin
    tail.next := newNode;
    newNode.prev := tail;
    tail := newNode;
  end;
  inc(fCount);
end;

procedure TList.removeItemByIndex(const i: integer);
begin
  removeNode(getNodeByIndex(i));
end;

function TList.getItemByIndex(const i: integer): PData;
begin
  result := getNodeByIndex(i).item;
end;

procedure TList.consoleOutput();
var
  nodeCurr: TListNode;
  i: integer;
begin
  nodeCurr := head;
  i := 1;
  while nodeCurr <> nil do
  begin
    writeln(i, ') ', nodeCurr.item^.number);
    inc(i);
    nodeCurr := nodeCurr.next;
  end;
end;

end.
