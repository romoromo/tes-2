unit UEntrySTPDPajak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinSilver, dxSkinStardust, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGraphics, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBLookupComboBox, cxDropDownEdit, cxSpinEdit, ComCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxMemo, cxDBEdit, cxTextEdit, StdCtrls, cxContainer,
  cxGroupBox, ExtCtrls, Menus, cxButtons, cxCurrencyEdit, cxCalendar,
  cxButtonEdit, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxCheckBox,
  cxLabel, Grids, DBGrids, cxDBLabel;

type
  TFormEntrySTPDPajak = class(TForm)
    ScrollBox1: TScrollBox;
    Panel5: TPanel;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    Label13: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    datetahun: TDateTimePicker;
    datebulan: TDateTimePicker;
    datehari: TDateTimePicker;
    Ke: TLabel;
    cxke: TcxTextEdit;
    enopok: TcxTextEdit;
    Panel3: TPanel;
    btsimpan: TcxButton;
    btkeluar: TcxButton;
    btcetak: TcxButton;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    lblrekening: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    Label2: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label39: TLabel;
    dateentryspp: TcxDateEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Label10: TLabel;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    Label11: TLabel;
    Label42: TLabel;
    cxDBMaskEdit4: TcxDBMaskEdit;
    Label43: TLabel;
    Label3: TLabel;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxButton1: TcxButton;
    Label5: TLabel;
    cxDBMaskEdit2: TcxDBMaskEdit;
    Label14: TLabel;
    dateentryskp: TcxDateEdit;
    Label16: TLabel;
    Label17: TLabel;
    cxDBMaskEdit3: TcxDBMaskEdit;
    Label18: TLabel;
    dateentryperiksa: TcxDateEdit;
    Label19: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label20: TLabel;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    Label22: TLabel;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    Label21: TLabel;
    Label23: TLabel;
    ZQrekening: TZQuery;
    Dsdata: TDataSource;
    ZQpenagihanview: TZQuery;
    DsPenagihanview: TDataSource;
    cxhari: TcxCheckBox;
    lblnmtabel: TcxLabel;
    cxSpinEdit1: TcxSpinEdit;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel1: TcxDBLabel;
    dateentrystp: TcxDateEdit;
    datebatasstp: TcxDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxSpinEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure DsdataStateChange(Sender: TObject);
    procedure btsimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEntrySTPDPajak: TFormEntrySTPDPajak;

implementation
uses UformUtama,udatamodul, DateUtils;

{$R *.dfm}

procedure TFormEntrySTPDPajak.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TFormEntrySTPDPajak.cxButton1Click(Sender: TObject);
var
strsql,namatabel:string;
masaretri,masatest:TDate;
j:integer;
begin
namatabel:=lblnmtabel.Caption;
   if cxhari.Checked then
  begin
    strsql:=' hrp ='+QuotedStr(FormatDateTime('dd',datehari.date))+' ';
  end else strsql:=' ';

with dm.ZQpenagihan do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from "'+namatabel+'" where nopok='+QuotedStr(enopok.Text)+' and thp='+QuotedStr(FormatDateTime('yy',datetahun.date))+' and blp='+QuotedStr(FormatDateTime('M',datebulan.date))+strsql;
    //ShowMessage(sql.Text);
    open;
  end;

  if dm.ZQpenagihan.IsEmpty then
    begin
      ShowMessage('Referensi belum terdaftar...!!!');
      exit;
    end;

 with ZQpenagihanview do
  begin
   close;
      sql.Text:='select * from "wpr" where nopok='+QuotedStr(enopok.Text)+' ';
{   sql.Text:=' SELECT "wpr".NOPOK,BNAMA,BAL,BBU,PNAMA,PAL, '+
   ' "'+namatabel+'".* FROM "wpr" INNER JOIN "sptht" ON "wpr".NOPOK = "sptht".NOPOK '+
   ' where "wpr".NOPOK='+QuotedStr(enopok.Text)+' ';}
   open;
  end;

    if not ZQpenagihanview.IsEmpty then
  begin
       with ZQrekening do
        begin
         close;
         sql.Text:='SELECT "tblrek".*,  '+
         ' "CONCAT"("tblrek".URS,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PEM,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".ORG,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PRG,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".KGT,"CONCAT"('+quotedstr('.')+
',"CONCAT"("tblrek".DIN,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".BID,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PEND,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PAD,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PJK,"CONCAT"('+quotedstr('.')+
',"CONCAT"("tblrek".AYT,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".JEN,"CONCAT"('+quotedstr('.')+',"tblrek".SUB)))))))))))))))))))))))) AS rekening, '+
' "CONCAT"("tblrek".PEND,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PAD,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".PJK,"CONCAT"('+quotedstr('.')+',"CONCAT"("tblrek".AYT,"CONCAT"('+quotedstr('.')+',"tblrek".JEN)))))))) as ayat '+
         ' FROM "tabbdu" INNER JOIN "tblrek" ON "tabbdu".PEND = "tblrek".PEND and "tabbdu".PAD = "tblrek".PAD AND "tabbdu".PJK = "tblrek".PJK AND "tabbdu".AYAT = "tblrek".AYT AND "tabbdu".JENIS = "tblrek".JEN '+
         ' where kdbu='+QuotedStr(ZQpenagihanview.FieldByname('BBU').AsString)+' ';
         open;
        end;
       lblrekening.Caption:=ZQrekening.fieldbyname('nmrek').AsString;
       cxButtonEdit1.Text:=ZQrekening.fieldbyname('rekening').AsString;
    end;

   //=============pengisian tanggal -begin
   if ((dm.ZQpenagihan.FieldByName('THSKP').AsString<>'') AND (dm.ZQpenagihan.FieldByName('THSKP').AsInteger>0)) and ((dm.ZQpenagihan.FieldByName('BLSKP').AsString<>'') AND (dm.ZQpenagihan.FieldByName('BLSKP').AsInteger>0)) and ((dm.ZQpenagihan.FieldByName('HRSKP').AsString<>'') AND (dm.ZQpenagihan.FieldByName('HRSKP').AsInteger>0)) then
     begin
       dateentryskp.Date:= StrToDate(isikiri(dm.ZQpenagihan.FieldByName('HRSKP').AsString,2)+'/'+isikiri(dm.ZQpenagihan.FieldByName('BLSKP').AsString,2)+'/20'+isikiri(dm.ZQpenagihan.FieldByName('THSKP').AsString,2));
     end;
   if ((dm.ZQpenagihan.FieldByName('THSSP').AsString<>'') AND (dm.ZQpenagihan.FieldByName('THSSP').AsInteger>0)) and ((dm.ZQpenagihan.FieldByName('BLSSP').AsString<>'') AND (dm.ZQpenagihan.FieldByName('BLSSP').AsInteger>0)) and ((dm.ZQpenagihan.FieldByName('HRSSP').AsString<>'') AND (dm.ZQpenagihan.FieldByName('HRSSP').AsInteger>0)) then
     begin
       dateentryspp.Date:= StrToDate(isikiri(dm.ZQpenagihan.FieldByName('HRSSP').AsString,2)+'/'+isikiri(dm.ZQpenagihan.FieldByName('BLSSP').AsString,2)+'/20'+isikiri(dm.ZQpenagihan.FieldByName('THSSP').AsString,2));
     end;
   if ((dm.ZQpenagihan.FieldByName('THSPER').AsString<>'') AND (dm.ZQpenagihan.FieldByName('THSPER').AsInteger>0)) and ((dm.ZQpenagihan.FieldByName('BLSPER').AsString<>'') AND (dm.ZQpenagihan.FieldByName('BLSPER').AsInteger>0)) and ((dm.ZQpenagihan.FieldByName('HRSPER').AsString<>'') AND (dm.ZQpenagihan.FieldByName('HRSPER').AsInteger>0)) then
     begin
       dateentryperiksa.Date:= StrToDate(isikiri(dm.ZQpenagihan.FieldByName('HRSPER').AsString,2)+'/'+isikiri(dm.ZQpenagihan.FieldByName('BLSPER').AsString,2)+'/20'+isikiri(dm.ZQpenagihan.FieldByName('THSPER').AsString,2));
     end;
     //ShowMessage('date');
   dateentrystp.Date:=DateOf(NOW());
   datebatasstp.Text:='';
   //=============pengisian tanggal -ending

  if (dm.ZQpenagihan.FieldByName('rpstp').Asstring<>'') and (dm.ZQpenagihan.FieldByName('rpstp').Asfloat>0) then
   begin
     updatestatus('Data STPD sudah pernah di inputkan...!!!',true);
    if ((dm.ZQpenagihan.FieldByName('THSTP').AsString<>'') AND (dm.ZQpenagihan.FieldByName('THSTP').AsInteger>0)) and ((dm.ZQpenagihan.FieldByName('BLSTP').AsString<>'') AND (dm.ZQpenagihan.FieldByName('BLSTP').AsInteger>0)) and ((dm.ZQpenagihan.FieldByName('HRSTP').AsString<>'') AND (dm.ZQpenagihan.FieldByName('HRSTP').AsInteger>0)) then
     begin
       dateentrystp.Date:= StrToDate(isikiri(dm.ZQpenagihan.FieldByName('HRSTP').AsString,2)+'/'+isikiri(dm.ZQpenagihan.FieldByName('BLSTP').AsString,2)+'/20'+isikiri(dm.ZQpenagihan.FieldByName('THSTP').AsString,2));
     end;
    if ((dm.ZQpenagihan.FieldByName('THBSTP').AsString<>'') AND (dm.ZQpenagihan.FieldByName('THBSTP').AsInteger>0)) and ((dm.ZQpenagihan.FieldByName('BLBSTP').AsString<>'') AND (dm.ZQpenagihan.FieldByName('BLBSTP').AsInteger>0)) and ((dm.ZQpenagihan.FieldByName('HRBSTP').AsString<>'') AND (dm.ZQpenagihan.FieldByName('HRBSTP').AsInteger>0)) then
     begin
       datebatasstp.Date:= StrToDate(isikiri(dm.ZQpenagihan.FieldByName('HRBSTP').AsString,2)+'/'+isikiri(dm.ZQpenagihan.FieldByName('BLBSTP').AsString,2)+'/20'+isikiri(dm.ZQpenagihan.FieldByName('THBSTP').AsString,2));
     end;
     exit;
   end;

  dm.ZQpenagihan.edit;
{  if dm.ZQpenagihan.State in [dsedit,dsinsert] then
  begin
    ShowMessage('ok');
  end else ShowMessage('failed'); }

dm.ZQpenagihan.FieldByName('rpstp').AsFloat:=dm.ZQpenagihan.FieldByName('rpskp').AsFloat;
end;

procedure TFormEntrySTPDPajak.cxSpinEdit1PropertiesEditValueChanged(
  Sender: TObject);
begin
if not (dm.ZQpenagihan.State in [dsedit,dsinsert]) then  dm.ZQpenagihan.Edit;
dm.ZQpenagihan.FieldByName('bustp').AsFloat:=cxSpinEdit1.Value*(2/100)*dm.ZQpenagihan.FieldByName('rpskp').AsFloat;
end;

procedure TFormEntrySTPDPajak.DsdataStateChange(Sender: TObject);
begin
   if dm.ZQpenagihan.State in [dsedit,dsinsert] then btsimpan.Enabled:=true else  btsimpan.Enabled:=false;
end;

procedure TFormEntrySTPDPajak.btsimpanClick(Sender: TObject);
begin
  if dm.ZQpenagihan.State in [dsedit,dsinsert] then
   begin
    if dateentrystp.Text<>'' then
     begin
      dm.ZQpenagihan.FieldByName('thstp').AsString:=FormatDateTime('yy',dateentrystp.Date);
      dm.ZQpenagihan.FieldByName('blstp').AsString:=FormatDateTime('M',dateentrystp.Date);
      dm.ZQpenagihan.FieldByName('hrstp').AsString:=FormatDateTime('dd',dateentrystp.Date);
     end;
    if datebatasstp.Text<>'' then
     begin
      dm.ZQpenagihan.FieldByName('thbstp').AsString:=FormatDateTime('yy',datebatasstp.Date);
      dm.ZQpenagihan.FieldByName('blbstp').AsString:=FormatDateTime('M',datebatasstp.Date);
      dm.ZQpenagihan.FieldByName('hrbstp').AsString:=FormatDateTime('dd',datebatasstp.Date);
     end;
     dm.ZQpenagihan.Post;
   end;
end;

end.
