unit uAddErrorPkgLoad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  System.Actions, Vcl.ActnList, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxCheckBox, SqlTimSt ;

type
  TfAddErrorPkgLoad = class(TForm)
    Panel1: TPanel;
    grdPkgLoadErrorLogDBTableView1: TcxGridDBTableView;
    grdPkgLoadErrorLogLevel1: TcxGridLevel;
    grdPkgLoadErrorLog: TcxGrid;
    grdPkgLoadErrorLogDBTableView1RowID: TcxGridDBColumn;
    grdPkgLoadErrorLogDBTableView1LoadNo: TcxGridDBColumn;
    grdPkgLoadErrorLogDBTableView1PackageNo: TcxGridDBColumn;
    grdPkgLoadErrorLogDBTableView1Prefix: TcxGridDBColumn;
    grdPkgLoadErrorLogDBTableView1ErrorText: TcxGridDBColumn;
    grdPkgLoadErrorLogDBTableView1DateCreated: TcxGridDBColumn;
    grdPkgLoadErrorLogDBTableView1UserID: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    GridTableViewStyleSheetWindowsClassiclarge: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    ActionList1: TActionList;
    acPkgInfo: TAction;
    Panel2: TPanel;
    cbShowAllFromSelectedDate: TcxCheckBox;
    deStartDate: TcxDateEdit;
    cxButton1: TcxButton;
    acRefresh: TAction;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    acClose: TAction;
    Panel3: TPanel;
    procedure acPkgInfoExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
 //   procedure CreateParams (var Params: TCreateParams); override;
 //   procedure WMShowWindow(var Msg: TWMShowWindow);message WM_SHOWWINDOW;
  public
    { Public declarations }
  end;

// var fAddErrorPkgLoad: TfAddErrorPkgLoad;

implementation

{$R *.dfm}

uses dmcLoadEntrySSP, uPkgInfo, UnitPkgInfo;

procedure TfAddErrorPkgLoad.FormShow(Sender: TObject);
begin
 deStartDate.Date := Date - 7 ;
 acRefreshExecute(Sender) ;
end;

Procedure WindowShake(wHandle: THandle) ;
const
   MAXDELTA = 4;
   SHAKETIMES = 140 ;
var
   oRect, wRect :TRect;
   deltax : integer;
   deltay : integer;
   cnt : integer;
   dx, dy : integer;
begin
   //remember original position
   GetWindowRect(wHandle,wRect) ;
   oRect := wRect;

   Randomize;
   for cnt := 0 to SHAKETIMES do
   begin
     deltax := Round(Random(MAXDELTA)) ;
     deltay := Round(Random(MAXDELTA)) ;
     dx := Round(1 + Random(2)) ;
     if dx = 2 then dx := -1;
     dy := Round(1 + Random(2)) ;
     if dy = 2 then dy := -1;
     OffsetRect(wRect,dx * deltax, dy * deltay) ;
     MoveWindow(wHandle, wRect.Left,wRect.Top,wRect.Right - wRect.Left,wRect.Bottom - wRect.Top,true) ;
   end;
   //return to start position
   MoveWindow(wHandle, oRect.Left,oRect.Top,oRect.Right - oRect.Left,oRect.Bottom - oRect.Top,true) ;
end;


{

  procedure TfAddErrorPkgLoad.WMShowWindow(var Msg: TWMShowWindow);
  begin
    if not Msg.Show then
      Msg.Result := 0
    else
      inherited;
  end;

}

procedure TfAddErrorPkgLoad.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfAddErrorPkgLoad.acPkgInfoExecute(Sender: TObject);
var frmPkgInfo : TfrmPkgInfo;
begin
 with dmLoadEntrySSP do
 Begin
   frmPkgInfo:= TfrmPkgInfo.Create(Nil);
   Try
    frmPkgInfo.PackageNo      := cds_AddLoadPkgErrorLog.FieldByName('PackageNo').AsInteger ;
    frmPkgInfo.SupplierCode   := cds_AddLoadPkgErrorLog.FieldByName('Prefix').AsString ;
    frmPkgInfo.ShowModal ;
   Finally
    FreeAndNil(frmPkgInfo) ;
   End ;
 End;
end;

procedure TfAddErrorPkgLoad.acRefreshExecute(Sender: TObject);
begin
 with dmLoadEntrySSP do
 Begin
  cds_AddLoadPkgErrorLog.Active := False ;
  if not cbShowAllFromSelectedDate.Checked then
  cds_AddLoadPkgErrorLog.ParamByName('LoadNo').AsInteger  := cds_LoadHeadLoadNo.AsInteger
  else
  Begin
   cds_AddLoadPkgErrorLog.ParamByName('LoadNo').AsInteger           := -1 ;
   cds_AddLoadPkgErrorLog.ParamByName('StartDate').AsSQLTimeStamp   :=  DatetimeToSQLtimeStamp(deStartDate.Date)
  End;
  cds_AddLoadPkgErrorLog.Active := True ;
 End;
End;

{
  procedure TfAddErrorPkgLoad.CreateParams(var Params: TCreateParams);
  begin
    inherited CreateParams(Params);
    with Params do begin
      ExStyle := ExStyle or WS_EX_TOPMOST;
      WndParent := GetDesktopwindow;
    end;
  end;
}

end.
