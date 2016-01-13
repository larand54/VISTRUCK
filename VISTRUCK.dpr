program VISTRUCK;


uses
(*

      madExcept,
        madLinkDisAsm,
        madListHardware,
        madListProcesses,
        madListModules,

*)
  Forms,
  fMain in 'fMain.pas' {frmMain},
  VidaConst in 'VidaConst.pas',
  dmsDataConn in 'dmsDataConn.pas' {v: TDataModule},
  uEncode in 'uEncode.pas',
  VidaUtils in 'VidaUtils.pas',
  dmsVidaSystem in 'dmsVidaSystem.pas' {dmsSystem: TDataModule},
  dmcVidaSystem in 'dmcVidaSystem.pas' {dmcSystem: TDataModule},
  VidaType in 'VidaType.pas',
  fDBForm in 'fDBForm.pas' {frmDBForm},
  dmsVidaContact in 'dmsVidaContact.pas' {dmsContact: TDataModule},
  UnitdmModule1 in 'UnitdmModule1.pas' {dmModule1: TDataModule},
  UnitCRViewReport in 'UnitCRViewReport.pas' {FormCRViewReport},
  UnitBookingForm in 'UnitBookingForm.pas' {FormBookingForm},
  dmBooking in 'dmBooking.pas' {dm_Booking: TDataModule},
  UnitCarrier in 'UnitCarrier.pas' {FormCarrier},
  dmcAvrakning in 'dmcAvrakning.pas' {dm_Avrakning: TDataModule},
  dlgPickPkg in 'dlgPickPkg.pas' {frmPackagePicker},
  UnitPackageEntry in 'UnitPackageEntry.pas' {frmPackageEntry},
  dmsVidaProduct in 'dmsVidaProduct.pas' {dmsProduct: TDataModule},
  UnitPkgNoSeries in 'UnitPkgNoSeries.pas' {frmPkgNoSeries},
  dmcVidaOrder in 'dmcVidaOrder.pas' {dmcOrder: TDataModule},
  fLoadOrder in 'fLoadOrder.pas' {frmVisTruckLoadOrder},
  UnitLoadEntrySSP in 'UnitLoadEntrySSP.pas' {fLoadEntrySSP},
  dmcLoadEntrySSP in 'dmcLoadEntrySSP.pas' {dmLoadEntrySSP: TDataModule},
  UnitLoadArrivals in 'UnitLoadArrivals.pas' {frmLoadArrivals},
  dmc_ArrivingLoads in 'dmc_ArrivingLoads.pas' {dmArrivingLoads: TDataModule},
  UnitPkgInfo in 'UnitPkgInfo.pas' {frmPkgInfo},
  UnitPkgNo in 'UnitPkgNo.pas' {frmPkgNo},
  uUserPreference in 'uUserPreference.pas' {fUserPreference},
  UnitCRPrintReport in 'UnitCRPrintReport.pas' {FormCRPrintReport},
  dlgPickPkg_II in 'dlgPickPkg_II.pas' {frmPackagePicker_II},
  uEntryField in 'uEntryField.pas' {fEntryField},
  uPickPkgNo in 'uPickPkgNo.pas' {fPickPkgNo},
  uScanLoadPkgNo in 'uScanLoadPkgNo.pas' {fScanLoadPkgNo},
  Recerror in 'Recerror.pas' {ReconcileErrorForm},
  uConfirmCodeDialog in 'uConfirmCodeDialog.pas' {frmConfirmCodeDialog},
  uSelectLIP in 'uSelectLIP.pas' {fSelectLIP},
  uAnkomstRegProgress in 'uAnkomstRegProgress.pas' {fAnkomstRegProgress},
  uSelectLoadPlanDest in 'uSelectLoadPlanDest.pas' {fSelectLoadPlanDest},
  UnitCRPrintOneReport in 'UnitCRPrintOneReport.pas' {FormCRPrintOneReport},
  UnitCRExportOneReport in 'UnitCRExportOneReport.pas' {FormCRExportOneReport},
  uSendMapiMail in 'uSendMapiMail.pas' {dm_SendMapiMail: TDataModule},
  uAddSpecialLengths in 'uAddSpecialLengths.pas' {fAddSpecialLengths},
  dmc_UserProps in 'dmc_UserProps.pas' {dm_UserProps: TDataModule},
  uWait in 'uWait.pas' {fWait},
  UPortArrivals in 'UPortArrivals.pas' {frmPortArrivals},
  uChangeLogins in 'uChangeLogins.pas' {OKHelpBottomDlg},
  uShowMemo in 'uShowMemo.pas' {fShowMemo},
  uLOLengths in 'uLOLengths.pas' {fLOLengths},
  uLoadOrderListSetup in 'uLoadOrderListSetup.pas' {fLoadOrderListSetup},
  uTradingLinkMult in 'uTradingLinkMult.pas' {fTradingLinkMult},
  dmcVidaLO in 'dmcVidaLO.pas' {dmcLO: TDataModule},
  uLoadOrderSearch in 'uLoadOrderSearch.pas' {fLoadOrderSearch},
  uSelectBTHorBTB in 'uSelectBTHorBTB.pas' {fSelectBTHorBTB},
  fBaseFormA in 'fBaseFormA.pas' {frmBaseFormA},
  uBaseListForm in 'uBaseListForm.pas' {fBaseListForm},
  uPickVPPkgs in 'uPickVPPkgs.pas' {fPickVPPkgs},
  uEntryPriceField in 'uEntryPriceField.pas' {fEntryPriceField},
  uLager in 'uLager.pas' {fLager},
  dm_Inventory in 'dm_Inventory.pas' {dmInventory: TDataModule},
  ULastLista in 'ULastLista.pas' {fLastLista},
  uconfirm in 'uconfirm.pas' {fConfirm},
  uSelectPrintDevice in 'uSelectPrintDevice.pas' {fSelectPrintDevice},
  uSetStdPkgSizeIntervall in 'uSetStdPkgSizeIntervall.pas' {fSetStdPkgSizeIntervall},
  uEnterLoadWeight in 'uEnterLoadWeight.pas' {fEnterLoadWeight},
  uchgPkgVard in 'uchgPkgVard.pas' {fchgPkgVard},
  dmcPkgs in 'dmcPkgs.pas' {dmPkgs: TDataModule},
  UnitGetProd_II in 'UnitGetProd_II.pas' {frmGetProd_II},
  uSelectLORowInLoad in 'uSelectLORowInLoad.pas' {fSelectLORowInLoad},
  uPackageSize in 'uPackageSize.pas' {fPackageSize},
  uCert in 'uCert.pas' {fCert},
  uLagerPos in 'uLagerPos.pas' {fLagerPos},
  dmc_DryKiln in 'dmc_DryKiln.pas' {dm_DryKiln: TDataModule},
  uKilnHandling in 'uKilnHandling.pas' {fkilnHandling},
  uEnterKilnVagn in 'uEnterKilnVagn.pas' {fEnterKilnVagn},
  uPickPkgNoTork in 'uPickPkgNoTork.pas' {fPickPkgNoTork},
  udmLanguage in 'udmLanguage.pas' {dmLanguage: TDataModule},
  ufrmChangeLanguage in 'ufrmChangeLanguage.pas' {frmChangeLanguage},
  UnitStylesOKCANCL in 'UnitStylesOKCANCL.pas' {OKRightDlg},
  UnitExceptionPkgNrList in 'UnitExceptionPkgNrList.pas' {PkgNrExceptionList},
  UnitPosition in 'UnitPosition.pas' {Position},
  URegionToRegionSelectLIPNo in 'URegionToRegionSelectLIPNo.pas' {fRegionToRegionSelectLIPNo},
  dm_SortOrder in 'Visab\dm_SortOrder.pas' {dmsSortOrder: TDataModule},
  dm_SortOrderList in 'Visab\dm_SortOrderList.pas' {dmSotOrderList: TDataModule},
  dmsPkgWorkOrder in 'Visab\dmsPkgWorkOrder.pas' {dm_PkgWorkOrder: TDataModule},
  fSortOrder in 'Visab\fSortOrder.pas' {frmSortOrder},
  dmsProdPlan in 'Visab\dmsProdPlan.pas' {dm_ProdPlan: TDataModule},
  WorkMinutesU in 'Visab\WorkMinutesU.pas',
  uEnterLengthData in 'Visab\uEnterLengthData.pas' {fEnterLengthData},
  uProdTimeSegment in 'Visab\uProdTimeSegment.pas' {fProdTimeSegment},
  uSearchPkgToDeReg in 'Visab\uSearchPkgToDeReg.pas' {fSearchPkgToDeReg},
  uPkgInfo in 'Visab\uPkgInfo.pas' {fPkgInfo},
  uProductUtfall in 'Visab\uProductUtfall.pas' {fProductUtfall},
  uSinglePkgEntry in 'Visab\uSinglePkgEntry.pas' {fSinglePkgEntry},
  uOKDia in 'uOKDia.pas' {fOKDia},
  dms_Vis_Vida in 'Visab\dms_Vis_Vida.pas' {dm_Vis_Vida: TDataModule},
  dlgPickPkg_IIII in 'Visab\dlgPickPkg_IIII.pas' {frmPackagePicker_IIII},
  uSelectProduct in 'Visab\uSelectProduct.pas' {fSelectProduct},
  uAddPkgToRun in 'Visab\uAddPkgToRun.pas' {fAddPkgToRun},
  uSelectLOfromAO in 'Visab\uSelectLOfromAO.pas' {fSelectLOfromAO},
  dmsSinglePkg in 'Visab\dmsSinglePkg.pas' {dm_SinglePkg: TDataModule},
  uSelectSortingOrderNo in 'Visab\uSelectSortingOrderNo.pas' {fSelectSortingOrderNo},
  UnitAboutBox in '..\CommonUnits\UnitAboutBox.pas' {AboutBox},
  VidaUser in '..\CommonUnits\VidaUser.pas',
  udmFR in '..\CommonSources\FastReport\udmFR.pas' {dmFR: TDataModule},
  uReport in '..\CommonSources\FastReport\uReport.pas',
  uReportController in '..\CommonSources\FastReport\uReportController.pas',
  uFastReports in 'uFastReports.pas';

{$R *.res}
begin
  Application.Initialize;
  Application.Title := 'VISTRUCK';
  Application.CreateForm(TdmsConnector, dmsConnector);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TdmsSystem, dmsSystem);
  Application.CreateForm(TdmsContact, dmsContact);
  Application.CreateForm(TdmModule1, dmModule1);
  Application.CreateForm(Tdm_UserProps, dm_UserProps);
  Application.CreateForm(TdmLoadEntrySSP, dmLoadEntrySSP);
  Application.CreateForm(TdmInventory, dmInventory);
  Application.CreateForm(TdmLanguage, dmLanguage);
  Application.CreateForm(TfrmChangeLanguage, frmChangeLanguage);
  Application.CreateForm(TdmFR, dmFR);
  //  Application.CreateForm(TForm1, Form1);
  Application.Run
end.
