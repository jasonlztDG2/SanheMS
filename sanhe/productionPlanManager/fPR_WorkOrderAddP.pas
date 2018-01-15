unit fPR_WorkOrderAddP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,uDAWhere,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData,ShellAPI,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,uDADataTable,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, FileCtrl,
  cxGridDBTableView, cxGrid, cxDBNavigator, cxMemo, dxGDIPlusClasses,
  Vcl.ExtDlgs, cxDBEdit, uRODynamicRequest, uDAFields, uDADelta, uROComponent,
  uDAScriptingProvider, uDAMemDataTable;

type
  TfPR_WorkOrderAdd = class(TForm)
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    cxDateEdit2: TcxDateEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    Panel4: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
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
    TabSheet2: TTabSheet;
    Panel10: TPanel;
    Panel6: TPanel;
    Image3: TImage;
    Image1: TImage;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Panel12: TPanel;
    Image4: TImage;
    Image2: TImage;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Panel7: TPanel;
    Panel13: TPanel;
    Memo3: TMemo;
    Panel15: TPanel;
    Image5: TImage;
    Memo4: TMemo;
    TabSheet3: TTabSheet;
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
    Button3: TButton;
    Button4: TButton;
    TabSheet4: TTabSheet;
    Panel11: TPanel;
    Memo2: TMemo;
    Label6: TLabel;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Button5: TButton;
    Label7: TLabel;
    TabSheet5: TTabSheet;
    Panel18: TPanel;
    Panel19: TPanel;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    tbl_st_product: TDAMemDataTable;
    ds_st_product: TDADataSource;
    cxGridDBTableView3RecID: TcxGridDBColumn;
    cxGridDBTableView3productName: TcxGridDBColumn;
    cxGridDBTableView3price: TcxGridDBColumn;
    cxGridDBTableView3style: TcxGridDBColumn;
    cxGridDBTableView3spec: TcxGridDBColumn;
    cxGridDBTableView3color: TcxGridDBColumn;
    cxGridDBTableView3unit: TcxGridDBColumn;
    cxGridDBTableView3productType: TcxGridDBColumn;
    Edit2: TEdit;
    Label8: TLabel;
    Button6: TButton;
    Label10: TLabel;
    Edit13: TEdit;
    Button7: TButton;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1RecID: TcxGridDBColumn;
    cxGrid3DBTableView1needQty: TcxGridDBColumn;
    cxGrid3DBTableView1isOwn: TcxGridDBColumn;
    cxGrid3DBTableView1productName: TcxGridDBColumn;
    cxGrid3DBTableView1price: TcxGridDBColumn;
    cxGrid3DBTableView1color: TcxGridDBColumn;
    tbl_pu_versionOrder: TDAMemDataTable;
    ds_pu_versionOrder: TDADataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Image2DblClick(Sender: TObject);
    procedure Image4DblClick(Sender: TObject);
    procedure Image3DblClick(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure Image5DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxGridDBTableView3CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
    procedure getData(str : String; showType : Integer);
    procedure loadData(versionOrderNum : String);
    procedure loadPic(part : String;title: String;body: String;pic : String);
    procedure initPic(part : String;title: String;body: String;pic : String);
    procedure clearData();
    procedure openPic(Image: TImage);
  public
    { Public declarations }

  end;

var
  fPR_WorkOrderAdd: TfPR_WorkOrderAdd;

implementation

{$R *.dfm}
uses
browserfolderu,
duPubP;

var
selectType : Integer;
pic1 : String;
pic2 : String;
pic3 : String;
pic4 : String;
pic5 : String;
picPartStr : String;
picTitleStr : String;
picBodyStr : String;
picStr : String;


procedure TfPR_WorkOrderAdd.getData(str : String; showType : Integer);
var
dataList : TStringList;
begin
     dataList := TStringList.Create;
     if showType = 1 then
          dupub.setSelectData(dataList,'versionOrderNum','%'+str+'%',dboLike);

     duPub.getSelectData(self.tbl_pu_versionOrder,dataList,'pu_versionOrder',dboAnd);
//     ComboBox1.Clear;
     ComboBox1.items.Text := '';
     ComboBox1.SelStart:=Length(ComboBox1.Text);
     if self.tbl_pu_versionOrder.RecordCount > 0 then
     begin
          while not self.tbl_pu_versionOrder.eof do
           begin
                ComboBox1.Items.Add(self.tbl_pu_versionOrder.fieldByName('versionOrderNum').AsString);
                self.tbl_pu_versionOrder.Next;
           end;
     end;
end;



procedure TfPR_WorkOrderAdd.loadData(versionOrderNum : String);
var
dataList : TStringList;
begin
     dataList := TStringList.Create;
   dupub.setSelectData(dataList,'versionOrderNum',versionOrderNum,dboEqual);
   duPub.getSelectData(self.tbl_pu_versionOrder,dataList,'pu_versionOrder',dboAnd);
   duPub.getSelectData(duPub.tbl_pu_versionOrderTitle,dataList,'pu_versionOrderTitle',dboAnd);
   duPub.getSelectData(duPub.tbl_pu_versionOrderMaterial,dataList,'pu_versionOrderMaterial',dboAnd);
   duPub.getSelectData(duPub.tbl_pu_versionOrderPic,dataList,'pu_versionOrderPic',dboAnd);


   if self.tbl_pu_versionOrder.RecordCount < 1 then
   begin
     clearData();
     exit;
   end;
//   Edit1.Text := cxDBTextEdit1.Text;
   Edit3.Text := self.tbl_pu_versionOrder.FieldByName('partnerNum').AsString;
   cxDateEdit2.Text := self.tbl_pu_versionOrder.FieldByName('deliveryDate').AsString;
   Edit4.Text := self.tbl_pu_versionOrder.FieldByName('titleName').AsString;
   Edit17.Text := self.tbl_pu_versionOrder.FieldByName('titleCount').AsString;
   Memo1.Text := self.tbl_pu_versionOrder.FieldByName('titleMemo').AsString;
   Memo2.Text := self.tbl_pu_versionOrder.FieldByName('memo').AsString;
   RichEdit1.Text := self.tbl_pu_versionOrder.FieldByName('packaging').AsString;

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

procedure TfPR_WorkOrderAdd.loadPic(part : String;title: String;body: String;pic : String);
begin
    if part = '1' then
    begin
        Edit5.Text := title;
        Edit6.Text := body;
        if pic <> '' then
        begin
            pic1 := pic;
            Image2.Picture.LoadFromFile(pic);
        end;

    end else if part = '2' then
    begin
         Edit7.Text := title;
        Edit8.Text := body;
        if pic <> '' then
        begin
            pic2 := pic;
            Image4.Picture.LoadFromFile(pic);
        end;

    end else if part = '3' then
    begin
        Edit9.Text := title;
        Edit10.Text := body;
        if pic <> '' then
        begin
            pic3 := pic;
            Image3.Picture.LoadFromFile(pic);
        end;

    end else if part = '4' then
    begin
         Edit11.Text := title;
        Edit12.Text := body;
        if pic <> '' then
        begin
            pic4 := pic;
            Image1.Picture.LoadFromFile(pic);
        end;

    end else if part = '5' then
    begin
        Memo3.Text := title;
        Memo4.Text := body;
        if pic <> '' then
        begin
            pic5 := pic;
            Image5.Picture.LoadFromFile(pic);
        end;

    end;

end;

procedure TfPR_WorkOrderAdd.initPic(part : String;title: String;body: String;pic : String);
begin
    if (title.Trim <> '') or (body.Trim <> '') or (pic.Trim <> '')then
     begin
         picPartStr := picPartStr + part + '|';
         picTitleStr := picTitleStr + title + '|';
         picBodyStr := picBodyStr + body + '|';
         picStr := picStr + pic + '|';
     end;
end;

procedure TfPR_WorkOrderAdd.clearData();
begin
//     Edit1.Text := '';
     Edit3.Text := '';
     cxDateEdit2.Text := '';
     Edit4.Text := '';
     Edit17.Text := '';
     Memo1.Text := '';
     Memo2.Text := '';
     RichEdit1.Text := '';
     Edit5.Text := '';
    Edit6.Text := '';
    Edit7.Text := '';
    Edit8.Text := '';
    Edit9.Text := '';
    Edit10.Text := '';
    Edit11.Text := '';
    Edit12.Text := '';
    Memo3.Text := '';
    Memo4.Text := '';
    Image1.Picture := nil;
    Image2.Picture := nil;
    Image3.Picture := nil;
    Image4.Picture := nil;
    Image5.Picture := nil;
end;

procedure TfPR_WorkOrderAdd.openPic(Image: TImage);
begin
   if OpenPictureDialog1.Execute then
   begin
     Image.Picture.LoadFromFile(OpenPictureDialog1.FileName);
   end;
end;


procedure TfPR_WorkOrderAdd.Button1Click(Sender: TObject);
var
workNum : String;
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

productIdStr : String;
needQtyStr : String;
isOwnStr : String;
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

      productIdStr := '';
      needQtyStr := '';
      isOwnStr := '';

      workNum := Edit1.Text;
      partnerNum := Edit3.Text;
      versionOrderNum := combobox1.Text;
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

//       for I := 0 to cxGrid3DBTableView1.DataController.RowCount - 1 do
//       begin
//           productIdStr := productIdStr + vartostr(cxGrid3DBTableView1.DataController.Values[i,1]) + '|';
//           needQtyStr := needQtyStr + vartostr(cxGrid3DBTableView1.DataController.Values[i,4]) + '|';
//           isOwnStr := isOwnStr + vartostr(cxGrid3DBTableView1.DataController.Values[i,5]) + '|';
//       end;
       duPub.tbl_pu_workMaterial.First;
       while not duPub.tbl_pu_workMaterial.Eof do
       begin
            productIdStr := productIdStr + duPub.tbl_pu_workMaterial.FieldByName('productId').AsString + '|';
           needQtyStr := needQtyStr + duPub.tbl_pu_workMaterial.FieldByName('needQty').AsString + '|';
           isOwnStr := isOwnStr + duPub.tbl_pu_workMaterial.FieldByName('isOwn').AsString + '|';
           duPub.tbl_pu_workMaterial.Next;
       end;
       showmessage(productIdStr + '---' + needQtyStr + '---' + isOwnStr);

       with duPub.adoquery1 do
        begin
              close;
              sql.Clear;
              parameters.Clear;
              sql.Add('exec addWorkOrder :@versionOrderNum,:@partnerNum,:@deliveryDate,:@recordUser,'
                      + ':@auditUser,:@titleName,:@titleCount,:@titleMemo,:@memo,:@packaging,'
                      + ':@titleOneStr,:@titleTwoStr,:@titleThreeStr,:@titleFourStr,:@picPartStr,'
                      + ':@picTitleStr,:@picBodyStr,:@picStr,:@nameStr,'
                      + ':@materialStr,:@ownStr,:@workNum,:@productIdStr,:@needQtyStr,'
                      + ':@isOwnStr,:@successResult output'
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
              parameters.Items[21].Value := workNum;
              parameters.Items[22].Value := productIdStr;
              parameters.Items[23].Value := needQtyStr;
              parameters.Items[24].Value := isOwnStr;
              execsql;
              successResult := parameters.Items[25].Value;

         end;

         if successResult = 'success' then
        begin
            self.Close;
            duPub.tbl_pu_workDetailList.ApplyUpdates(true,true);
        end
        else
        begin
             showmessage('操作失败');
        end;

   self.Close;

end;

procedure TfPR_WorkOrderAdd.Button2Click(Sender: TObject);
begin
    self.Close;
end;

procedure TfPR_WorkOrderAdd.Button5Click(Sender: TObject);
var
versionOrderNum : String;
begin
     versionOrderNum := ComboBox1.Text;
     loadData(versionOrderNum);
end;

procedure TfPR_WorkOrderAdd.Button6Click(Sender: TObject);
var
productName : String;
dataList : TStringList;
begin
     productName := Edit2.Text;
     dataList := TStringList.Create;
     dupub.setSelectData(dataList,'productName','%'+productName+'%',dboLike);
     duPub.getSelectData(self.tbl_st_product,dataList,'st_product',dboAnd);
end;

procedure TfPR_WorkOrderAdd.Button7Click(Sender: TObject);
var
I : Integer;
qty : float;
price : float;
isOwn : String;
count : float;
begin
      count := 0;
   for I := 0 to cxGrid3DBTableView1.DataController.RowCount - 1 do
       begin
           price := strToFloat(vartostr(cxGrid3DBTableView1.DataController.Values[i,3]));
           qty := strToFloat(vartostr(cxGrid3DBTableView1.DataController.Values[i,4]));
           isOwn := vartostr(cxGrid3DBTableView1.DataController.Values[i,5]);
           if isOwn = 'Y' then
           begin
                count := count + price * qty;
           end;
       end;

       Edit13.Text := floatToStr(count);
end;

procedure TfPR_WorkOrderAdd.ComboBox1Change(Sender: TObject);
var
versionOrderNum : String;
begin
     versionOrderNum := ComboBox1.Text;
     if selectType = 0 then
        getData(versionOrderNum,1)
     else
        selectType := 0;
end;

procedure TfPR_WorkOrderAdd.ComboBox1CloseUp(Sender: TObject);
begin
     selectType := 0;
end;

procedure TfPR_WorkOrderAdd.ComboBox1Select(Sender: TObject);
begin
     selectType := 1;
end;

procedure TfPR_WorkOrderAdd.cxGridDBTableView3CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  var
  Row : Integer;
  name : String;
  color : String;
  price : string;
  productId : Integer;
begin
    Row := cxGridDBTableView3.DataController.FocusedRecordIndex;
    name := cxGridDBTableView3.DataController.Values[Row,1];
     color := cxGridDBTableView3.DataController.Values[Row,2];
     price := cxGridDBTableView3.DataController.Values[Row,3];
     productId := self.tbl_st_product.FieldByName('productId').AsInteger;
     duPub.tbl_pu_workMaterial.Append;
      duPub.tbl_pu_workMaterial.FieldByName('workNum').AsString := 'workNum';
      duPub.tbl_pu_workMaterial.FieldByName('productId').AsInteger := productId;
      duPub.tbl_pu_workMaterial.FieldByName('productName').AsString := name;
      duPub.tbl_pu_workMaterial.FieldByName('color').AsString := color;
      duPub.tbl_pu_workMaterial.FieldByName('needQty').AsString := '1';
      duPub.tbl_pu_workMaterial.FieldByName('price').AsString := price;
      duPub.tbl_pu_workMaterial.FieldByName('isOwn').AsString := 'Y';
end;

procedure TfPR_WorkOrderAdd.Image1DblClick(Sender: TObject);
begin
    openPic(Image1);
    pic4 := OpenPictureDialog1.FileName;
end;

procedure TfPR_WorkOrderAdd.Image2DblClick(Sender: TObject);
begin
    openPic(Image2);
    pic1 := OpenPictureDialog1.FileName;
end;

procedure TfPR_WorkOrderAdd.Image3DblClick(Sender: TObject);
begin
    openPic(Image3);
     pic3 := OpenPictureDialog1.FileName;
end;

procedure TfPR_WorkOrderAdd.Image4DblClick(Sender: TObject);
begin
    openPic(Image4);
    pic2 := OpenPictureDialog1.FileName;
end;

procedure TfPR_WorkOrderAdd.Image5DblClick(Sender: TObject);
begin
     openPic(Image5);
     pic5 := OpenPictureDialog1.FileName;
end;

procedure TfPR_WorkOrderAdd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//   duPub.delNum(Edit1.Text);
duPub.tbl_pu_versionOrderTitle.Close;
duPub.tbl_pu_versionOrderMaterial.Close;
end;

procedure TfPR_WorkOrderAdd.FormCreate(Sender: TObject);
var
dataList : TStringList;
begin
     dataList := TStringList.Create;
   dupub.setSelectData(dataList,'workNum','',dboEqual);
   duPub.getSelectData(duPub.tbl_pu_workMaterial,dataList,'pu_workMaterial',dboAnd);
//     duPub.tbl_pu_workDetailTitle.Close;
//     duPub.tbl_pu_workDetailTitle.open;
//     duPub.tbl_pu_workDetailMaterial.Close;
//     duPub.tbl_pu_workDetailMaterial.open;
//     duPUb.showInsertNum('puWorkGetNum','SHNG',Edit1);
//        duPub.getProduct(ComboBox1,'材料');
         getData('',0);
selectType:=0;
end;

end.
