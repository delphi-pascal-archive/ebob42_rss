object Form1: TForm1
  Left = 233
  Top = 126
  ActiveControl = DBEdit1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'eBob42 RSS'
  ClientHeight = 699
  ClientWidth = 792
  Color = clBtnFace
  Constraints.MinHeight = 669
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Splitter2: TSplitter
    Left = 297
    Top = 0
    Height = 699
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 297
    Height = 699
    Align = alLeft
    BevelOuter = bvNone
    Constraints.MinWidth = 241
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 0
      Top = 425
      Width = 297
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object pnlUpperLeft: TPanel
      Left = 0
      Top = 0
      Width = 297
      Height = 425
      Align = alTop
      Constraints.MinHeight = 100
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 17
        Width = 188
        Height = 16
        Caption = 'RSS document version number:'
      end
      object DBEdit1: TDBEdit
        Left = 216
        Top = 12
        Width = 65
        Height = 24
        Color = clSilver
        DataField = 'version'
        DataSource = dsRSS
        ReadOnly = True
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 48
        Width = 295
        Height = 376
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsChannel
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'title'
            ReadOnly = True
            Title.Caption = 'RSS Channel'
            Visible = True
          end>
      end
    end
    object pnlLowerLeft: TPanel
      Left = 0
      Top = 428
      Width = 297
      Height = 271
      Align = alClient
      TabOrder = 1
      object DBGrid2: TDBGrid
        Left = 1
        Top = 1
        Width = 295
        Height = 269
        Align = alClient
        Constraints.MinHeight = 100
        DataSource = dsItem
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'title'
            ReadOnly = True
            Title.Caption = 'RSS Channel Item'
            Visible = True
          end>
      end
    end
  end
  object pnlRight: TPanel
    Left = 300
    Top = 0
    Width = 492
    Height = 699
    Align = alClient
    Constraints.MinWidth = 350
    TabOrder = 0
    object TLabel
      Left = 81
      Top = 489
      Width = 26
      Height = 16
      Caption = 'title'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TLabel
      Left = 82
      Top = 519
      Width = 25
      Height = 16
      Caption = 'link'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TLabel
      Left = 31
      Top = 548
      Width = 78
      Height = 16
      Caption = 'description'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TLabel
      Left = 79
      Top = 602
      Width = 37
      Height = 16
      Caption = 'author'
      FocusControl = DBEdit5
    end
    object TLabel
      Left = 57
      Top = 640
      Width = 62
      Height = 16
      Caption = 'comments'
      FocusControl = DBEdit6
    end
    object TLabel
      Left = 58
      Top = 670
      Width = 52
      Height = 16
      Caption = 'pubDate'
      FocusControl = DBEdit7
    end
    object TLabel
      Left = 81
      Top = 64
      Width = 26
      Height = 16
      Caption = 'title'
      FocusControl = DBEditChannelTitle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TLabel
      Left = 82
      Top = 94
      Width = 25
      Height = 16
      Caption = 'link'
      FocusControl = DBEdit9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TLabel
      Left = 31
      Top = 123
      Width = 78
      Height = 16
      Caption = 'description'
      FocusControl = DBEdit10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TLabel
      Left = 54
      Top = 153
      Width = 57
      Height = 16
      Caption = 'language'
      FocusControl = DBEdit11
    end
    object TLabel
      Left = 55
      Top = 182
      Width = 55
      Height = 16
      Caption = 'copyright'
      FocusControl = DBEdit12
    end
    object TLabel
      Left = 18
      Top = 212
      Width = 95
      Height = 16
      Caption = 'managingEditor'
      FocusControl = DBEdit13
    end
    object TLabel
      Left = 44
      Top = 241
      Width = 66
      Height = 16
      Caption = 'webMaster'
      FocusControl = DBEdit14
    end
    object TLabel
      Left = 58
      Top = 271
      Width = 52
      Height = 16
      Caption = 'pubDate'
      FocusControl = DBEdit15
    end
    object TLabel
      Left = 32
      Top = 300
      Width = 80
      Height = 16
      Caption = 'lastBuildDate'
      FocusControl = DBEdit16
    end
    object TLabel
      Left = 53
      Top = 330
      Width = 58
      Height = 16
      Caption = 'generator'
      FocusControl = DBEdit17
    end
    object TLabel
      Left = 80
      Top = 359
      Width = 30
      Height = 16
      Caption = 'docs'
      FocusControl = DBEdit18
    end
    object TLabel
      Left = 74
      Top = 389
      Width = 38
      Height = 16
      Caption = 'image'
      FocusControl = DBEdit19
    end
    object Bevel1: TBevel
      Left = 0
      Top = 423
      Width = 1231
      Height = 4
      Shape = bsBottomLine
    end
    object DBNavigator2: TDBNavigator
      Left = 8
      Top = 8
      Width = 290
      Height = 25
      DataSource = dsChannel
      TabOrder = 18
    end
    object DBNavigator3: TDBNavigator
      Left = 8
      Top = 432
      Width = 290
      Height = 25
      DataSource = dsItem
      TabOrder = 20
    end
    object DBEdit2: TDBEdit
      Left = 128
      Top = 484
      Width = 353
      Height = 24
      DataField = 'title'
      DataSource = dsItem
      TabOrder = 12
    end
    object DBEdit3: TDBEdit
      Left = 128
      Top = 514
      Width = 353
      Height = 24
      DataField = 'link'
      DataSource = dsItem
      TabOrder = 13
    end
    object DBEdit5: TDBEdit
      Left = 128
      Top = 606
      Width = 353
      Height = 24
      DataField = 'author'
      DataSource = dsItem
      TabOrder = 15
    end
    object DBEdit6: TDBEdit
      Left = 128
      Top = 635
      Width = 353
      Height = 24
      DataField = 'comments'
      DataSource = dsItem
      TabOrder = 16
    end
    object DBEdit7: TDBEdit
      Left = 128
      Top = 665
      Width = 229
      Height = 24
      Color = clSilver
      DataField = 'pubDate'
      DataSource = dsItem
      ReadOnly = True
      TabOrder = 17
    end
    object DBEditChannelTitle: TDBEdit
      Left = 128
      Top = 59
      Width = 353
      Height = 24
      DataField = 'title'
      DataSource = dsChannel
      TabOrder = 0
    end
    object DBEdit9: TDBEdit
      Left = 128
      Top = 89
      Width = 353
      Height = 24
      DataField = 'link'
      DataSource = dsChannel
      TabOrder = 1
    end
    object DBEdit10: TDBEdit
      Left = 128
      Top = 118
      Width = 353
      Height = 24
      DataField = 'description'
      DataSource = dsChannel
      TabOrder = 2
    end
    object DBEdit11: TDBEdit
      Left = 128
      Top = 148
      Width = 50
      Height = 24
      DataField = 'language'
      DataSource = dsChannel
      TabOrder = 3
    end
    object DBEdit12: TDBEdit
      Left = 128
      Top = 177
      Width = 352
      Height = 24
      DataField = 'copyright'
      DataSource = dsChannel
      TabOrder = 4
    end
    object DBEdit13: TDBEdit
      Left = 128
      Top = 207
      Width = 353
      Height = 24
      DataField = 'managingEditor'
      DataSource = dsChannel
      TabOrder = 5
    end
    object DBEdit14: TDBEdit
      Left = 128
      Top = 236
      Width = 353
      Height = 24
      DataField = 'webMaster'
      DataSource = dsChannel
      TabOrder = 6
    end
    object DBEdit15: TDBEdit
      Left = 128
      Top = 266
      Width = 229
      Height = 24
      Color = clSilver
      DataField = 'pubDate'
      DataSource = dsChannel
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit16: TDBEdit
      Left = 128
      Top = 295
      Width = 229
      Height = 24
      Color = clSilver
      DataField = 'lastBuildDate'
      DataSource = dsChannel
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit17: TDBEdit
      Left = 128
      Top = 325
      Width = 353
      Height = 24
      Color = clSilver
      DataField = 'generator'
      DataSource = dsChannel
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit18: TDBEdit
      Left = 128
      Top = 354
      Width = 353
      Height = 24
      Color = clSilver
      DataField = 'docs'
      DataSource = dsChannel
      ReadOnly = True
      TabOrder = 10
    end
    object DBEdit19: TDBEdit
      Left = 128
      Top = 384
      Width = 353
      Height = 24
      DataField = 'image'
      DataSource = dsChannel
      TabOrder = 11
    end
    object DBMemo1: TDBMemo
      Left = 128
      Top = 544
      Width = 353
      Height = 59
      DataField = 'description'
      DataSource = dsItem
      TabOrder = 14
    end
    object btnChannelUndo: TButton
      Left = 304
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Undo'
      TabOrder = 19
      TabStop = False
      OnClick = btnChannelUndoClick
    end
    object Button1: TButton
      Left = 304
      Top = 432
      Width = 97
      Height = 25
      Caption = 'Undo'
      TabOrder = 21
      TabStop = False
      OnClick = Button1Click
    end
  end
  object cdsRSS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 112
    Data = {
      680200009619E0BD020000001800000015000000000003000000680207766572
      73696F6E0100490010000100055749445448020002000300076368616E6E656C
      13000E0510000000057469746C65010049001400010005574944544802000200
      8000046C696E6B01004900140001000557494454480200020080000B64657363
      72697074696F6E0200490014000100055749445448020002000020086C616E67
      75616765010049001000010005574944544802000200100009636F7079726967
      687401004900100001000557494454480200020040000E6D616E6167696E6745
      6469746F720100490010000100055749445448020002004000097765624D6173
      7465720100490010000100055749445448020002004000077075624461746508
      000800100000000D6C6173744275696C64446174650800080010000000096765
      6E657261746F72010049001000010005574944544802000200200004646F6373
      010049001000010005574944544802000200400005696D616765010049001000
      0100055749445448020002004000046974656D06000E0510000000057469746C
      650100490014000100055749445448020002008000046C696E6B010049001400
      01000557494454480200020080000B6465736372697074696F6E020049001400
      010005574944544802000200002006617574686F720100490010000100055749
      44544802000200400008636F6D6D656E74730100490010000100055749445448
      0200020080000770756244617465080008001000000001000B5052494D415259
      5F4B455904008200010000000100000001000B5052494D4152595F4B45590400
      820001000000010000000000}
    object cdsRSSversion: TStringField
      FieldName = 'version'
      Size = 3
    end
    object cdsRSSchannel: TDataSetField
      FieldName = 'channel'
      UnNamed = True
    end
  end
  object XMLTransform1: TXMLTransform
    TransformationFile = 'ToXml.xtr'
    Left = 128
    Top = 112
  end
  object cdsChannel: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsRSSchannel
    Params = <>
    AfterInsert = cdsChannelAfterInsert
    BeforePost = cdsChannelBeforePost
    Left = 64
    Top = 112
    object cdsChanneltitle: TStringField
      FieldName = 'title'
      Required = True
      Size = 128
    end
    object cdsChannellink: TStringField
      FieldName = 'link'
      Required = True
      Size = 128
    end
    object cdsChanneldescription: TStringField
      FieldName = 'description'
      Required = True
      Size = 8192
    end
    object cdsChannellanguage: TStringField
      FieldName = 'language'
      Size = 16
    end
    object cdsChannelcopyright: TStringField
      FieldName = 'copyright'
      Size = 64
    end
    object cdsChannelmanagingEditor: TStringField
      FieldName = 'managingEditor'
      Size = 64
    end
    object cdsChannelwebMaster: TStringField
      FieldName = 'webMaster'
      Size = 64
    end
    object cdsChannelpubDate: TDateTimeField
      FieldName = 'pubDate'
    end
    object cdsChannellastBuildDate: TDateTimeField
      FieldName = 'lastBuildDate'
    end
    object cdsChannelgenerator: TStringField
      FieldName = 'generator'
      Size = 32
    end
    object cdsChanneldocs: TStringField
      FieldName = 'docs'
      Size = 64
    end
    object cdsChannelimage: TStringField
      FieldName = 'image'
      Size = 64
    end
    object cdsChannelitem: TDataSetField
      FieldName = 'item'
      UnNamed = True
    end
  end
  object cdsItem: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsChannelitem
    Params = <>
    BeforePost = cdsItemBeforePost
    Left = 96
    Top = 112
    object cdsItemtitle: TStringField
      FieldName = 'title'
      Required = True
      Size = 128
    end
    object cdsItemlink: TStringField
      FieldName = 'link'
      Required = True
      Size = 128
    end
    object cdsItemdescription: TStringField
      FieldName = 'description'
      Required = True
      Size = 8192
    end
    object cdsItemauthor: TStringField
      FieldName = 'author'
      Size = 64
    end
    object cdsItemcomments: TStringField
      FieldName = 'comments'
      Size = 128
    end
    object cdsItempubDate: TDateTimeField
      FieldName = 'pubDate'
    end
  end
  object dsChannel: TDataSource
    DataSet = cdsChannel
    Left = 64
    Top = 144
  end
  object dsItem: TDataSource
    DataSet = cdsItem
    Left = 96
    Top = 144
  end
  object dsRSS: TDataSource
    DataSet = cdsRSS
    Left = 32
    Top = 144
  end
  object MainMenu1: TMainMenu
    Left = 28
    Top = 464
    object File1: TMenuItem
      Caption = '&File'
      object New1: TMenuItem
        Caption = '&New'
        OnClick = New1Click
      end
      object Open1: TMenuItem
        Caption = '&Open Data...'
        OnClick = Open1Click
      end
      object Save1: TMenuItem
        Caption = '&Save Data...'
        OnClick = Save1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object SaveAs1: TMenuItem
        Caption = '&Generate RSS...'
        OnClick = GenerateRSS1Click
      end
      object UploadRSS1: TMenuItem
        Caption = '&Upload RSS...'
        Enabled = False
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'E&xit'
        OnClick = Exit1Click
      end
    end
    object Help1: TMenuItem
      Caption = '&Help'
      object About1: TMenuItem
        Caption = '&About...'
        OnClick = About1Click
      end
    end
  end
end
