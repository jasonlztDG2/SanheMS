unit fPR_VersionOrderAddP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxMemo,
  dxGDIPlusClasses, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView,uDADataTable,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,jpeg,
  cxDBNavigator, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtDlgs, cxContainer, dxCore,uDAWhere,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit;

type
  TfPR_VersionOrderAdd = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel4: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel8: TPanel;
    Panel16: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label34: TLabel;
    Edit4: TEdit;
    Edit17: TEdit;
    Memo1: TMemo;
    Panel17: TPanel;
    cxDBNavigator1: TcxDBNavigator;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1partOne: TcxGridDBColumn;
    cxGrid1DBTableView1partTwo: TcxGridDBColumn;
    cxGrid1DBTableView1partThree: TcxGridDBColumn;
    cxGrid1DBTableView1partFour: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel10: TPanel;
    Panel6: TPanel;
    Image3: TImage;
    Image1: TImage;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Panel12: TPanel;
    Image2: TImage;
    Image4: TImage;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Panel7: TPanel;
    Panel13: TPanel;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel5: TPanel;
    Panel14: TPanel;
    cxDBNavigator2: TcxDBNavigator;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1RecID: TcxGridDBColumn;
    cxGridDBTableView1name: TcxGridDBColumn;
    cxGridDBTableView1material: TcxGridDBColumn;
    cxGridDBTableView1isOwn: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel9: TPanel;
    Label9: TLabel;
    RichEdit1: TRichEdit;
    TabSheet4: TTabSheet;
    Panel11: TPanel;
    Memo2: TMemo;
    Button3: TButton;
    Button4: TButton;
    Memo3: TMemo;
    Panel15: TPanel;
    Memo4: TMemo;
    Image5: TImage;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    cxDateEdit2: TcxDateEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    Label6: TLabel;
    procedure Image2DblClick(Sender: TObject);
    procedure Image4DblClick(Sender: TObject);
    procedure Image3DblClick(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image5DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxDBNavigator2ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);

  private
    { Private declarations }
    procedure openPic(Image: TImage);
    procedure loadData();
    procedure initPic(part : String;title: String;body: String;pic : String);
    procedure loadPic(part : String;title: String;body: String;pic : String);
  public
    { Public declarations }
    function BitmapToRTF(pict : TBitmap):String;

  end;

var
  fPR_VersionOrderAdd: TfPR_VersionOrderAdd;
  intoType:Integer;
implementation

{$R *.dfm}

uses
duPubP;

var
Canvas:TCanvas;
Flag:Boolean;
pic1 : String;
pic2 : String;
pic3 : String;
pic4 : String;
pic5 : String;
picPartStr : String;
picTitleStr : String;
picBodyStr : String;
picStr : String;


 function TfPR_VersionOrderAdd.BitmapToRTF(pict : TBitmap):String;
 var
 bi,bb,rtf:String;
 bis,bbs: Cardinal;
 achar : String;
 hexpict : String;
 I : Integer;
 begin
     GetDIBSizes(pict.Handle,bis,bbs);
     SetLength(bi,bis);
     SetLength(bb,bbs);
     GetDIB(pict.Handle,pict.Palette,PChar(bi)^,PChar(bb)^);
     rtf := '{\rtf1 {\pict\dibitmap';
     SetLength(hexpict,(Length(bb) + Length(bi)) * 2);
     I := 2;
     for bis := 1 to Length(bi) do
     begin
         achar := Format('%x',[Integer(bb[bbs])]);
         if Length(achar) = 1 then
            achar := '0' + achar;
         hexpict[I-1] := achar[1];
         hexpict[I] := achar[2];
         inc(I,2);
     end;
     rtf := rtf + hexpict + '}}';
     result := rtf;
 end;


procedure TfPR_VersionOrderAdd.openPic(Image: TImage);
begin
   if OpenPictureDialog1.Execute then
   begin
     Image.Picture.LoadFromFile(OpenPictureDialog1.FileName);
   end;
end;

procedure TfPR_VersionOrderAdd.loadData();
var
dataList : TStringList;
begin
     dataList := TStringList.Create;
   dupub.setSelectData(dataList,'versionOrderNum',cxDBTextEdit1.Text,dboEqual);
   duPub.getSelectData(duPub.tbl_pu_versionOrder,dataList,'pu_versionOrder',dboAnd);
   duPub.getSelectData(duPub.tbl_pu_versionOrderTitle,dataList,'pu_versionOrderTitle',dboAnd);
   duPub.getSelectData(duPub.tbl_pu_versionOrderMaterial,dataList,'pu_versionOrderMaterial',dboAnd);
   duPub.getSelectData(duPub.tbl_pu_versionOrderPic,dataList,'pu_versionOrderPic',dboAnd);

   Edit1.Text := cxDBTextEdit1.Text;
   Edit2.Text := duPub.tbl_pu_versionOrder.FieldByName('partnerNum').AsString;
   cxDateEdit2.Text := duPub.tbl_pu_versionOrder.FieldByName('deliveryDate').AsString;
   Edit4.Text := duPub.tbl_pu_versionOrder.FieldByName('titleName').AsString;
   Edit17.Text := duPub.tbl_pu_versionOrder.FieldByName('titleCount').AsString;
   Memo1.Text := duPub.tbl_pu_versionOrder.FieldByName('titleMemo').AsString;
   Memo2.Text := duPub.tbl_pu_versionOrder.FieldByName('memo').AsString;
   RichEdit1.Text := duPub.tbl_pu_versionOrder.FieldByName('packaging').AsString;

   if duPub.tbl_pu_versionOrderPic.RecordCount > 0 then
   begin
      while not duPub.tbl_pu_versionOrderPic.Eof do
      begin

           loadPic(duPub.tbl_pu_versionOrderPic.FieldByName('part').AsString,
           duPub.tbl_pu_versionOrderPic.FieldByName('title').AsString,
           duPub.tbl_pu_versionOrderPic.FieldByName('body').AsString,
           duPub.tbl_pu_versionOrderPic.FieldByName('pic').AsString
           );
           duPub.tbl_pu_versionOrderPic.Next;
      end;

   end;

end;

procedure TfPR_VersionOrderAdd.loadPic(part : String;title: String;body: String;pic : String);
begin
    if part = '1' then
    begin
        Edit5.Text := title;
        Edit6.Text := body;
        if pic <> '' then
          Image2.Picture.LoadFromFile(pic);
    end else if part = '2' then
    begin
         Edit7.Text := title;
        Edit8.Text := body;
        if pic <> '' then
        Image4.Picture.LoadFromFile(pic);
    end else if part = '3' then
    begin
        Edit9.Text := title;
        Edit10.Text := body;
        if pic <> '' then
        Image3.Picture.LoadFromFile(pic);
    end else if part = '4' then
    begin
         Edit11.Text := title;
        Edit12.Text := body;
        if pic <> '' then
        Image1.Picture.LoadFromFile(pic);
    end else if part = '5' then
    begin
        Memo3.Text := title;
        Memo4.Text := body;
        if pic <> '' then
        Image5.Picture.LoadFromFile(pic);
    end;

end;

procedure TfPR_VersionOrderAdd.initPic(part : String;title: String;body: String;pic : String);
begin
    if (title.Trim <> '') or (body.Trim <> '') or (pic.Trim <> '')then
     begin
         picPartStr := picPartStr + part + '|';
         picTitleStr := picTitleStr + title + '|';
         picBodyStr := picBodyStr + body + '|';
         picStr := picStr + pic + '|';
     end;
end;

procedure TfPR_VersionOrderAdd.Button1Click(Sender: TObject);
var
versionOrderNum : String;
partnerNum : String;
titleName : String;
titleCount : String;
titleMemo : String;
allMemo : String;
packaging : String;
deliveryDate : DateTime;
recordUser : Integer;
auditUser : Integer;
auditUserIndex : Integer;

titleOneStr : String;
titleTwoStr : String;
titleThreeStr : String;
titleFourStr : String;

nameStr : String;
materialStr : String;
ownStr : String;
successResult : String;

titleOne : String;
titleTwo : String;
titleThree : String;
titleFour : String;
name : String;
material : String;
own : String;
I : Integer;
begin
     if intoType = 1 then
     begin
          titleOneStr := '';
          titleTwoStr := '';
          titleThreeStr := '';
          titleFourStr := '';

          nameStr := '';
          materialStr := '';
          ownStr := '';

          picPartStr := '';
          picTitleStr := '';
          picBodyStr := '';
          picStr := '';

          versionOrderNum := Edit1.Text;
          partnerNum := Edit2.Text;
          deliveryDate := cxDateEdit2.Date;
          titleName := Edit4.Text;
          titleCount := Edit17.Text;
          titleMemo := Memo1.Text;
          allMemo := Memo2.Text;
          packaging := RichEdit1.Text;

          //获取产品制作需求
          for I := 0 to cxGrid1DBTableView1.DataController.RowCount - 1 do
          begin
               titleOne := vartostr(cxGrid1DBTableView1.DataController.Values[i,1]);
               titleTwo := vartostr(cxGrid1DBTableView1.DataController.Values[i,2]);
               titleThree := vartostr(cxGrid1DBTableView1.DataController.Values[i,3]);
               titleFour := vartostr(cxGrid1DBTableView1.DataController.Values[i,4]);

               if (titleOne <> '') or (titleTwo <> '') or (titleThree <> '') or (titleFour <> '')then
               begin
                   titleOneStr := titleOneStr + titleOne + '|';
                   titleTwoStr := titleTwoStr + titleTwo + '|';
                   titleThreeStr := titleThreeStr + titleThree + '|';
                   titleFourStr := titleFourStr + titleFour + '|';
               end;
           end;

           //获取产品制作材料
           for I := 0 to cxGridDBTableView1.DataController.RowCount - 1 do
           begin
               name := vartostr(cxGridDBTableView1.DataController.Values[i,1]);
               material := vartostr(cxGridDBTableView1.DataController.Values[i,2]);
               own := vartostr(cxGridDBTableView1.DataController.Values[i,3]);

               if (name <> '') or (material <> '') or (own <> '')then
               begin
                   nameStr := nameStr + name + '|';
                   materialStr := materialStr + material + '|';
                   if own = '' then
                      own := 'Y';
                   ownStr := ownStr + own + '|';
               end;
           end;
           initPic('1',Edit5.Text,Edit6.Text,pic1);
           initPic('2',Edit7.Text,Edit8.Text,pic2);
           initPic('3',Edit9.Text,Edit10.Text,pic3);
           initPic('4',Edit11.Text,Edit12.Text,pic4);
           initPic('5',Memo3.Text,Memo4.Text,pic5);



           with duPub.adoquery1 do
            begin
                  close;
                  sql.Clear;
                  parameters.Clear;
                  sql.Add('exec addVersion :@versionOrderNum,:@partnerNum,:@deliveryDate,:@recordUser,'
                          + ':@auditUser,:@titleName,:@titleCount,:@titleMemo,:@memo,:@packaging,'
                          + ':@titleOneStr,:@titleTwoStr,:@titleThreeStr,:@titleFourStr,:@picPartStr,'
                          + ':@picTitleStr,:@picBodyStr,:@picStr,:@nameStr,'
                          + ':@materialStr,:@ownStr,:@successResult output'
                          );//这就是调用存储过程
                  parameters.Items[0].Value := versionOrderNum;
                  parameters.Items[1].Value := partnerNum;
                  parameters.Items[2].Value := deliveryDate;
                  parameters.Items[3].Value := recordUser;
                  parameters.Items[4].Value := auditUser;
                  parameters.Items[5].Value := titleName;
                  parameters.Items[6].Value := titleCount;
                  parameters.Items[7].Value := titleMemo;
                  parameters.Items[8].Value := allmemo;
                  parameters.Items[9].Value := packaging;
                  parameters.Items[10].Value := titleOneStr;
                  parameters.Items[11].Value := titleTwoStr;
                  parameters.Items[12].Value := titleThreeStr;
                  parameters.Items[13].Value := titleFourStr;
                  parameters.Items[14].Value := picPartStr;
                  parameters.Items[15].Value := picTitleStr;
                  parameters.Items[16].Value := picBodyStr;
                  parameters.Items[17].Value := picStr;
                  parameters.Items[18].Value := nameStr;
                  parameters.Items[19].Value := materialStr;
                  parameters.Items[20].Value := ownStr;
                  execsql;
                  successResult := parameters.Items[21].Value;

             end;

             if successResult = 'success' then
            begin
                self.Close;
                duPub.tbl_pu_versionOrder.ApplyUpdates(true,true);
            end
            else
            begin
                 showmessage('操作失败');
            end;
     end else if intoType = 2 then
     begin
       self.Close;
     end;
end;

procedure TfPR_VersionOrderAdd.Button2Click(Sender: TObject);
begin
     self.Close;
end;

procedure TfPR_VersionOrderAdd.Button3Click(Sender: TObject);
//var
//bmp : TBitmap;
//ss : TStringStream;
begin
//     if OpenPictureDialog1.Execute then
//     begin
//        bmp := TBitmap.Create;
//        bmp.LoadFromFile(OpenPictureDialog1.FileName);
//        ss := TStringStream.Create(BitmapToRTF(bmp));
//        RichEdit1.PlainText := false;
//        RichEdit1.streamMode := [smSelection];
//        RichEdit1.Lines.LoadFromFile(ss);
//        ss.Free;
//     end;
end;

procedure TfPR_VersionOrderAdd.Button4Click(Sender: TObject);
begin
     RichEdit1.Lines.Text := '';
     RichEdit1.SetFocus;
end;

procedure TfPR_VersionOrderAdd.cxDBNavigator2ButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
    case  AButtonindex of
        NBDI_APPEND:
         begin
             duPub.tbl_pu_versionOrderMaterial.Append;
             duPub.tbl_pu_versionOrderMaterial.FieldByName('isOwn').AsString := 'Y';
         end;
         NBDI_DELETE:
         begin

         end;
    end;


end;

procedure TfPR_VersionOrderAdd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    duPub.delNum(Edit1.Text);
    duPub.tbl_pu_versionOrder.close;
   duPub.tbl_pu_versionOrder.open;
end;

procedure TfPR_VersionOrderAdd.FormCreate(Sender: TObject);
var
dataList : TStringList;
begin
       if intoType = 1 then
       begin
           dataList := TStringList.Create;
           dupub.setSelectData(dataList,'versionOrderNum','0',dboEqual);
           duPub.getSelectData(duPub.tbl_pu_versionOrderTitle,dataList,'pu_versionOrderTitle',dboAnd);
           duPub.getSelectData(duPub.tbl_pu_versionOrderMaterial,dataList,'pu_versionOrderMaterial',dboAnd);
           duPub.showInsertNum('puVersionGetNum','SHBD',Edit1);
           pic1 := '';
           pic2 := '';
           pic3 := '';
           pic4 := '';
           pic5 := '';
       end else  if intoType = 2 then
       begin
           loadData();
           Button2.Visible := false;
           cxDBNavigator2.Visible := false;
           cxDBNavigator1.Visible := false;
       end;

end;

procedure TfPR_VersionOrderAdd.Image1DblClick(Sender: TObject);
begin
     openPic(Image1);
     pic4 := OpenPictureDialog1.FileName;
end;

procedure TfPR_VersionOrderAdd.Image2DblClick(Sender: TObject);

begin
//     self.OpenPictureDialog1.Execute;
     openPic(Image2);
     pic1 := OpenPictureDialog1.FileName;
end;



procedure TfPR_VersionOrderAdd.Image3DblClick(Sender: TObject);
begin
    openPic(Image3);
    pic3 := OpenPictureDialog1.FileName;
end;

procedure TfPR_VersionOrderAdd.Image4DblClick(Sender: TObject);
begin
    openPic(Image4);
    pic2 := OpenPictureDialog1.FileName;
end;

procedure TfPR_VersionOrderAdd.Image5DblClick(Sender: TObject);
begin
    openPic(Image5);
    pic5 := OpenPictureDialog1.FileName;
end;

end.
