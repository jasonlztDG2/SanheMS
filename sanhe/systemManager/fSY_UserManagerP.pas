unit fSY_UserManagerP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Fbase1P, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, uDAFields,
  uDADataTable, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, cxTL, cxTextEdit, cxCheckBox, cxTLdxBarBuiltInMenu,
  cxContainer, cxDBNavigator, cxLabel, cxInplaceContainer, uRODynamicRequest,
  uDADelta, uROComponent, uDAScriptingProvider, uDAMemDataTable;

type
  TfSY_UserManager = class(Tfbase1)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    tree1: TcxTreeList;
    aColumn: TcxTreeListColumn;
    cxTreeList1Column2: TcxTreeListColumn;
    tree1Column1: TcxTreeListColumn;
    tree1Column2: TcxTreeListColumn;
    tree1Column3: TcxTreeListColumn;
    tree1Column4: TcxTreeListColumn;
    tree1Column5: TcxTreeListColumn;
    tree1Column6: TcxTreeListColumn;
    tree1Column7: TcxTreeListColumn;
    Panel6: TPanel;
    cxLabel2: TcxLabel;
    cxDBNavigator1: TcxDBNavigator;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1GroupName: TcxGridDBColumn;
    cxGrid2DBTableView1isAdmin: TcxGridDBColumn;
    cxGrid2DBTableView1auText: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1FullName: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel7: TPanel;
    cxLabel1: TcxLabel;
    cxDBNavigator2: TcxDBNavigator;
    Memo1: TMemo;
    DADataSource1: TDADataSource;
    tbl_p_usergroup: TDAMemDataTable;
    dsP_Module: TDADataSource;
    tbl_p_module: TDAMemDataTable;
    dSP_User: TDADataSource;
    tbl_p_user: TDAMemDataTable;
    cxGridDBTableView1RecID: TcxGridDBColumn;
    cxGridDBTableView1loginName: TcxGridDBColumn;
    procedure tbl_p_usergroupAfterScroll(DataTable: TDADataTable);
    procedure tree1CustomDrawDataCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
    procedure tree1FocusedNodeChanged(Sender: TcxCustomTreeList;
      APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxDBNavigator2ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGrid2DBTableView1CanFocusRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure LoadModule;
    procedure LoadAu;
    procedure SaveAu;
  public
    { Public declarations }
  end;

var
  fSY_UserManager: TfSY_UserManager;

implementation

{$R *.dfm}
uses duPubP ,FSY_UserManager_UserP
;

procedure TfSY_UserManager.SaveAu;
var
  aPNode,aChildNode:TcxTreelistNode;
  I,I2:integer;
  aStream:TmemoryStream;
  Procedure AddRec(aNode:TcxTreelistNOde);
  var
    aStr:string;
    I:integer;
  begin
    aStr:=aNode.Values[8]+':';
    for I := 1 to 7 do
      begin
        if VarIsNull(aNode.Values[I]) then
          aStr:=aStr+'0'
        else
        begin
          if aNode.Values[I] then
            aStr:=astr+'1'
            else
              aStr:=aStr+'0';
        end;

      end;
      memo1.Lines.Add(aStr);
  end;
begin
  memo1.Lines.Clear;
  for I := 0 to self.tree1.Count-1 do
    begin
      aPNode:=tree1.Items[I];
      if aPNode.Count>0 then
      begin
        for I2 := 0 to aPNode.Count-1 do
        begin
          aChildNode:=aPnode.Items[I2];
          AddRec(aChildNode);
        end;
      end
      else
      begin
        addRec(aPNode);
      end;
    end;
    with self.tbl_p_usergroup do
    begin
      try
      edit;
//      aStream:=TmemoryStream.Create;
//      memo1.Lines.SaveToStream(aStream);
//      aStream.Position:=0;
      fieldbyname('auText').AsString:=memo1.Text;
      post;
      applyupdates(true);
      finally
        aStream.DisposeOf;
      end;

    end;
end;


procedure TfSY_UserManager.LoadAu;
var
  I,aPos:integer;
  aStr,auStr,actName:string; //auStr='1100000'...
  procedure updateNode(aNode:TcxTreelistNode;astr:String);
  var
    I3:integer;
  begin
            for I3 := 1 to 7 do
            begin
              if auStr[I3]='1' then
                aNode.Values[I3]:=True
              else
                aNode.Values[I3]:=false;
            end;
  end;
  procedure setupTree(aName,aStr:string);
  var
    I1,I2:integer;
    aRootNode,aChildNode:TcxTreelistNode;
  begin
      //find the node
      for I1 := 0 to tree1.Count-1 do
      begin
        aRootNode:=tree1.Items[I1];
        if aRootNode.Values[8] =aName then
          updateNode(aRootNOde,aStr);
        if aRootNode.Count>0 then
        begin
          for I2 := 0 to aRootNode.Count-1 do
            begin
                aChildNode:=aRootNode.Items[I2];
                if aChildNode.Values[8]=aName then
                  UpdateNode(aChildNode,aStr);

            end;
        end;
      end;


  end;

  procedure setNullTree();
  var
    I1,I2:integer;
    aRootNode,aChildNode:TcxTreelistNode;
  begin
       for I1 := 0 to tree1.Count-1 do
      begin
        aRootNode:=tree1.Items[I1];

        if aRootNode.Count>0 then
        begin
          for I2 := 0 to aRootNode.Count-1 do
            begin
                aChildNode:=aRootNode.Items[I2];
                UpdateNode(aChildNode,aStr);

            end;

        end;
           UpdateNode(aRootNode,aStr);
      end;
  end;

begin
  try
    tree1.BeginUpdate;
    // clean check box....

  finally
    memo1.Text:= tbl_p_UserGroup.FieldByName('auText').AsString;
    if memo1.Text = '' then
    begin
         auStr := '0000000';
         setNullTree();

    end
    else
    begin
      for I := 0  to memo1.Lines.Count-1 do
      begin
        aStr:=memo1.Lines[i];
        aPos:=pos (':',aStr,1);
        if aPos>0 then // found..
        begin
          actName:=copy(aStr,1,aPos-1);
          auStr:=copy(aStr,aPos+1,7);
          setupTree(actName,auStr);
        end;
      end;

    end;

    tree1.EndUpdate;
  end;

end;


procedure TfSY_UserManager.LoadModule;
var
    aa:TDadataTable;
    aNode:TcxTreelistNode;
    I:integer;
begin

    aa:=self.dsp_Module.DataTable;
    with aa do
    begin
    //1.draw the top floor
        filter:='ParentAction='''+'NONE''';
        filtered:=true;
        first;
        while not aa.eof do
        begin
            aNode:=tree1.Add;
            aNode.Values[0]:=aa.fieldbyname('ModuleName').AsString;
            aNode.Values[8]:=aa.fieldbyname('ActName').AsString;
            aa.Next;
        end;

    //2.append the child rows.
        filter:='ParentAction<>'''+'NONE''';
        filtered:=true;
        first;
        while not Eof do
        begin
            for I:=0 to tree1.Count-1 do
            begin
                if upperCase(Tree1.Items[I].Values[8])=upperCase(aa.fieldbyname('ParentAction').AsString) then
                begin
                    aNode:=Tree1.Items[I].AddChild;
                    aNode.Values[0]:=aa.fieldbyname('ModuleName').AsString;
                    aNode.Values[8]:=aa.fieldbyname('ActName').AsString;
                    break;
                end;
            end;
            aa.Next;
        end;
        aa.Filter:='';
        AA:=nil;
    end;
    tree1.FullExpand;

    tree1.FullExpand;
end;

procedure TfSY_UserManager.tbl_p_usergroupAfterScroll(DataTable: TDADataTable);
var
  GroupID:String;
begin
  inherited;
  if self.tbl_p_user.Active then
  begin
    GroupID:=Datatable.FieldByName('ID').AsString;
    if GroupID='' then
      GroupID:='0';
    self.tbl_p_user.Filter:='UserGroup_ID='+GroupID;
    self.tbl_p_user.Filtered:=true;

  end;
  if GroupID<>'0' then
  begin
      self.loadAu;
  end;

end;

procedure TfSY_UserManager.tree1CustomDrawDataCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
    if (aViewInfo.Column.ItemIndex>0 )and(aViewInfo.Node.Count>0) then
    begin
        adone:=true;
        acanvas.Brush.Color:=clWhite;
        acanvas.FillRect(aViewInfo.EditRect);
    end;
end;

procedure TfSY_UserManager.tree1FocusedNodeChanged(Sender: TcxCustomTreeList;
  APrevFocusedNode, AFocusedNode: TcxTreeListNode);
begin
  inherited;
      if AFocusedNOde.Count>0 then
  begin
    tree1.OptionsData.Editing:=false;

  end
  else
    tree1.OptionsData.Editing:=true;
end;

procedure TfSY_UserManager.Button1Click(Sender: TObject);
begin
  inherited;
     self.SaveAu;
  self.tree1.OptionsData.Editing:=false;
end;

procedure TfSY_UserManager.Button2Click(Sender: TObject);
begin
  inherited;
      self.tree1.OptionsData.Editing:=true;
  self.cxGrid2DBTableView1.OptionsData.Editing:=true;
  self.cxGrid2.Enabled := true;
end;

procedure TfSY_UserManager.Button3Click(Sender: TObject);
begin
  inherited;
     self.tree1.OptionsData.Editing:=false;
  self.LoadAu;
end;

procedure TfSY_UserManager.cxDBNavigator1ButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
var
    bk:TBookMark;
begin
  inherited;
case  AButtonindex of
  NBDI_APPEND:
  begin
      self.cxGrid2DBTableView1.OptionsData.Editing:=true;
//      self.cxGrid2DBTableView1.OptionsBehavior
  end;
  NBDI_Post:
  begin
      aDone:=true;
      self.tbl_p_usergroup.DisableControls;
      self.cxGrid2DBTableView1.DataController.UpdateData;
      self.tbl_p_usergroup.ApplyUpdates(False,true);
      self.tbl_p_usergroup.EnableControls;
      self.cxGrid2DBTableView1.OptionsData.Editing:=False;

   end;
   NBDI_Cancel:
   begin
      aDone:=true;
      self.cxGrid2DBTableView1.DataController.UpdateData;
      self.tbl_p_usergroup.CancelUpdates(false);
         self.cxGrid2DBTableView1.OptionsData.Editing:=False;

   end;


    NBDI_Edit:
    begin
      self.cxGrid2DBTableView1.OptionsData.Editing:=true;
    end;


  NBDI_DELETE:
  begin
    aDone:=true;
      with self.tbl_p_user do
      begin
        close;
        open;
        if recordcount>0 then
        begin
          showmessage('当前组别有对应的用户不能删除，要删除该组请先移除对应的用户！' );
        end
        else
        begin
         if MessageDlg('确认移除当前组?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          self.tbl_p_usergroup.Delete;
          self.tbl_p_usergroup.ApplyUpdates(false,true);

        end;

      end;

  end;
end;

end;

procedure TfSY_UserManager.cxDBNavigator2ButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
      case  AButtonindex of
  NBDI_APPEND: begin
      FSY_UserManager_User:=TFSY_UserManager_User.Create(application);
      Fsy_UserManager_User.Visible:=false;
      FSY_UserManager_User.ParentForm:=self;
      FSY_UserManager_User.ShowModal;

      aDone:=true;
      self.tbl_p_user.RefreshFromServer;
      exit;
    end;
    NBDI_DELETE:begin
      if MessageDlg('确认移除当前用户?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then

      with self.tbl_p_user do
      begin
        edit;
        fieldbyname('UserGroup_ID').AsInteger:=0;
        post;
        applyupdates(true);
      end;
      aDone:=true;
      exit;
    end;
    NBDI_POST:begin
      //post;
      //applyupdates(true);
      aDone:=true;
      exit;
    end;

  end;
end;

procedure TfSY_UserManager.cxGrid2DBTableView1CanFocusRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
begin
  inherited;
   if self.tbl_p_usergroup.State in [dsEdit,dsInsert] then
    aAllow:=false;
end;

procedure TfSY_UserManager.FormCreate(Sender: TObject);
begin
  inherited;
      // 初始化，将datasourcel连接到Dupub中的dataset.
  self.tbl_p_module.RemoteDataAdapter:=duPub.RemoteDataAdapter;
  self.tbl_p_usergroup.RemoteDataAdapter:=duPub.RemoteDataAdapter;
  self.tbl_p_user.RemoteDataAdapter:=duPub.RemoteDataAdapter;
  // 打开对应的表
  self.dsP_Module.DataTable.Open;

  self.LoadModule;

  self.dSP_User.DataTable.Open;
  self.DADataSource1.DataTable.Open;
end;

end.
