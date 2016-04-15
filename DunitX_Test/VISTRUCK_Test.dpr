program VISTRUCK_Test;

{$APPTYPE CONSOLE}
{$STRONGLINKTYPES ON}
uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  SysUtils,
  DUnitX.Loggers.Console,
  DUnitX.Loggers.Xml.NUnit,
  DUnitX.TestFramework,
  TestSQLView in 'TestSQLView.pas',
  uSQLView in '..\uSQLView.pas',
  uISQLBuild in '..\uISQLBuild.pas',
  uISQLHelper in '..\uISQLHelper.pas',
  uISQLView in '..\uISQLView.pas',
  uISQLViewField in '..\uISQLViewField.pas',
  udmFilterSQL in '..\udmFilterSQL.pas' {dmFilterSQL: TDataModule},
  TestdmFilterSQL in 'TestdmFilterSQL.pas',
  uICMObserver in '..\uICMObserver.pas',
  uICMSubject in '..\uICMSubject.pas',
  TestPositionView in 'TestPositionView.pas',
  uPositionView in '..\uPositionView.pas' {fPositionView},
  VidaType in '..\VidaType.pas',
  dm_Inventory in '..\dm_Inventory.pas' {dmInventory: TDataModule},
  VidaConst in '..\VidaConst.pas',
  VidaUser in '..\VidaUser.pas',
  dmsDataConn in '..\dmsDataConn.pas' {dmsConnector: TDataModule},
  dmsVidaContact in '..\dmsVidaContact.pas' {dmsContact: TDataModule},
  dmsVidaSystem in '..\dmsVidaSystem.pas' {dmsSystem: TDataModule},
  VidaUtils in '..\VidaUtils.pas',
  dlgPickPkg_II in '..\dlgPickPkg_II.pas' {frmPackagePicker_II},
  uLagerPos in '..\uLagerPos.pas' {fLagerPos},
  uShowMemo in '..\uShowMemo.pas' {fShowMemo},
  uSendMapiMail in '..\uSendMapiMail.pas' {dm_SendMapiMail: TDataModule},
  udmLanguage in '..\udmLanguage.pas' {dmLanguage: TDataModule},
  dmc_ArrivingLoads in '..\dmc_ArrivingLoads.pas' {dmArrivingLoads: TDataModule},
  uPackageSize in '..\uPackageSize.pas' {fPackageSize},
  uEnterLengthData in '..\Visab\uEnterLengthData.pas' {fEnterLengthData},
  dmsVidaProduct in '..\dmsVidaProduct.pas' {dmsProduct: TDataModule},
  uCert in '..\uCert.pas' {fCert},
  dmcVidaSystem in '..\dmcVidaSystem.pas' {dmcSystem: TDataModule},
  dmc_UserProps in '..\dmc_UserProps.pas' {dm_UserProps: TDataModule},
  uEntryField in '..\uEntryField.pas' {fEntryField};

var
  runner : ITestRunner;
  results : IRunResults;
  logger : ITestLogger;
  nunitLogger : ITestLogger;
begin
  try
    //Check command line options, will exit if invalid
    TDUnitX.CheckCommandLine;
    //Create the test runner
    runner := TDUnitX.CreateRunner;
    //Tell the runner to use RTTI to find Fixtures
    runner.UseRTTI := True;
    //tell the runner how we will log things
    //Log to the console window
    logger := TDUnitXConsoleLogger.Create(true);
    runner.AddLogger(logger);
    //Generate an NUnit compatible XML File
    nunitLogger := TDUnitXXMLNUnitFileLogger.Create(TDUnitX.Options.XMLOutputFile);
    runner.AddLogger(nunitLogger);

    //Run tests
    results := runner.Execute;
    if not results.AllPassed then
      System.ExitCode := EXIT_ERRORS;

    {$IFNDEF CI}
    //We don't want this happening when running under CI.
    if TDUnitX.Options.ExitBehavior = TDUnitXExitBehavior.Pause then
    begin
      System.Write('Done.. press <Enter> key to quit.');
      System.Readln;
    end;
    {$ENDIF}
  except
    on E: Exception do
      System.Writeln(E.ClassName, ': ', E.Message);
  end;
end.
