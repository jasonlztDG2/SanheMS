program sanhe;

uses
  uROComInit,
  Forms,
  fClientForm in 'fClientForm.pas' {ClientForm},
  fLogOnForm in 'fLogOnForm.pas' {LoginForm},
  duPubP in 'duPubP.pas' {duPub: TDAClientDataModule},
  sanhe_Intf in 'sanhe_Intf.pas',
  sanhe_ServerAccess in 'sanhe_ServerAccess.pas' {ServerAccess_sanhe: TDataModule},
  fLoginP in 'fLoginP.pas' {fLogin},
  Fbase1P in 'Fbase1P.pas' {fbase1},
  fPartnerP in 'productManager\fPartnerP.pas' {fPartner},
  fMainP in 'fMainP.pas' {fMain},
  fPartnerDetailP in 'productManager\fPartnerDetailP.pas' {fPartnerDetail},
  fPartnerAddP in 'productManager\fPartnerAddP.pas' {fPartnerAdd},
  fPartnerEditP in 'productManager\fPartnerEditP.pas' {fPartnerEdit},
  fBA_SetKindP in 'baseManager\fBA_SetKindP.pas' {fBA_SetKind},
  fBA_CompanyP in 'baseManager\fBA_CompanyP.pas' {fBA_Company},
  fBA_LocationP in 'baseManager\fBA_LocationP.pas' {fBA_Location},
  fPR_ProductInfoP in 'productManager\fPR_ProductInfoP.pas' {fPR_ProductInfo},
  fPR_ProductAddP in 'productManager\fPR_ProductAddP.pas' {fPR_ProductAdd},
  fPR_ProductEditP in 'productManager\fPR_ProductEditP.pas' {fPR_ProductEdit},
  fPR_ProductDetailP in 'productManager\fPR_ProductDetailP.pas' {fPR_ProductDetail},
  fPU_OrderP in 'purchaseManager\fPU_OrderP.pas' {fPU_Order},
  fPU_OrderAddP in 'purchaseManager\fPU_OrderAddP.pas' {fPU_OrderAdd},
  fProductListP in 'fProductListP.pas' {fProductList},
  fBA_UserP in 'baseManager\fBA_UserP.pas' {fBA_User},
  fBA_UserAddP in 'baseManager\fBA_UserAddP.pas' {fBA_UserAdd},
  fPU_OrderDetailP in 'purchaseManager\fPU_OrderDetailP.pas' {fPU_OrderDetail},
  fPU_OrderEditP in 'purchaseManager\fPU_OrderEditP.pas' {fPU_OrderEdit},
  fSY_UserManagerP in 'systemManager\fSY_UserManagerP.pas' {fSY_UserManager},
  fPU_OrderInP in 'purchaseManager\fPU_OrderInP.pas' {fPU_OrderIn},
  fPU_OrderInAddP in 'purchaseManager\fPU_OrderInAddP.pas' {fPU_OrderInAdd},
  fPU_OrderInListP in 'purchaseManager\fPU_OrderInListP.pas' {fPU_OrderInList},
  fPU_OrderInDetailP in 'purchaseManager\fPU_OrderInDetailP.pas' {fPU_OrderInDetail},
  fPU_OrderPayP in 'purchaseManager\fPU_OrderPayP.pas' {fPU_OrderPay},
  fPU_OrderPayAddP in 'purchaseManager\fPU_OrderPayAddP.pas' {fPU_OrderPayAdd},
  fPU_OrderPayListP in 'purchaseManager\fPU_OrderPayListP.pas' {fPU_OrderPayList},
  fPU_OrderPayDetailP in 'purchaseManager\fPU_OrderPayDetailP.pas' {fPU_OrderPayDetail},
  fST_StoageProductP in 'stoageManager\fST_StoageProductP.pas' {fST_StoageProduct},
  fPU_OrderBackP in 'purchaseManager\fPU_OrderBackP.pas' {fPU_OrderBack},
  fPU_OrderBackDetailP in 'purchaseManager\fPU_OrderBackDetailP.pas' {fPU_OrderBackDetail},
  FSY_UserManager_UserP in 'systemManager\FSY_UserManager_UserP.pas' {FSY_UserManager_User},
  fST_StoageCheckP in 'stoageManager\fST_StoageCheckP.pas' {fST_StoageCheck},
  fST_StoageProductDetailP in 'stoageManager\fST_StoageProductDetailP.pas' {fST_StoageProductDetail},
  fST_StoageCheckDetailP in 'stoageManager\fST_StoageCheckDetailP.pas' {fST_StoageCheckDetail},
  fSE_OrderP in 'saleManager\fSE_OrderP.pas' {fSE_Order},
  fSE_OrderAddP in 'saleManager\fSE_OrderAddP.pas' {fSE_OrderAdd},
  fSE_ProductListP in 'saleManager\fSE_ProductListP.pas' {fSE_ProductList},
  fSE_OrderAddDetailP in 'saleManager\fSE_OrderAddDetailP.pas' {fSE_OrderAddDetail},
  fSE_OrderAddEditP in 'saleManager\fSE_OrderAddEditP.pas' {fSE_OrderAddEdit},
  fPR_PlanP in 'productionPlanManager\fPR_PlanP.pas' {fPR_Plan},
  fPR_PlanAddP in 'productionPlanManager\fPR_PlanAddP.pas' {fPR_PlanAdd},
  FPR_PlanListP in 'productionPlanManager\FPR_PlanListP.pas' {FPR_PlanList},
  fST_StorageStatementP in 'stoageManager\fST_StorageStatementP.pas' {fST_StorageStatement},
  fST_StorageStatementDetailP in 'stoageManager\fST_StorageStatementDetailP.pas' {fST_StorageStatementDetail},
  fPR_ProductStructureP in 'productionPlanManager\fPR_ProductStructureP.pas' {fPR_ProductStructure},
  fST_StoageInP in 'stoageManager\fST_StoageInP.pas' {fST_StoageIn},
  fST_StoageInDetailP in 'stoageManager\fST_StoageInDetailP.pas' {fST_StoageInDetail},
  fST_StoageOutP in 'stoageManager\fST_StoageOutP.pas' {fST_StoageOut},
  fST_StoageOutDetailP in 'stoageManager\fST_StoageOutDetailP.pas' {fST_StoageOutDetail},
  fPR_ProductStructureAddP in 'productionPlanManager\fPR_ProductStructureAddP.pas' {fPR_ProductStructureAdd},
  fPR_ProductListP in 'productionPlanManager\fPR_ProductListP.pas' {fPR_ProductList},
  fPR_ProductStructureDetailP in 'productionPlanManager\fPR_ProductStructureDetailP.pas' {fPR_ProductStructureDetail},
  fPR_ProductStructureListP in 'productionPlanManager\fPR_ProductStructureListP.pas' {fPR_ProductStructureList},
  fSE_OrderAddListP in 'saleManager\fSE_OrderAddListP.pas' {fSE_OrderAddList};

{$R *.res}

begin

Application.Initialize;
Application.CreateForm(TduPub, duPub);
  {$IFDEF ShowLogin}               //{$
fLogin:=TFlogin.Create(nil);
if Flogin.ShowModal=mrOK  then
begin
Application.CreateForm(TfMain, fMain);
  fmain.Show;
  application.Run;
end
else
begin
dupub.Free;
application.Terminate;
end;
{$ELSE}
application.CreateForm(Tfmain,fMain);
fmain.Show;
application.Run;
{$ENDIF}

end.