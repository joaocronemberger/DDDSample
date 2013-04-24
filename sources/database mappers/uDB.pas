unit uDB;

interface

uses
  DB, ADODB;

type
  TDb = class
  private
    FConnection: TADOConnection;
  public
    constructor Create (const ConnectionString: string);
    destructor Destroy; override;
    property Connection: TADOConnection read FConnection;
  end;

var
  Db: TDb;

implementation

{ Connection }

constructor TDb.Create(const ConnectionString: string);
begin
  // Todo: �������� ��������� �������������� ��������!
  FConnection := TADOConnection.Create(nil);
  FConnection.ConnectionString := ConnectionString;
  FCOnnection.LoginPrompt := false;
  FConnection.Connected := true;
end;

destructor TDb.Destroy;
begin
  FConnection.Free;
  inherited;
end;

end.
