unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, StdCtrls, Xmlxform, DB, DBClient, ExtCtrls, DBCtrls,
  Mask, Grids, DBGrids, Menus, ComCtrls;

type
  TForm1 = class(TForm)
    cdsRSS: TClientDataSet;
    XMLTransform1: TXMLTransform;
    cdsRSSversion: TStringField;
    cdsRSSchannel: TDataSetField;
    cdsChannel: TClientDataSet;
    cdsChanneltitle: TStringField;
    cdsChannellink: TStringField;
    cdsChanneldescription: TStringField;
    cdsChannellanguage: TStringField;
    cdsChannelcopyright: TStringField;
    cdsChannelmanagingEditor: TStringField;
    cdsChannelwebMaster: TStringField;
    cdsChannelpubDate: TDateTimeField;
    cdsChannellastBuildDate: TDateTimeField;
    cdsChannelgenerator: TStringField;
    cdsChanneldocs: TStringField;
    cdsChannelimage: TStringField;
    cdsChannelitem: TDataSetField;
    cdsItem: TClientDataSet;
    cdsItemtitle: TStringField;
    cdsItemlink: TStringField;
    cdsItemdescription: TStringField;
    cdsItemauthor: TStringField;
    cdsItemcomments: TStringField;
    cdsItempubDate: TDateTimeField;
    dsChannel: TDataSource;
    dsItem: TDataSource;
    dsRSS: TDataSource;
    pnlLeft: TPanel;
    pnlUpperLeft: TPanel;
    Splitter1: TSplitter;
    pnlLowerLeft: TPanel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    pnlRight: TPanel;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEditChannelTitle: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Splitter2: TSplitter;
    Bevel1: TBevel;
    DBMemo1: TDBMemo;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    SaveAs1: TMenuItem;
    Save1: TMenuItem;
    Open1: TMenuItem;
    New1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    Label1: TLabel;
    btnChannelUndo: TButton;
    Button1: TButton;
    UploadRSS1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure New1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure GenerateRSS1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure cdsChannelBeforePost(DataSet: TDataSet);
    procedure cdsItemBeforePost(DataSet: TDataSet);
    procedure cdsChannelAfterInsert(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Exit1Click(Sender: TObject);
    procedure btnChannelUndoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure AskSaveChanges;
  end;

var
  Form1: TForm1 = nil;

implementation
{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  cdsRSS.Active := False // deactivate at startup
end;

procedure TForm1.New1Click(Sender: TObject);
begin
  AskSaveChanges;
  cdsRSS.FileName := '';
  while cdsRSS.RecordCount > 0 do
  begin
    while cdsChannel.RecordCount > 0 do
    begin
      while cdsItem.RecordCount > 0 do cdsItem.Delete;
      cdsChannel.Delete
    end;
    cdsRSS.Delete
  end;
  cdsRSS.MergeChangeLog; // truly empty now
  if cdsRSS.RecordCount = 0 then
  begin
    cdsRSS.Append;
    cdsRSSversion.AsString := '2.0';
    cdsRSS.Post
  end;
  cdsRSS.MergeChangeLog; // ChangeCount = 0
end;

procedure TForm1.Open1Click(Sender: TObject);
begin
  AskSaveChanges;
  with TOpenDialog.Create(Self) do
  try
    Title := 'Open RSS Datapacket';
    InitialDir := GetCurrentDir;
    Filter := 'RSS Datapackets (*.xml)|*.XML';
    DefaultExt := 'xml';
    if Execute and (FileName <> '') then
    begin
      cdsRSS.Active := False;
      cdsRSS.FileName := FileName;
      cdsRSS.LoadFromFile(cdsRSS.FileName)
    end
  finally
    Free
  end
end;

procedure TForm1.Save1Click(Sender: TObject);
begin
  cdsRSS.Active := True;
  cdsRSS.MergeChangeLog;
  if cdsRSS.FileName = '' then
  begin
    with TSaveDialog.Create(Self) do
    try
      Title := 'Save RSS Datapacket';
      InitialDir := GetCurrentDir;
      Filter := 'RSS Datapackets (*.xml)|*.XML';
      DefaultExt := 'xml';
      if Execute and (FileName <> '') then
      begin
        cdsRSS.FileName := FileName;
        cdsRSS.SaveToFile(cdsRSS.FileName)
      end
    finally
      Free
    end
  end
  else
    cdsRSS.SaveToFile(cdsRSS.FileName)
end;

procedure TForm1.GenerateRSS1Click(Sender: TObject);
var
  f: System.Text;
begin
  cdsRSS.Active := True;
  cdsRSS.MergeChangeLog;
  XMLTransform1.SourceXml := cdsRSS.XMLData;
  with TSaveDialog.Create(Self) do
  try
    Title := 'Save RSS Document';
    InitialDir := GetCurrentDir;
    Filter := 'RSS documents (*.xml)|*.XML';
    DefaultExt := 'xml';
    if Execute and (FileName <> '') then
    begin
      System.Assign(f,FileName);
      Rewrite(f);
      writeln(f,XMLTransform1.Data);
      System.Close(f)
    end
  finally
    Free
  end
end;

procedure TForm1.AskSaveChanges;
begin
  cdsRSS.Active := True;
  if cdsItem.State in [dsEdit,dsInsert] then cdsItem.Post;
  if cdsChannel.State in [dsEdit,dsInsert] then cdsChannel.Post;
  if cdsRSS.State in [dsEdit,dsInsert] then cdsRSS.Post;
  if cdsRSS.Active and (cdsRSS.ChangeCount > 0) then
    if MessageDlg('Save Changes?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      Save1Click(nil)
end;

procedure TForm1.About1Click(Sender: TObject);
begin
  ShowMessage(Caption + #13#10'by Bob Swart Training && Consultancy')
end;

procedure TForm1.cdsChannelBeforePost(DataSet: TDataSet);
begin
  cdsChannelpubDate.AsDateTime := Now;
  cdsChannellastBuildDate.AsDateTime := cdsChannelpubDate.AsDateTime
end;

procedure TForm1.cdsItemBeforePost(DataSet: TDataSet);
begin
  cdsItempubDate.AsDateTime := Now
end;

procedure TForm1.cdsChannelAfterInsert(DataSet: TDataSet);
begin
  cdsChannelgenerator.AsString := Caption;
  cdsChanneldocs.AsString := 'http://blogs.law.harvard.edu/tech/rss'
end;

procedure TForm1.btnChannelUndoClick(Sender: TObject);
begin
  cdsChannel.UndoLastChange(True)
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  cdsItem.UndoLastChange(True)
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  AskSaveChanges;
  CanClose := True
end;

end.

