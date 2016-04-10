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
  uICMSubject in '..\uICMSubject.pas';

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