unit uInvoiceWizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxPC, cxControls, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ActnList, StdCtrls, Buttons, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxContainer,
  cxTextEdit, cxMaskEdit, cxCalendar, cxDBEdit, cxLabel, cxLookAndFeels,
  cxDBLabel, ImgList, cxGroupBox, cxRadioGroup, cxMemo, DBCtrls,
  cxImageComboBox, Menus, cxLookAndFeelPainters, cxButtons, cxCheckBox,
  cxCurrencyEdit, cxButtonEdit, dxBar, cxSplitter, cxRichEdit, cxImage,
  cxSpinEdit, SqlTimSt, ExtDlgs  ;

type
  TfInvoiceWizard = class(TForm)
    pgPriceListGuide: TcxPageControl;
    tsOrderType: TcxTabSheet;
    tsOrderLines: TcxTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    tsAddress: TcxTabSheet;
    Panel5: TPanel;
    ActionList1: TActionList;
    Panel8: TPanel;
    cxLookAndFeelController1: TcxLookAndFeelController;
    acNextPage: TAction;
    acPreviousPage: TAction;
    acSave: TAction;
    acCancelChanges: TAction;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    SpeedButton2: TSpeedButton;
    imglistActions: TImageList;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    lcBillingAddress: TcxDBLookupComboBox;
    lcDelAdr: TcxDBLookupComboBox;
    bbBillAdr: TBitBtn;
    bbLevAdr: TBitBtn;
    tsParametrar: TcxTabSheet;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label8: TLabel;
    Label26: TLabel;
    Label7: TLabel;
    lcPaymentTerms: TcxDBLookupComboBox;
    leValuta: TcxDBLookupComboBox;
    leDelTerms: TcxDBLookupComboBox;
    leDimFormat: TcxDBLookupComboBox;
    leLengthFormat: TcxDBLookupComboBox;
    lcLanguage: TcxDBLookupComboBox;
    eXRate: TcxDBTextEdit;
    mPaymentTermText: TcxDBMemo;
    eVAT: TcxDBTextEdit;
    tsAgent: TcxTabSheet;
    leKund: TcxDBLookupComboBox;
    Label2: TLabel;
    PanelOrder: TPanel;
    cxPageControl1: TcxPageControl;
    tsTexter: TcxTabSheet;
    Label79: TLabel;
    Label80: TLabel;
    cxDBMemo2: TcxDBMemo;
    cxDBMemo3: TcxDBMemo;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    tsOrderRad: TcxTabSheet;
    Label48: TLabel;
    cbContactName: TcxDBComboBox;
    teSalesOrgNo: TcxDBTextEdit;
    Label49: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    lcAgentBillingAddressNo: TcxDBLookupComboBox;
    teAgentCommission: TcxDBTextEdit;
    cbSendInvoiceToAgent: TcxDBCheckBox;
    lcAgentCommissionTermsNo: TcxDBLookupComboBox;
    bbClientForm: TBitBtn;
    bbRemoveAgent: TBitBtn;
    lcAgentNo: TcxDBLookupComboBox;
    cxSplitter1: TcxSplitter;
    dxBarManager1: TdxBarManager;
    cxPageControl2: TcxPageControl;
    tsTradingLink: TcxTabSheet;
    OpenPictureDialog1: TOpenPictureDialog;
    Label5: TLabel;
    SpeedButton3: TSpeedButton;
    cbAgentIncl: TcxDBCheckBox;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    bbKund: TBitBtn;
    DBText10: TDBText;
    DBText3: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    DBText26: TDBText;
    DBText27: TDBText;
    DBText28: TDBText;
    DBText29: TDBText;
    DBText30: TDBText;
    cxImage1: TcxImage;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    eSalesOrgNo: TcxDBTextEdit;
    Label31: TLabel;
    rgDebitCredit: TDBRadioGroup;
    lcSalesman: TcxDBLookupComboBox;
    Label17: TLabel;
    lcKonto: TcxDBLookupComboBox;
    Label18: TLabel;
    deFakturaDatum: TcxDBDateEdit;
    Label19: TLabel;
    Label20: TLabel;
    lcSR: TcxDBLookupComboBox;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    Label29: TLabel;
    lLeveransvillkor: TcxLabel;
    lBetalningsvillkor: TcxLabel;
    lSprak: TcxLabel;
    lcSprak: TcxDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    cbFreightInDiscount: TDBCheckBox;
    cbFreightInComm: TDBCheckBox;
    cbCommissionPaidByCustomer: TDBCheckBox;
    cbVAT: TDBCheckBox;
    cbSnabbfaktura: TDBCheckBox;
    cbIncludeFreightCostInPrice: TcxDBCheckBox;
    tsShipToAddress: TcxTabSheet;
    grdShipAdr: TcxGrid;
    grdShipAdrDBTableView1: TcxGridDBTableView;
    grdShipAdrDBTableView1Reference: TcxGridDBColumn;
    grdShipAdrDBTableView1AddressName: TcxGridDBColumn;
    grdShipAdrDBTableView1ADDR: TcxGridDBColumn;
    grdShipAdrDBTableView1ShippingPlanNo: TcxGridDBColumn;
    grdShipAdrDBTableView1AddressLine1: TcxGridDBColumn;
    grdShipAdrDBTableView1AddressLine2: TcxGridDBColumn;
    grdShipAdrDBTableView1AddressLine3: TcxGridDBColumn;
    grdShipAdrDBTableView1AddressLine4: TcxGridDBColumn;
    grdShipAdrDBTableView1STATE: TcxGridDBColumn;
    grdShipAdrDBTableView1POSTAL_CODE: TcxGridDBColumn;
    grdShipAdrDBTableView1CITY: TcxGridDBColumn;
    grdShipAdrDBTableView1COUNTRY: TcxGridDBColumn;
    grdShipAdrDBTableView1InternalInvoiceNo: TcxGridDBColumn;
    grdShipAdrDBTableView1AddressNo: TcxGridDBColumn;
    grdShipAdrLevel1: TcxGridLevel;
    cxTabSheet1: TcxTabSheet;
    Label42: TLabel;
    Label1: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pgPriceListGuidePageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure acNextPageExecute(Sender: TObject);
    procedure acPreviousPageExecute(Sender: TObject);
    procedure acPreviousPageUpdate(Sender: TObject);
    procedure acNextPageUpdate(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
  private
    { Private declarations }
//    procedure InsertFromClientProduct ;
    Function  DataSaved : Boolean ;
    Function  GotoNextPageOK : Boolean ;
    procedure lFakturaAdressClick(Sender: TObject);
  public
    { Public declarations }
  end;

//var fInvoiceWizard: TfInvoiceWizard;

implementation

uses  dmc_marketprice, VidaUser , dmcVidaOrder,
      dmsVidaSystem, dmsVidaContact, VidaConst ,
      dmsDataConn, dmcVidaInvoice;

{$R *.dfm}
Function TfInvoiceWizard.DataSaved : Boolean ;
Begin
(* Result:= True ;
 with dm_marketprice do
 Begin
  if cds_SaveProd.ChangeCount > 0 then
   Result:= False ;
  if cds_PriceHdr.ChangeCount > 0 then
   Result:= False ;
  if cds_PriceHdr.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_SelectLengths.ChangeCount > 0 then
   Result:= False ;
  if cds_SelectPG.ChangeCount > 0 then
   Result:= False ;
  if AllSelected = False then
   Result:= True ;
 End ; *)
End ;


procedure TfInvoiceWizard.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var MessageIndex : Word ;
begin
 CanClose:= True ;
 if DataSaved = False then
 Begin
  MessageIndex:= MessageDlg('Ändringar är inte sparade, vill du spara?',
  mtConfirmation, [mbYes, mbNo, mbCancel], 0);
  Case MessageIndex of
   mrYes     : Begin
                //dm_marketprice.SavePriceTemplateData ;
               End ;
   mrNo      : Begin
                //dm_marketprice.CancelPriceTemplateData ;
               End ;
   mrCancel  : CanClose:= False ;
  End ;
 End ;
end;

procedure TfInvoiceWizard.pgPriceListGuidePageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
// With dm_marketprice do
(* AllowChange:= True ;
 Begin
  if NewPage = tsOrderType then
  Begin
   eOrderNoText.SetFocus ;
  End
  else
  if NewPage = tsAddress then
  Begin
   leKund.SetFocus ;
  End
  else
  if NewPage = tsParametrar then
  Begin
   lcPaymentTerms.SetFocus ;
  End
  else
  if NewPage = tsAgent then
  Begin
   lcAgentNo.SetFocus ;
  End
  else
  if NewPage = tsOrderLines then
  Begin
   eProduct.SetFocus ;
  End ;
 End ; *)
end;


procedure TfInvoiceWizard.acNextPageExecute(Sender: TObject);
begin
 with dmcOrder do
 Begin
  if pgPriceListGuide.ActivePage = tsOrderType then
  Begin
   pgPriceListGuide.ActivePage:= tsTradingLink ;
  End
  else
   if pgPriceListGuide.ActivePage = tsTradingLink then
   pgPriceListGuide.ActivePage:= tsAddress
    else
     if pgPriceListGuide.ActivePage = tsAddress then
      pgPriceListGuide.ActivePage:= tsParametrar
       else
        if pgPriceListGuide.ActivePage = tsParametrar then
         pgPriceListGuide.ActivePage:= tsAgent
         else
          if pgPriceListGuide.ActivePage = tsAgent then
           pgPriceListGuide.ActivePage:= tsOrderLines ;
 End ;//with
end;

procedure TfInvoiceWizard.acPreviousPageExecute(Sender: TObject);
begin
 with dmcOrder do
 Begin
     if pgPriceListGuide.ActivePage = tsOrderLines then
      pgPriceListGuide.ActivePage:= tsAgent
       else
        if pgPriceListGuide.ActivePage = tsAgent then
         pgPriceListGuide.ActivePage:= tsParametrar
         else
          if pgPriceListGuide.ActivePage = tsParametrar then
           pgPriceListGuide.ActivePage:= tsAddress
           else
            if pgPriceListGuide.ActivePage = tsAddress then
            Begin
             pgPriceListGuide.ActivePage:= tsOrderType ;
            End
            else
            if pgPriceListGuide.ActivePage = tsTradingLink then
             pgPriceListGuide.ActivePage:= tsOrderType ;
 End ;
end;

procedure TfInvoiceWizard.acPreviousPageUpdate(Sender: TObject);
begin
 acPreviousPage.Enabled:= pgPriceListGuide.ActivePage <> tsOrderType ;
end;

procedure TfInvoiceWizard.acNextPageUpdate(Sender: TObject);
begin
 acNextPage.Enabled:= (pgPriceListGuide.ActivePage <> tsOrderLines)
 and (GotoNextPageOK) ;
end;

procedure TfInvoiceWizard.acSaveExecute(Sender: TObject);
begin
 Try
// ModalResult:= mrOK ;
// dmcOrder.OrderSavedinWizard:= True ;
 Close ;
 Except
 End ;
end;

procedure TfInvoiceWizard.acCancelChangesExecute(Sender: TObject);
begin
{ if MessageDlg('Vill du avbryta?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  AngraAlltExecute
  else
   Exit ; }
//  ModalResult:= mrCancel ;
// dmcOrder.OrderSavedinWizard:= False ;
 Close ;
end;

Function TfInvoiceWizard.GotoNextPageOK : Boolean ;
Begin
 Result:= False ;
 With dmcOrder do
 Begin
  if pgPriceListGuide.ActivePage = tsOrderType then
  Begin
    Result:= True ;
  End
  else
  if pgPriceListGuide.ActivePage = tsTradingLink then
  Result:= True
  else
  if pgPriceListGuide.ActivePage = tsAddress then
  Begin
    Result:= True ;
  End
  else
  if pgPriceListGuide.ActivePage = tsParametrar then
  Begin
    Result:= True ;
  End
  else
  if pgPriceListGuide.ActivePage = tsAgent then
  Begin
   Result:= True ;
  End
  else
  if pgPriceListGuide.ActivePage = tsOrderLines then
  Begin
   Result:= True ;
  End ;
 End ;//With
End ;

procedure TfInvoiceWizard.lFakturaAdressClick(Sender: TObject);
//var  FormAddress: TFormAddress;
begin
(* with dmVidaInvoice do
 Begin
  FormAddress := TFormAddress.Create(Nil);
  Try
  cdsClientAddress.Active:= False ;
  sq_ClientAddress.Close ;
  sq_ClientAddress.ParamByName('ClientNo').AsInteger:= cdsInvoiceHeadCustomerNo.AsInteger ;
  sq_ClientAddress.ParamByName('AddressType').AsInteger:= 1 ;
  cdsClientAddress.Active:= True ;

  if FormAddress.ShowModal = mrOK then
  Begin
   if cdsInvoiceHead.State = dsBrowse then
    cdsInvoiceHead.Edit ;


     cdsInvoiceHeadClientBillingAddressNo.AsInteger:= cdsClientAddressADDRESS_NO.AsInteger ;
     cdsInvoiceHeadAddressName.AsString:=  cdsClientAddressADDRESS_NAME.AsString ;
     cdsInvoiceHeadAddressLine1.AsString:= cdsClientAddressADDRESSLINE1.AsString ;
     cdsInvoiceHeadAddressLine2.AsString:= cdsClientAddressADDRESSLINE2.AsString ;
     cdsInvoiceHeadAddressLine3.AsString:= cdsClientAddressADDRESSLINE3.AsString ;
     cdsInvoiceHeadAddressLine4.AsString:= cdsClientAddressADDRESSLINE4.AsString ;
     cdsInvoiceHeadStateOrProvince.AsString := cdsClientAddressPROVINCE.AsString ;
     cdsInvoiceHeadPostalCode.AsString := cdsClientAddressPOSTALCODE.AsString ;
     cdsInvoiceHeadCityName.AsString:= cdsClientAddressCITY.AsString ;
     cdsInvoiceHeadCountryName.AsString := cdsClientAddressCOUNTRY.AsString ;

   Label42.Caption:= Trim(cdsInvoiceHeadAddressLine1.AsString)+', '+Trim(cdsInvoiceHeadAddressLine2.AsString)+', '+
   Trim(cdsInvoiceHeadAddressLine3.AsString)+', '+Trim(cdsInvoiceHeadAddressLine4.AsString)+', '+
   Trim(cdsInvoiceHeadCityName.AsString)+', '+Trim(cdsInvoiceHeadStateOrProvince.AsString)+', '+
   Trim(cdsInvoiceHeadPostalCode.AsString)+', '+Trim(cdsInvoiceHeadCountryName.AsString) ;

     cdsInvoiceHeadPaymentText.AsVariant:=
      GetPaymentText (cdsInvoiceHeadCurrencyNo.AsInteger,
      cdsInvoiceHeadLanguageCode.AsInteger, cdsInvoiceHeadClientBillingAddressNo.AsInteger) ;
   

   cdsInvoiceHead.Post ;
 End ;


 Finally
  FreeAndNil(FormAddress) ;//.Free ;
 End ;

 End ; //with
*)
end;


End.


